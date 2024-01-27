import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String mainText;
  final String hintText;
  final TextEditingController? controller;
  final Widget? prefix;
  final int maxLines;
  final double topPadding;
  final String? Function(String?)? validator;

  const CustomTextField({
    required this.mainText,
    required this.hintText,
    this.topPadding = 0,
    this.maxLines = 1,
    this.controller,
    this.prefix,
    this.validator,
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
        TextFormField(
          textInputAction: TextInputAction.next,
          validator: validator,
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            prefixIcon: prefix,
            contentPadding: EdgeInsets.only(left: 10, top: topPadding),
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
