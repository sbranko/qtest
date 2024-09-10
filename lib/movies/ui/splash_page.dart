import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/router.dart';
import '../../gen/assets.gen.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    // Delays the call to after the widget has been built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Delay the navigation action by 3 seconds
      Future.delayed(const Duration(seconds: 3), () {
        // Check if the widget is still mounted before using the context
        if (mounted) {
          context.router.replace(const HomeRoute());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle.dark,
    child: Assets.splash.image(fit: BoxFit.cover),
  );
}
