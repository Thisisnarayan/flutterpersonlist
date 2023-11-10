import 'package:flutter/material.dart';
import 'package:flutterpersonlist/modules/spalsh/splash.dart';
import 'package:flutterpersonlist/modules/user_list/list/user_list.dart';
import 'package:flutterpersonlist/modules/user_list/model/user.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  // App's Entry Page
  SpashRoute.route: (_) => const SpashRoute(),

  //UserList.route: (_) => const UserList(),

  UserList.route: (context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final data = args['list'] as UserListFromApi?;
    return UserList(
      list: data,
    );
  }
};
