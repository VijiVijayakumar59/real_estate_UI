import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final double initialValue;
  final ValueChanged<double> onChanged;

  const SliderWidget({
    Key? key,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  late double value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          label: "Select",
          value: value,
          onChanged: (newValue) {
            setState(() {
              value = newValue;
            });
            widget.onChanged(newValue);
          },
          min: 0,
          max: 10000,
        ),
        Text(
          "Price: ${value.toStringAsFixed(2)}",
          style: const TextStyle(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
