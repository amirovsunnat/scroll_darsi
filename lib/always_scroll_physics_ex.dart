import 'dart:developer';

import 'package:flutter/material.dart';

class AlwaysScrollPhysicsExample extends StatelessWidget {
  AlwaysScrollPhysicsExample({super.key});

  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        log("Onrefresh complete.");
      },
    );
  }

  final FixedExtentScrollController fixedExtentScrollController =
      FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          await onRefresh();
        },
        child: ListWheelScrollView(
          overAndUnderCenterOpacity: 0,
          itemExtent: MediaQuery.of(context).size.height,
          controller: fixedExtentScrollController,
          physics: const FixedExtentScrollPhysics(),
          children: List.generate(
            25,
            (index) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.indigo,
                child: Text(
                  index.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
