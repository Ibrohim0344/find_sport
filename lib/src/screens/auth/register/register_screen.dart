import 'package:flutter/material.dart';

import '../../../common/blocs/register/register_bloc.dart';
import '../../../common/service/l10n/app_localizations.dart';
import '../../../common/utils/custom_text_field.dart';
import '../../add_new_ad/new_ad_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController phoneController;
  late final TextEditingController passwordController;

  void saveUser(BuildContext context, RegisterState state) async {
    // print(state.response.statusCode);

    // if (state.response.statusCode! case >= 200 && <= 299) {
    //   Navigator.of(context).push(
    //     MaterialPageRoute(
    //       builder: (context) => const NewAd(),
    //     ),
    //   );
    // }
  }

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

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
              l10n.signUp,
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
                  controller: firstNameController,
                  mainText: l10n.firstName,
                  hintText: l10n.enterFirstName,
                ),
                CustomTextField(
                  controller: lastNameController,
                  mainText: l10n.lastName,
                  hintText: l10n.enterLastName,
                ),
                CustomTextField(
                  controller: phoneController,
                  mainText: l10n.phoneNumber,
                  hintText: "+998 (__) ___-__-__",
                  // prefix: Text("+998",textAlign: TextAlign.center,),
                ),
                CustomTextField(
                  controller: passwordController,
                  mainText: l10n.password,
                  hintText: l10n.enterPassword,
                ),
                CustomTextField(
                  controller: passwordController,
                  mainText: l10n.confirmPassword,
                  hintText: l10n.enterConfirmPassword,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              // onTap: () => saveUser(context),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NewAd(),
              )),
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
                      l10n.save,
                      style: textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
