import 'package:flutter/material.dart';

import '../../resources/theme/app_colors.dart';
import '../../resources/theme/text_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.label,
    this.prefixIconData,
    this.isSecure = false,
    required this.controller,
    this.additionalTitle,
    this.onAdditional,
  });

  final String? hintText;
  final String? label;
  final IconData? prefixIconData;
  final TextEditingController controller;
  final bool isSecure;

  final String? additionalTitle;
  final VoidCallback? onAdditional;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showText = false;

  @override
  void initState() {
    showText = !widget.isSecure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.label != null || widget.additionalTitle != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              crossAxisAlignment:CrossAxisAlignment.end,
              children: [
                if (widget.label != null)
                  Text(
                    widget.label!,
                    textAlign: TextAlign.start,
                    style: regular14TextStyle,
                  ),
                const Spacer(),
                if (widget.additionalTitle != null)
                  InkWell(
                      onTap: widget.onAdditional, child: Text(widget.additionalTitle!, style: regular14TextStyle.copyWith(color: primary500),),),
              ],
            ),
          ),
        TextField(
          controller: widget.controller,
          obscureText: !showText,
          decoration: InputDecoration(
            hintText: widget.hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            // prefix: Text("Hello"),
            suffix: widget.isSecure ? InkWell(onTap: (){
              setState(() {

                showText = !showText;
              });
            }, child: Icon(showText ? Icons.visibility : Icons.visibility_off)) : null,
            prefixIcon: widget.prefixIconData != null
                ? Icon(
                    widget.prefixIconData!,
                    color: primary500,
                  )
                : null,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: gray60, width: 1.0)),
          ),
        ),
      ],
    );
  }
}
