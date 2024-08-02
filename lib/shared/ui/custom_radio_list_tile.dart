import 'package:flutter/material.dart';

class CustomRadioListTile<T> extends StatefulWidget {
  CustomRadioListTile({
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
  // bool _isActiveRadioButton = false;

  @override
  void initState() {
    super.initState();
    // if(_checked) {

    // }
  }

  @override
  void dispose() {
    super.dispose();
  }

  // _valueInGroupValue() {
  //   setState(() {
  //     widget.groupValue = widget.value;
  //   });
  //   print("value");
  //   print(widget.value);
  //   print("groupvalue");
  //   print(widget.groupValue);
  // }

  // _onRadioButtonPress() {
  //   if (!_checked) {
  //     _valueInGroupValue();
  //   }
  //   setState(() {
  //     _isActiveRadioButton = !_isActiveRadioButton;
  //   });

  //   // setState(() {
  //   //   widget.value == widget.groupValue
  //   //       ? _isActiveRadioButton = true
  //   //       : !_isActiveRadioButton;
  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: widget.onRadioButtonPress,
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
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
        width: 16,
        height: 16,
        margin: EdgeInsets.only(bottom: 28),
        child: Icon(
          Icons.check,
          size: 8,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: _isActiveRadioButton ? Colors.amber : Colors.white,
            border: _isActiveRadioButton
                ? Border.all(color: Colors.white)
                : Border.all(color: const Color.fromARGB(46, 0, 0, 0))),
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
