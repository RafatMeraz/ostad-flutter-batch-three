import 'package:ecommerce/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

@immutable
class CustomStepper extends StatefulWidget {
  CustomStepper({
    super.key,
    required this.lowerLimit,
    required this.upperLimit,
    required this.stepValue,
    required this.value,
    required this.onChange,
  });

  final int lowerLimit;
  final int upperLimit;
  final int stepValue;
  int value;
  final Function(int) onChange;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(3)
              ),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 18,
              ),
            ),
            onTap: () {
              widget.value = widget.value == widget.lowerLimit
                  ? widget.lowerLimit
                  : widget.value -= widget.stepValue;
              widget.onChange(widget.value);
              setState(() {});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '${widget.value}',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(3)
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 18,
              ),
            ),
            onTap: () {
              widget.value = widget.value == widget.upperLimit
                  ? widget.upperLimit
                  : widget.value += widget.stepValue;
              widget.onChange(widget.value);
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
