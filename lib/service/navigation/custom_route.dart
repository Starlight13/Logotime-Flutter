import 'package:flutter/material.dart';
import 'package:logotime/widget/common/clipper/avatar_clipper.dart';
import 'package:logotime/service/navigation/transition_type.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget screen;
  final TransitionType transitionType;
  final Duration? animationDuration;
  final Duration? animationReverseDuration;

  CustomRoute({
    required this.screen,
    required this.transitionType,
    this.animationDuration,
    this.animationReverseDuration,
    required RouteSettings settings,
  }) : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return screen;
            },
            settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (transitionType == TransitionType.avatarReveal) {
      final screenSize = MediaQuery.of(context).size;

      final sizeAnimation = Tween(
        begin: 0.0,
        end: screenSize.height * 2.5,
      ).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeIn),
      );

      final animationStyled =
          Tween<Offset>(begin: const Offset(0.0, .8), end: Offset.zero).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeIn),
      );

      return ClipPath(
        clipper: AvatarClipper(size: sizeAnimation.value),
        child: Stack(children: [
          Container(
            color: Colors.white,
          ),
          SlideTransition(position: animationStyled, child: child),
        ]),
      );
    }
    final PageTransitionsTheme theme = Theme.of(context).pageTransitionsTheme;
    return theme.buildTransitions(
        this, context, animation, secondaryAnimation, child);
  }

  @override
  Duration get transitionDuration =>
      animationDuration ?? const Duration(milliseconds: 500);

  @override
  Duration get reverseTransitionDuration =>
      animationReverseDuration ?? const Duration(milliseconds: 400);
}
