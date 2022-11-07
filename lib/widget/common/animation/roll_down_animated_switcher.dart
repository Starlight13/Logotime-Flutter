import 'package:flutter/material.dart';

class RollDownAnimatedSwitcher extends StatelessWidget {
  const RollDownAnimatedSwitcher({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (child, animation) {
          return SizeTransition(
            sizeFactor: animation,
            axis: Axis.vertical,
            axisAlignment: -1,
            child: Container(
              child: child,
            ),
          );
        },
        child: child);
  }
}
