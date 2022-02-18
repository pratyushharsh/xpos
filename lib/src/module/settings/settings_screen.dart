import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

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
          SectionWidget(
            data: Detail(
              title: "Settings",
              subtitle: "Modify your forms as required",
              icon: Icons.settings,
              children: [
                SettingsItem(text: "Invoice Setting", onTap: () {}),
                SettingsItem(text: "Receipt Setting", onTap: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SectionWidget(
            data: Detail(
              title: "Help and Feedback",
              subtitle: "Reach us with your feedback and question",
              icon: Icons.mail_rounded,
              children: [
                SettingsItem(text: "FAQ and Videos", onTap: () {}),
                SettingsItem(text: "Contact us", onTap: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4E03AQG2CT__QR-ZEA/profile-displayphoto-shrink_800_800/0/1635953455093?e=1650499200&v=beta&t=f3QRa7swHNX0eWlIK6TT00OhoWBusgZaAqcOiIpRHsE'),
            maxRadius: 60,
            child: Text(
              "",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Pratyush Kirana Store",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ],
      ),
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
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.text,
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
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
                      fontWeight: FontWeight.normal, fontSize: 22),
                ),
                Text(
                  data.subtitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.subtitleColorPrimary),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
          elevation: 0,
          margin: const EdgeInsets.all(0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
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
                      const Divider()
                    ],
                  );
                }),
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

  Detail(
      {required this.icon,
      required this.title,
      required this.subtitle,
      this.children = const []});
}

class SettingsItem {
  final String text;
  final GestureTapCallback? onTap;

  SettingsItem({required this.text, required this.onTap});
}
