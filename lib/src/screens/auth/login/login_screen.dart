import 'package:flutter/material.dart';

import '../../../common/service/l10n/app_localizations.dart';
import '../../../common/utils/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final l10n = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 30,
              right: 30,
            ),
            child: Image(image: AssetImage("assets/images/im_main.png")),
          ),
          Center(
            child: Text(
              l10n.login,
              style: textTheme.titleLarge?.copyWith(
                color: const Color(0xFF01001F),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomTextField(
                  mainText: l10n.phoneNumber,
                  hintText: "+998 (__) ___-__-__",
                  // prefix: Text("+998",textAlign: TextAlign.center,),
                ),
                CustomTextField(
                  mainText: l10n.password,
                  hintText: l10n.enterPassword,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: size.width * .7,
              height: 45,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF01001F).withOpacity(.68),
                      const Color(0xFF01001F),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Text(
                    l10n.login,
                    style: textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
