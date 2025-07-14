import 'package:flutter/material.dart';

class SettingExpansionMenu extends StatefulWidget {
  const SettingExpansionMenu({super.key});

  @override
  State<SettingExpansionMenu> createState() => _SettingExpansionMenuState();
}

class _SettingExpansionMenuState extends State<SettingExpansionMenu> {
  bool notificationEnable = true;
  bool darkMode = false;
  bool fingerPrintEnable = false;
  bool autoSync = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: const Text("Bildirimler"),
          leading: const Icon(Icons.notifications),
          children: [
            SwitchListTile(
              title: Text("Bildirimleri Aç"),
              value: notificationEnable,
              onChanged: (value) {
                setState(() {
                  notificationEnable = value;
                });
              },
            ),
            SwitchListTile(
              title: Text("Otomatik Senkronizasyon"),
              value: autoSync,
              onChanged: (value) {
                setState(() {
                  autoSync = value;
                });
              },
            ),
          ],
        ),
        ExpansionTile(
          title: const Text("Tema"),
          leading: const Icon(Icons.color_lens),
          children: [
            SwitchListTile(
              title: Text("Karanlık Mod"),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ],
        ),
        ExpansionTile(
          title: const Text("Güvenlik"),
          leading: const Icon(Icons.security),
          children: [
            SwitchListTile(
              title: Text("Parmak İzi İle Giriş"),
              value: fingerPrintEnable,
              onChanged: (value) {
                setState(() {
                  fingerPrintEnable = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
