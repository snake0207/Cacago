// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  showData();
}

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  debugPrint("접속 중..");
}

Future<String> accessData() async {
  String account = '0원';
  Duration time = const Duration(seconds: 3);

  if (time.inSeconds > 2) {
    await Future.delayed(time, () {
      account = '8,500만원';
      debugPrint(account);
    });
  } else {
    debugPrint("잔액 조회 중..");
  }
  return account;
}

void fetchData(String account) {
  debugPrint("잔액 $account");
}
