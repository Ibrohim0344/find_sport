import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/controller/lang_provider.dart';
import '../auth/register/register_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const RegisterScreen(),
          ),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 7,
        child: const Icon(Icons.arrow_forward),
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * .4),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/Icon.svg"),
                Text(
                  "FindSport",
                  style: textTheme.headlineLarge?.copyWith(),
                ),
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              width: size.width * .7,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: const Color(0xFF01001F),
                    width: 1,
                  ),
                ),
                child: DropdownButton(
                  value: context.watch<LangProvider>().dropDownValue,
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  underline: const SizedBox.shrink(),
                  style: textTheme.bodySmall,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  iconEnabledColor: Colors.white,
                  items: const [
                    DropdownMenuItem<String>(
                      value: "uz",
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Image(image: AssetImage("assets/images/uz.png")),
                          Text(" O'zbek"),
                        ],
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: "de",
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Image(image: AssetImage("assets/images/uz.png")),
                          Text(" Kiril"),
                        ],
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: "en",
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Image(image: AssetImage("assets/images/en.png")),
                          Text(" English"),
                        ],
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: "ru",
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Image(image: AssetImage("assets/images/ru.png")),
                          Text(" Русский"),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (lang) =>
                      context.read<LangProvider>().changeLocale(lang),
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * .2),
        ],
      ),
    );
  }
}
