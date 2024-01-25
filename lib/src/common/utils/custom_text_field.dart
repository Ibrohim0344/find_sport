import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String mainText;
  final String hintText;
  final TextEditingController? controller;
  final Widget? prefix;

  const CustomTextField({
    required this.mainText,
    required this.hintText,
    this.controller,
    this.prefix,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainText,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xFF232638),
              ),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefix,
            prefixStyle: TextStyle(
                color: Colors.black,
            ),
            contentPadding: const EdgeInsets.only(left: 10),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF949CA9),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Color(0xFFE7ECF3),
                width: 2,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: Color(0xFF01001F),
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
