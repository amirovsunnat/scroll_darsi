import 'package:flutter/material.dart';
import 'package:oynani_scroll_qilish/utils/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text("Home Screen"),
        ),
        body: SingleChildScrollView(
          // reverse: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: List.generate(
              20,
              (index) => Container(
                width: 150,
                height: 180,
                color: Colors.amber,
                margin: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const DefaultText(
                      text: "Tree",
                      // color: AppColors.mainColor,
                    ),
                    DefaultText(
                      text: "New Year: ${2050 - index}",
                      // textAlign: TextAlign.center,
                    ),
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROaBX7_7ELmk0EbzS9tIWp45c15ov0g_opoQ&s"),
                  ],
                ),
              ),
            ),
          ),
        )
        // singlechildscrollview scrolldirection
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: List.generate(10, (index) {
        //       return Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Element $index'),
        //       );
        //     }),
        //   ),
        // ),
        );
  }
}
