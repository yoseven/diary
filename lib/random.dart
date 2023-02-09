import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterdemo01/pages/users/login.dart';
import 'package:flutterdemo01/pages/users/login1.dart';
import 'package:flutterdemo01/pages/users/login2.dart';

class RandomPage extends StatefulWidget {
  const RandomPage({super.key});

  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  @override
  Widget build(BuildContext context) {
    var index = Random().nextInt(3);
    switch (index) {
      case 0:
        return const LoginPage();
      case 1:
        return const Login1Page();
      case 2:
        return const Login2Page();
    }
    return const LoginPage();
  }
}
