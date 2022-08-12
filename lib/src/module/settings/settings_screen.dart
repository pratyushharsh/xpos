import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/module/sync/bloc/background_sync_bloc.dart';

import '../../../locale_keys.dart';
import '../../widgets/custom_button.dart';

const String dummyImage =
    'https://images.unsplash.com/photo-1541569863345-f97c6484a917?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3570&q=80';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          const ProfileCard(),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              return AccountWidget(
                name: "${state.employee?.firstName ?? ""} ${state.employee?.middleName ?? ""} ${state.employee?.lastName ?? ""}",
                role: "Kachre Wala",
                data: Detail(
                  title: LocaleKeys.settingsAccount.tr(),
                  subtitle: LocaleKeys.settingsAccountDescription.tr(),
                  icon: Icons.sync_alt_outlined,
                  children: [
                    SettingsItem(
                        text: "Email",
                        subtext: state.employee?.email,
                        onTap: () {}),
                    SettingsItem(
                        text: "Phone", subtext: state.employee?.phone, onTap: () {}),
                  ],
                ),
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
          SectionWidget(
            data: Detail(
              title: LocaleKeys.settingsStore.tr(),
              subtitle: LocaleKeys.settingsStoreDescription.tr(),
              icon: Icons.home_repair_service,
              children: [
                SettingsItem(text: "Employee Maintenance", onTap: () {}),
                SettingsItem(text: "Feature Settings", onTap: () {}),
                SettingsItem(
                    text: "Change Locale",
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteConfig.localeScreen)
                          .then((value) {
                        print('Locale changed : $value');
                        if (value != null && value is Locale) {
                          print('Setting Locale changed : $value');
                          EasyLocalization.of(context)?.setLocale(value);
                        }
                      });
                    }),
                SettingsItem(
                    text: "Tax Configuration",
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteConfig.taxConfigurationScreen);
                    }),
                SettingsItem(text: "Receipt Config", onTap: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SectionWidget(
            data: Detail(
              title: LocaleKeys.settingsSettings.tr(),
              subtitle: LocaleKeys.settingsSettingsDescription.tr(),
              icon: Icons.settings,
              children: [
                SettingsItem(
                    text: "Sync Data",
                    onTap: () async {
                      BlocProvider.of<BackgroundSyncBloc>(context)
                          .add(SyncAllConfigDataEvent());
                    }),
                SettingsItem(
                    text: "Invoice Setting",
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteConfig.invoiceSettingViewScreen);
                    }),
                SettingsItem(
                    text: "Receipt Setting",
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteConfig.receiptSettingViewScreen);
                    }),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SectionWidget(
            data: Detail(
              title: LocaleKeys.settingsHelp.tr(),
              subtitle: LocaleKeys.settingsHelpDescription.tr(),
              icon: Icons.mail_rounded,
              children: [
                SettingsItem(
                    text: "Load Sample Data",
                    onTap: () {
                      BlocProvider.of<BackgroundSyncBloc>(context)
                          .add(LoadSampleData());
                    }),
                SettingsItem(text: "FAQ and Videos", onTap: () {}),
                SettingsItem(text: "Contact us", onTap: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          RejectButton(
              label: "Log Out",
              onPressed: () {
                BlocProvider.of<AuthenticationBloc>(context)
                    .add(LogOutUserEvent());
              }),
          const SizedBox(
            height: 300,
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(RouteConfig.businessViewScreen,
                    arguments: state.store?.rtlLocId);
              },
              child: const Hero(
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
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${state.store?.storeName}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ],
        );
      },
    );
  }
}

class SectionWidget extends StatelessWidget {
  final Detail data;

  const SectionWidget({Key? key, required this.data}) : super(key: key);

  Widget _buildButton(SettingsItem item) {
    return InkWell(
      onTap: item.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Icon(
                  data.icon,
                  size: 22,
                  color: AppColor.color1,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  data.subtitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: AppColor.subtitleColorPrimary,
                      fontSize: 14),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            elevation: 0,
            margin: const EdgeInsets.all(0),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.children.length,
                itemBuilder: (ctx, idx) {
                  if (idx == data.children.length - 1) {
                    return _buildButton(data.children[idx]);
                  }
                  return Column(
                    children: [
                      _buildButton(data.children[idx]),
                      const Divider(height: 0)
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }
}

class AccountWidget extends StatelessWidget {
  final Detail data;
  final String name;
  final String role;

  const AccountWidget({Key? key, required this.data, required this.name, required this.role}) : super(key: key);

  Widget _buildButton(SettingsItem item) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.text,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: AppColor.subtitleColorPrimary),
              ),
              const SizedBox(
                height: 6,
              ),
              if (item.subtext != null)
                Text(
                  item.subtext!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
            ],
          ),
          const Icon(Icons.chevron_right)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Icon(
                  data.icon,
                  size: 22,
                  color: AppColor.color1,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  data.subtitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: AppColor.subtitleColorPrimary,
                      fontSize: 14),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            elevation: 0,
            margin: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                    RouteConfig.employeeDetailScreen,
                    arguments: BlocProvider
                        .of<AuthenticationBloc>(context)
                        .state
                        .employee);
              },
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FadeInImage(
                              height: 40,
                              width: 40,
                              placeholder: const AssetImage(
                                  "assets/image/logo-dummy.png"),
                              image: const NetworkImage(dummyImage),
                              imageErrorBuilder: (ctx, err, trace) {
                                return const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  role,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: AppColor.subtitleColorPrimary),
                                )
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.children.length,
                        itemBuilder: (ctx, idx) {
                          if (idx == data.children.length - 1) {
                            return _buildButton(data.children[idx]);
                          }
                          return Column(
                            children: [
                              _buildButton(data.children[idx]),
                              const Divider()
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Detail {
  final IconData icon;
  final String title;
  final String subtitle;
  final List<SettingsItem> children;

  Detail({required this.icon,
    required this.title,
    required this.subtitle,
    this.children = const []});
}

class SettingsItem {
  final String text;
  final String? subtext;
  final GestureTapCallback? onTap;

  SettingsItem({required this.text, required this.onTap, this.subtext});
}
