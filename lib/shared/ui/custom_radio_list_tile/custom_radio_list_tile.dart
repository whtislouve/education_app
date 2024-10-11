import 'package:flutter/material.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class CustomRadioListTile<T> extends StatefulWidget {
  const CustomRadioListTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onRadioButtonPress,
    required this.title,
    this.description = '',
  });
  final T value;
  final T groupValue;
  final void Function() onRadioButtonPress;
  final String title;
  final String? description;
  @override
  State<CustomRadioListTile> createState() => _CustomRadioListTileState();
}

class _CustomRadioListTileState extends State<CustomRadioListTile> {
  bool get _isActiveRadioButton => widget.groupValue == widget.value;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxHeight = sizeData.maxHeight;
    return OutlinedButton.icon(
      onPressed: widget.onRadioButtonPress,
      label: Padding(
        padding: EdgeInsets.symmetric(vertical: maxHeight * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: _isActiveRadioButton
                  ? Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Theme.of(context).colorScheme.primary)
                  : Theme.of(context).textTheme.titleMedium,
            ),
            widget.description!.isEmpty
                ? const SizedBox()
                : Text(
                    widget.description.toString(),
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: const Color.fromARGB(104, 0, 0, 0),
                        ),
                  ),
          ],
        ),
      ),
      icon: Container(
        width: maxHeight * 0.03,
        height: maxHeight * 0.03,
        margin: EdgeInsets.only(bottom: maxHeight * 0.03),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: _isActiveRadioButton ? Colors.amber : Colors.white,
            border: _isActiveRadioButton
                ? Border.all(color: Colors.white)
                : Border.all(color: const Color.fromARGB(46, 0, 0, 0))),
        child: Icon(
          Icons.check,
          size: maxHeight * 0.015,
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          side: WidgetStateProperty.all(
            BorderSide(
                color: _isActiveRadioButton
                    ? Theme.of(context).colorScheme.primary
                    : const Color.fromARGB(38, 0, 0, 0)),
          )),
    );
  }
}
