import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../locale_keys.dart';
import '../../config/theme_settings.dart';
import '../../entity/pos/tax_group_entity.dart';
import '../../entity/pos/tax_rule_entity.dart';
import '../../widgets/appbar_leading.dart';
import '../../widgets/desktop_pop_up.dart';
import 'bloc/create_edit_tax_bloc.dart';
import 'create_new_tax_group.dart';
import 'create_new_tax_rule.dart';

class CreateEditTaxView extends StatelessWidget {
  const CreateEditTaxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CreateEditTaxBloc(taxRepository: RepositoryProvider.of(context))
            ..add(
              FetchAllTaxGroup(),
            ),
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: AppColor.background,
              body: Stack(
                fit: StackFit.expand,
                children: [
                  const Positioned(
                    top: 75,
                    left: 16,
                    right: 16,
                    bottom: 16,
                    child: TaxConfigView(),
                  ),
                  Positioned(
                    top: 20,
                    left: 16,
                    child: AppBarLeading(
                      heading: LocaleKeys.taxConfiguration.tr(),
                      icon: Icons.arrow_back,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class TaxConfigView extends StatelessWidget {
  const TaxConfigView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Tax Group",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Tax Rule",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]),
        Expanded(
          child: Row(children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: const Card(
                  elevation: 0,
                  child: TaxGroupList(),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Card(
                  elevation: 0,
                  child: TaxRuleList(),
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}

class TaxGroupList extends StatelessWidget {
  const TaxGroupList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEditTaxBloc, CreateEditTaxState>(
      builder: (context, state) {
        return ListView(
          children: [
            ...state.taxGroups.map((taxGroup) => Column(
                  children: [
                    TaxGroupTile(
                        taxGroup: taxGroup,
                        selected: state.selectedTaxGroup == taxGroup),
                    const Divider(height: 0)
                  ],
                )),
            const NewTaxGroupTile()
          ],
        );
      },
    );
  }
}

class TaxGroupTile extends StatelessWidget {
  final TaxGroupEntity taxGroup;
  final bool selected;
  const TaxGroupTile({Key? key, required this.taxGroup, this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<CreateEditTaxBloc>(context).add(
          SelectTaxGroup(taxGroup),
        );
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: selected ? AppColor.formInputBorder : Colors.white,
          ),
          child: Row(children: [
            Text(taxGroup.description),
          ])),
    );
  }
}

class TaxRuleTile extends StatelessWidget {
  final TaxRuleEntity taxRule;
  final TaxGroupEntity taxGroup;
  const TaxRuleTile({
    Key? key,
    required this.taxRule,
    required this.taxGroup,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(taxRule.ruleName),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                BlocProvider.of<CreateEditTaxBloc>(context).add(
                  DeleteTaxRule(taxGroup: taxGroup, taxRule: taxRule),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewTaxGroupTile extends StatelessWidget {
  const NewTaxGroupTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TaxGroupEntity tg = TaxGroupEntity(groupId: "GROUP1", name: "Group Name", description: "Group Description");
        // BlocProvider.of<CreateEditTaxBloc>(context).add(CreateNewTaxGroup(tg));
        if (Platform.isIOS || Platform.isAndroid) {
        } else {
          showDesktopPopUp(
            context: context,
            child: const CreateNewTaxGroupDesktop(),
          ).then((value) => {
                if (value != null && value)
                  {
                    BlocProvider.of<CreateEditTaxBloc>(context)
                        .add(FetchAllTaxGroup())
                  }
              });
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: const [
            Icon(Icons.add),
            SizedBox(width: 16),
            Text("Create New Group"),
          ],
        ),
      ),
    );
  }
}

class NewTaxRuleTile extends StatelessWidget {
  const NewTaxRuleTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEditTaxBloc, CreateEditTaxState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            if (Platform.isIOS || Platform.isAndroid) {
            } else {
              showDesktopPopUp(
                context: context,
                child:
                    CreateNewTaxRuleDesktop(taxGroup: state.selectedTaxGroup!),
              ).then((value) => {
                    if (value != null && value)
                      {
                        BlocProvider.of<CreateEditTaxBloc>(context)
                            .add(FetchAllTaxGroup())
                      }
                  });
            }
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Icon(Icons.add),
                SizedBox(width: 16),
                Text("Create New Tax Rule"),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TaxRuleList extends StatelessWidget {
  const TaxRuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEditTaxBloc, CreateEditTaxState>(
      builder: (context, state) {
        if (state.selectedTaxGroup == null) {
          return const Center(
            child: Text("Select a Tax Group"),
          );
        }

        return ListView(
          children: [
            ...state.selectedTaxGroup!.taxRules.map((taxRule) => Column(
                  children: [
                    TaxRuleTile(taxRule: taxRule, taxGroup: state.selectedTaxGroup!),
                    const Divider(height: 0)
                  ],
                )),
            const NewTaxRuleTile()
          ],
        );
      },
    );
  }
}