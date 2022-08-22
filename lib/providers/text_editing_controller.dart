import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final textEditingControllerProvider = Provider.family.autoDispose(
  (ref, _) {
    final controller = TextEditingController();
    ref.onDispose(() {
      controller.dispose();
    });
    return controller;
  },
);
