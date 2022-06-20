import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/model/address.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/config_repository.dart';
import 'package:receipt_generator/src/widgets/custom_button.dart';
import 'package:receipt_generator/src/widgets/custom_dropdown.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import '../../widgets/appbar_leading.dart';
import 'bloc/business_bloc.dart';

class BusinessView extends StatelessWidget {
  final BusinessOperation operation;
  final int? businessId;

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const BusinessView());
  }

  const BusinessView(
      {Key? key, this.operation = BusinessOperation.create, this.businessId})
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
            resizeToAvoidBottomInset: true,
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
  late TextEditingController _businessEmailController;
  late TextEditingController _businessGstController;
  late TextEditingController _businessPanController;

  @override
  void initState() {
    super.initState();
    _businessNameController = TextEditingController();
    _businessContactController = TextEditingController();
    _businessEmailController = TextEditingController();
    _businessGstController = TextEditingController();
    _businessPanController = TextEditingController();
  }

  @override
  void dispose() {
    _businessNameController.dispose();
    _businessContactController.dispose();
    _businessEmailController.dispose();
    _businessGstController.dispose();
    _businessPanController.dispose();
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
          _businessEmailController.text = state.businessEmail ?? "";
          _businessGstController.text = state.businessGst;
          _businessPanController.text = state.businessPan;
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
              controller: _businessEmailController,
              label: "Email",
              textInputType: TextInputType.emailAddress,
              onValueChange: (val) {
                BlocProvider.of<BusinessBloc>(context)
                    .add(OnBusinessEmailChange(val));
              },
            ),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: AppColor.background,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                    builder: (context) => const BusinessAddressDialog(),
                  ).then((value) => {
                        if (value != null &&
                            value.length > 0 &&
                            value[0] is BusinessAddress)
                          {
                            BlocProvider.of<BusinessBloc>(context)
                                .add(OnBusinessAddressChange(value[0]))
                          }
                      });
                },
                child: AddressWidget(
                  address: state.businessAddress?.toString() ?? "",
                )),
            CustomTextField(
              controller: _businessGstController,
              label: "GST Number",
              textCapitalization: TextCapitalization.characters,
              onValueChange: (val) {
                BlocProvider.of<BusinessBloc>(context)
                    .add(OnBusinessGstChange(val.toUpperCase()));
              },
            ),
            CustomTextField(
              controller: _businessPanController,
              label: "PAN Number",
              textCapitalization: TextCapitalization.characters,
              onValueChange: (val) {
                BlocProvider.of<BusinessBloc>(context)
                    .add(OnBusinessPanChange(val.toUpperCase()));
              },
            ),
          ],
        );
      },
    );
  }
}

class AddressWidget extends StatelessWidget {
  final String address;
  const AddressWidget({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Business Address",
          style:
              TextStyle(fontWeight: FontWeight.w400, color: Color(0xFF6B7281)),
        ),
        const SizedBox(
          height: 1,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              //color: AppColor.background,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 0.8, color: const Color(0xFF6B7281))),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 100,
              minWidth: double.infinity,
              maxWidth: double.infinity,
            ),
            child: Text(
              address,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

class BusinessAddressDialog extends StatefulWidget {
  const BusinessAddressDialog({Key? key}) : super(key: key);

  @override
  State<BusinessAddressDialog> createState() => _BusinessAddressDialogState();
}

class _BusinessAddressDialogState extends State<BusinessAddressDialog> {
  late TextEditingController _zipcodeController;
  late TextEditingController _buildingController;
  late TextEditingController _streetController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late String? _country;
  late String? _state;

  @override
  void initState() {
    super.initState();
    _zipcodeController = TextEditingController();
    _buildingController = TextEditingController();
    _streetController = TextEditingController();
    _cityController = TextEditingController();
    _stateController = TextEditingController();
    _country = null;
    _state = null;
  }

  @override
  void dispose() {
    _zipcodeController.dispose();
    _buildingController.dispose();
    _streetController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    super.dispose();
  }

  void _onCountryChange(String? value) {
    setState(() {
      _country = value;
    });
  }

  void _onStateChange(String? value) {
    setState(() {
      _state = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var repo = RepositoryProvider.of<ConfigRepository>(context);
    var countryCode = repo.getCodeByCategory("COUNTRY_CODE");
    var stateCode = repo.getCodeByCategory("IN_STATE");
    return SingleChildScrollView(
      child: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomDropDown<String>(
                value: _country,
                data: countryCode.map((e) => DropDownData(key: e.code, value: e.value)).toList(),
                onChanged: _onCountryChange,
                label: 'Country',
              ),
              CustomTextField(
                label: "Pincode",
                controller: _zipcodeController,
                textInputType: TextInputType.number,
              ),
              CustomTextField(
                label: "Building, Company, Apartment",
                controller: _buildingController,
              ),
              CustomTextField(
                label: "Area, Street",
                controller: _streetController,
              ),
              CustomTextField(
                label: "Town/City",
                controller: _cityController,
              ),
              CustomDropDown<String>(
                value: _state,
                data: stateCode.map((e) => DropDownData(key: e.code, value: e.value)).toList(),
                onChanged: _onStateChange,
                label: 'State',
              ),
              SizedBox(
                width: double.infinity,
                child: AcceptButton(
                  label: "Save",
                  borderRadius: BorderRadius.circular(5.0),
                  onPressed: () {
                    Navigator.of(context).pop([
                      BusinessAddress(
                          zipcode: _zipcodeController.text,
                          building: _buildingController.text,
                          street: _streetController.text,
                          city: _cityController.text,
                          state: _stateController.text)
                    ]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
