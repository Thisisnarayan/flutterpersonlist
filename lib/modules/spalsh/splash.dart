import 'package:flutter/material.dart';
import 'package:flutterpersonlist/extensions/theme_extension.dart';
import 'package:flutterpersonlist/generated/assets.gen.dart';
import 'package:flutterpersonlist/modules/spalsh/splash_view_modal.dart';
import 'package:flutterpersonlist/modules/user_list/list/user_list.dart';
import 'package:flutterpersonlist/modules/user_list/model/user.dart';
import 'package:lottie/lottie.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class SpashRoute extends StatelessWidget {
  const SpashRoute({super.key});
  static const route = '/splash';
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => SplashViewModel(),
      child: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  ReactionDisposer? _reactionDisposer;
  @override
  void initState() {
    final viewModel = context.read<SplashViewModel>();

    viewModel.callUserList();

    Future.delayed(const Duration(seconds: 1)).then(
      (value) => runInAction(() => viewModel.hasCompleted = true),
    );

    _reactionDisposer = autorun(
      (_) {
        if (viewModel.nextRoute) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            UserList.route,
            arguments: {'list': viewModel.userListFromApi},
            (route) => false,
          );
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: Lottie.asset(
                Assets.jsons.sp,
                fit: BoxFit.cover,
                repeat: true,
                reverse: false,
                animate: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
