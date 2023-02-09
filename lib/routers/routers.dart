
import 'package:flutter/cupertino.dart';
/*
配置ios风格的路由
1、删掉material.dart引入cupertino.dart
   import 'package:flutter/cupertino.dart';

2、把 MaterialPageRoute替换成 CupertinoPageRoute
*/

import '../pages/tab.dart';
import '../pages/users/login.dart';
import '../pages/users/login1.dart';
import '../pages/users/login2.dart';
import '../pages/users/registerFirst.dart';
import '../pages/users/registerSecond.dart';
import '../pages/users/registerThird.dart';
import 'package:flutterdemo01/random.dart';

//1、配置路由
Map routes = {
  "/": (contxt) => const Tabs(),
  "/login": (contxt) => const LoginPage(),
  "/login1": (contxt) => const Login1Page(),
  "/login2": (contxt) => const Login2Page(),
  "/registerFirst": (contxt) => const RegisterFirstPage(),
  "/registerSecond": (contxt) => const RegisterSecondPage(),
  "/registerThird": (contxt) => const RegisterThirdPage(),
  "/randomPage":(context)=>const RandomPage(),
};

//2、配置onGenerateRoute  固定写法  这个方法也相当于一个中间件，这里可以做权限判断
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name; //  /news 或者 /search
  final Function? pageContentBuilder =
      routes[name]; //  Function = (contxt) { return const NewsPage()}

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (context) => pageContentBuilder(context));

      return route;
    }
  }
  return null;
};
