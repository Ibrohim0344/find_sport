import 'package:flutter/material.dart';

import '../../common/service/l10n/app_localizations.dart';
import '../../common/utils/custom_text_field.dart';

class NewAd extends StatelessWidget {
  const NewAd({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 5,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.clear),
        ),
        title: const Text("New ads"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomTextField(
                  mainText: l10n.title,
                  hintText: l10n.enterProductTitle,
                ),
                CustomTextField(
                  mainText: l10n.description,
                  hintText: l10n.enterDescription,
                  maxLines: 8,
                  topPadding: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(l10n.changeLocation),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                ),
                CustomTextField(
                  mainText: l10n.addressByLocation,
                  hintText: l10n.enterAddress,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
