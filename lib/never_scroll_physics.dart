import 'package:flutter/material.dart';

class NeverScrollPhysicsExample extends StatelessWidget {
  const NeverScrollPhysicsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Text(
                      'The list below is a created using a ListView.builder() widget and has its physics set to NeverScrollableScrollPhysics() because otherwise you will not be able to scroll it unless you tab inside it ans scroll, so the whole screen does not scroll as a whole, it scrolls by section, which is not a good user experience',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                    child: Text(
                      'Note: It is important that you set shrinkWrap to true in the ListView.builder() widget or else you will get the scary "Vertical viewport was given unbounded height." Error',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                shrinkWrap: true,
                primary: true,
                // physics: const AlwaysScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (c, i) => InkWell(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      'List Item ${i + 1}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
