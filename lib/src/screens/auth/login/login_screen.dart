import 'package:flutter/material.dart';

import '../../../common/service/l10n/app_localizations.dart';
import '../../../common/utils/custom_text_field.dart';
import '../../add_new_ad/new_ad_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  void validate() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const NewAd(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final l10n = AppLocalizations.of(context);
    final textTheme = Theme
        .of(context)
        .textTheme;

    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
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
                    mainText: l10n.firstName,
                    hintText: l10n.enterFirstName,
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
              child: GestureDetector(
                onTap: validate,
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
            ),
          ],
        ),
      ),
    );
  }
}
