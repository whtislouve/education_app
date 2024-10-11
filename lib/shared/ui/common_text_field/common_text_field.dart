import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:travel_app/gen/assets.gen.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    required this.name,
    required this.title,
    this.hintText,
    this.suffixImage,
    this.onPressSuffixImage,
    this.obscureText = false,
    this.keyboardType,
  });
  final String name;
  final String title;
  final String? hintText;
  final AssetGenImage? suffixImage;
  final void Function()? onPressSuffixImage;
  final bool obscureText;
  final TextInputType? keyboardType;
  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        FormBuilderTextField(
          name: widget.name,
          keyboardType: widget.keyboardType,
          autofocus: true,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              borderSide: BorderSide(
                color: Color.fromRGBO(223, 225, 232, 1),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(78, 116, 250, 1),
              ),
            ),
            suffixIcon: IconButton(
              icon: widget.suffixImage?.image() ?? const SizedBox(),
              onPressed: widget.onPressSuffixImage,
            ),
          ),
          obscureText: widget.obscureText,
          obscuringCharacter: '*',
        ),
      ],
    );
  }
}
