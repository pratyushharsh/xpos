import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import '../../widgets/appbar_leading.dart';
import 'bloc/business_bloc.dart';

class BusinessView extends StatelessWidget {
  final BusinessOperation operation;
  final String? businessId;

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const BusinessView());
  }

  const BusinessView({Key? key, this.operation = BusinessOperation.create, this.businessId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BusinessBloc(
          repo: RepositoryProvider.of(context), operation: operation)
        ..add(LoadBusinessDetail(businessId)),
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              fit: StackFit.expand,
              children: [
                SingleChildScrollView(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 70,
                          ),
                          Hero(
                            tag: "business-logo",
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://media-exp1.licdn.com/dms/image/C4E03AQG2CT__QR-ZEA/profile-displayphoto-shrink_800_800/0/1635953455093?e=1656547200&v=beta&t=73Ztd907MxvHLxmQV6Pb-TShp6qj4mGOKN4ckWWjvuQ'),
                              maxRadius: 60,
                              child: Text(
                                "",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          BusinessDetail()
                        ],
                      )),
                ),
                Positioned(
                  top: 20,
                  left: 16,
                  child: AppBarLeading(
                    heading: operation == BusinessOperation.update
                        ? "Modify Business"
                        : "Create Business",
                    icon: operation == BusinessOperation.update
                        ? Icons.arrow_back
                        : null,
                    onTap: operation == BusinessOperation.update
                        ? () {
                            Navigator.of(context).pop();
                          }
                        : null,
                  ),
                ),
                BlocBuilder<BusinessBloc, BusinessState>(
                  builder: (context, state) {
                    if (BusinessStatus.modified == state.status) {
                      return Positioned(
                        top: 20,
                        right: 16,
                        child: ElevatedButton(
                          onPressed: () {
                            if (BusinessOperation.create == state.operation) {
                              BlocProvider.of<BusinessBloc>(context)
                                  .add(OnCreateNewBusiness());
                            } else {
                              BlocProvider.of<BusinessBloc>(context)
                                  .add(OnSaveBusiness());
                            }
                          },
                          child: const Text(
                            "Save",
                            style: TextStyle(color: AppColor.primary),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 10),
                            primary: AppColor.color8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                          ),
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BusinessDetail extends StatefulWidget {
  const BusinessDetail({Key? key}) : super(key: key);

  @override
  State<BusinessDetail> createState() => _BusinessDetailState();
}

class _BusinessDetailState extends State<BusinessDetail> {
  late TextEditingController _businessNameController;
  late TextEditingController _businessContactController;
  late TextEditingController _businessAddressController;

  @override
  void initState() {
    super.initState();
    _businessNameController = TextEditingController();
    _businessContactController = TextEditingController();
    _businessAddressController = TextEditingController();
  }

  @override
  void dispose() {
    _businessNameController.dispose();
    _businessContactController.dispose();
    _businessAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BusinessBloc, BusinessState>(
      listener: (context, state) {
        if (BusinessStatus.newBusinessCreated == state.status) {
          BlocProvider.of<AuthenticationBloc>(context).add(InitialAuthEvent());
        }
      },
      builder: (context, state) {
        if (BusinessStatus.loading == state.status) {
          return const MyLoader(
            color: AppColor.primary,
          );
        }
        if (BusinessStatus.success == state.status) {
          _businessNameController.text = state.businessName;
          _businessContactController.text = state.businessContact;
          _businessAddressController.text = state.businessAddress;
        }
        return Column(
          children: [
            CustomTextField(
              controller: _businessNameController,
              label: "Business Name",
              onValueChange: (val) {
                BlocProvider.of<BusinessBloc>(context)
                    .add(OnBusinessNameChange(val));
              },
            ),
            CustomTextField(
              controller: _businessContactController,
              label: "Business Contact",
              onValueChange: (val) {
                BlocProvider.of<BusinessBloc>(context)
                    .add(OnBusinessContactChange(val));
              },
            ),
            CustomTextField(
              controller: _businessAddressController,
              label: "Business Address",
              minLines: 4,
              maxLines: 4,
              onValueChange: (val) {
                BlocProvider.of<BusinessBloc>(context)
                    .add(OnBusinessAddressChange(val));
              },
            )
          ],
        );
      },
    );
  }
}
