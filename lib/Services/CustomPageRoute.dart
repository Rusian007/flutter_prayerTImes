import 'package:flutter/material.dart';


class CustomPageRoute extends PageRouteBuilder{
  final Widget child;

  CustomPageRoute({required this.child}): super(
    transitionDuration: Duration(milliseconds: 400),
    reverseTransitionDuration: Duration(milliseconds: 550),
    pageBuilder: (context, animation, secondaryAnim) => child,
  );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnim, Widget child) =>
      SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1,0),
            end: Offset.zero,
          ).animate(animation),
          child: child);
}