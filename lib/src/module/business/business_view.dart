import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/entity/pos/address.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/config_repository.dart';
import 'package:receipt_generator/src/widgets/custom_button.dart';
import 'package:receipt_generator/src/widgets/custom_dropdown.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import '../../entity/config/code_value_entity.dart';
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
          userPool: RepositoryProvider.of(context),
          repo: RepositoryProvider.of(context),
          operation: operation)
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
                                  'https://images.unsplash.com/photo-1541569863345-f97c6484a917?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3570&q=80'),
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
                        ? "Modify Business# $businessId"
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
                    builder: (context) => const AddressFormDialog(),
                  ).then((value) => {
                        if (value != null && value is Address)
                          {
                            BlocProvider.of<BusinessBloc>(context)
                                .add(OnBusinessAddressChange(value))
                          }
                      });
                },
                child: TextFieldPlaceholderWidget(
                  label: "Business Address",
                  value: state.businessAddress?.toString() ?? "",
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

class AddressFormDialog extends StatefulWidget {
  const AddressFormDialog({Key? key}) : super(key: key);

  @override
  State<AddressFormDialog> createState() => _AddressFormDialogState();
}

class _AddressFormDialogState extends State<AddressFormDialog> {
  late TextEditingController _zipcodeController;
  late TextEditingController _buildingController;
  late TextEditingController _streetController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late String? _country;
  late String? _state;

  List<CodeValueEntity> countryCode = [];
  List<CodeValueEntity> stateCode = [];

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
    _fetchData();
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

  void _fetchData() async {
    var repo = RepositoryProvider.of<ConfigRepository>(context);
    var countryCode = await repo.getCodeByCategory("COUNTRY_CODE");
    var stateCode = await repo.getCodeByCategory("IN_STATE");
    setState(() {
      this.countryCode = countryCode;
      this.stateCode = stateCode;
    });
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
                data: countryCode
                    .map((e) => DropDownData(key: e.code, value: e.value))
                    .toList(),
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
                data: stateCode
                    .map((e) => DropDownData(key: e.code, value: e.value))
                    .toList(),
                onChanged: _onStateChange,
                label: 'State',
              ),
              SizedBox(
                width: double.infinity,
                child: AcceptButton(
                  label: "Save",
                  borderRadius: BorderRadius.circular(5.0),
                  onPressed: () {
                    Navigator.of(context).pop(Address(
                        zipcode: _zipcodeController.text,
                        building: _buildingController.text,
                        street: _streetController.text,
                        city: _cityController.text,
                        state: _stateController.text));
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