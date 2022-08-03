import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/theme_settings.dart';
import '../../entity/pos/employee_entity.dart';
import '../../widgets/appbar_leading.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/my_loader.dart';
import 'bloc/create_edit_employee_bloc.dart';

class EmployeeDetailView extends StatelessWidget {
  final EmployeeEntity? employee;
  const EmployeeDetailView({Key? key, this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateEditEmployeeBloc()..add(OnLoadExistingEmployee(employee)),
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
                            horizontal: 16, vertical: 8),
                        child: const EmployeeForm())),
                Positioned(
                  top: 20,
                  left: 16,
                  child: AppBarLeading(
                      heading: "Employee",
                      icon: Icons.arrow_back,
                      onTap: () {
                        Navigator.of(context).pop();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmployeeForm extends StatelessWidget {
  const EmployeeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEditEmployeeBloc, CreateEditEmployeeState>(
      builder: (context, state) {
        if (state.status == CreateEditEmployeeStatus.loading || state.status == CreateEditEmployeeStatus.initial) {
          return const MyLoader(color: AppColor.primary);
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppColor.background,
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: 50,
              ),
            ),
            CustomTextField(
              initialValue: state.firstName,
              label: 'First Name',
              onFieldSubmitted: (value) {
                BlocProvider.of<CreateEditEmployeeBloc>(context)
                    .add(OnEmployeeFirstNameChanged(value));
              },
            ),
            CustomTextField(
              initialValue: state.middleName,
              label: 'Middle Name',
              onFieldSubmitted: (value) {
                BlocProvider.of<CreateEditEmployeeBloc>(context)
                    .add(OnEmployeeMiddleNameChanged(value));
              },
            ),
            CustomTextField(
              initialValue: state.lastName,
              label: 'Last Name',
              onFieldSubmitted: (value) {
                BlocProvider.of<CreateEditEmployeeBloc>(context)
                    .add(OnEmployeeLastNameChanged(value));
              },
            ),
            CustomTextField(
              initialValue: state.phone,
              label: 'Phone',
              onFieldSubmitted: (value) {
                BlocProvider.of<CreateEditEmployeeBloc>(context)
                    .add(OnEmployeePhoneChanged(value));
              },
            ),
            CustomTextField(
              initialValue: state.email,
              label: 'Email',
              onFieldSubmitted: (value) {
                BlocProvider.of<CreateEditEmployeeBloc>(context)
                    .add(OnEmployeeEmailChanged(value));
              },
            ),
            CustomTextField(
              initialValue: state.locale,
              label: 'Language',
              onFieldSubmitted: (value) {
                BlocProvider.of<CreateEditEmployeeBloc>(context)
                    .add(OnEmployeeLocaleChanged(value));
              },
            ),
          ],
        );
      },
    );
  }
}
