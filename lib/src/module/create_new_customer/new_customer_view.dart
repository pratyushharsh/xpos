import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/model/cust_party.dart';
import 'package:receipt_generator/src/module/create_new_customer/bloc/new_customer_bloc.dart';
import 'package:receipt_generator/src/module/create_new_customer/customer_validator.dart';
import 'package:receipt_generator/src/widgets/custom_button.dart';
import 'package:receipt_generator/src/widgets/custom_checkbox.dart';
import 'package:receipt_generator/src/widgets/custom_text_field.dart';
import 'package:receipt_generator/src/widgets/loading.dart';

import '../../widgets/appbar_leading.dart';

class NewCustomerView extends StatelessWidget {
  const NewCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => NewCustomerBloc(
          db: RepositoryProvider.of(context),
          sequenceRepository: RepositoryProvider.of(context)),
      child: const CreateNewCustomerForm(),
    );
  }
}

class CreateNewCustomerForm extends StatefulWidget {
  const CreateNewCustomerForm({Key? key}) : super(key: key);

  @override
  State<CreateNewCustomerForm> createState() => _CreateNewCustomerFormState();
}

class _CreateNewCustomerFormState extends State<CreateNewCustomerForm> {
  final _formKey = GlobalKey<FormState>();
  bool _sameAddress = true;
  bool _formValid = false;

  late TextEditingController _customerNameController;
  late TextEditingController _customerPhoneController;
  late TextEditingController _customerEmailController;
  late TextEditingController _customerPanController;
  late TextEditingController _customerGstController;
  late TextEditingController _customerShipAddressController;
  late TextEditingController _customerBillAddressController;

  @override
  void initState() {
    super.initState();
    _customerNameController = TextEditingController();
    _customerPhoneController = TextEditingController();
    _customerEmailController = TextEditingController();
    _customerPanController = TextEditingController();
    _customerGstController = TextEditingController();
    _customerShipAddressController = TextEditingController();
    _customerBillAddressController = TextEditingController();
  }

  @override
  void dispose() {
    _customerNameController.dispose();
    _customerPhoneController.dispose();
    _customerEmailController.dispose();
    _customerPanController.dispose();
    _customerGstController.dispose();
    _customerShipAddressController.dispose();
    _customerBillAddressController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    CustomerParty customer = CustomerParty(
        name: _customerNameController.text,
        phoneNumber: _customerPhoneController.text.isNotEmpty
            ? _customerPhoneController.text
            : null,
        email: _customerEmailController.text.isNotEmpty
            ? _customerEmailController.text
            : null,
        billingAddress: _customerBillAddressController.text.isNotEmpty
            ? _customerBillAddressController.text
            : null);
    BlocProvider.of<NewCustomerBloc>(context)
        .add(OnCreateCustomer(customer: customer));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: BlocConsumer<NewCustomerBloc, NewCustomerState>(
          listener: (context, state) {
            if (state.status == NewCustomerStatus.addingCustomer) {
              showLoadingDialog(context);
            } else if (state.status == NewCustomerStatus.addingFailure) {
              Navigator.of(context).pop();
              const snackBar = SnackBar(
                content: Text('Error Saving the customer.'),
                backgroundColor: Colors.red,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else if (state.status == NewCustomerStatus.addingSuccess) {
              Navigator.of(context).pop();
              const snackBar = SnackBar(
                content: Text('Successfully Created Customer'),
                backgroundColor: Colors.green,
                elevation: 5,
                duration: Duration(milliseconds: 1500),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.of(context).pop();
            }
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: Form(
                key: _formKey,
                onChanged: () {
                  setState(() {
                    _formValid = _formKey.currentState!.validate();
                  });
                },
                autovalidateMode: AutovalidateMode.always,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 70,
                            ),
                            CustomTextField(
                              label: "Customer Name",
                              validator:
                                  NewPartyFieldValidator.validatePartyName,
                              controller: _customerNameController,
                            ),
                            CustomTextField(
                              label: "Contact No.",
                              textInputType: TextInputType.phone,
                              controller: _customerPhoneController,
                            ),
                            CustomTextField(
                              label: "Email",
                              validator:
                                  NewPartyFieldValidator.validatePartyEmail,
                              textInputType: TextInputType.emailAddress,
                              controller: _customerEmailController,
                            ),
                            CustomTextField(
                              label: "GST",
                              textInputType: TextInputType.phone,
                              controller: _customerGstController,
                            ),
                            CustomTextField(
                              label: "PAN",
                              textInputType: TextInputType.phone,
                              controller: _customerPanController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                CustomCheckbox(
                                  value: _sameAddress,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _sameAddress = value;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Billing address is same as shipping address.",
                                  style:
                                      TextStyle(color: AppColor.formInputText),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              label: "Billing Address",
                              minLines: 4,
                              maxLines: 5,
                              controller: _customerBillAddressController,
                            ),
                            if (!_sameAddress)
                              CustomTextField(
                                label: "Shipping Address",
                                minLines: 4,
                                maxLines: 5,
                                controller: _customerShipAddressController,
                              ),
                            const SizedBox(
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: BlurryContainer(
                        blur: 8,
                        height: 70,
                        elevation: 0,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(0)),
                        color: Colors.white.withOpacity(0.6),
                        child: const SizedBox(
                          height: 70,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 16,
                      child: AppBarLeading(
                        heading: "New Party",
                        icon: Icons.arrow_back,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: RejectButton(
                                  label: "Cancel", onPressed: () {}),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: AcceptButton(
                                label: "Save",
                                onPressed: _formValid ? _onSubmit : null,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
