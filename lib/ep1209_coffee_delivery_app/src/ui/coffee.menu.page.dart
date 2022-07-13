import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1209_coffee_delivery_app/src/model/menu_item.dart';

class CoffeeMenuPage extends StatefulWidget {
  const CoffeeMenuPage({Key? key}) : super(key: key);

  @override
  State<CoffeeMenuPage> createState() => _CoffeeMenuPageState();
}

class _CoffeeMenuPageState extends State<CoffeeMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 24,
              child: Column(
                children: [
                  Container(
                    height: 42,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text("Food"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent[100],
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text("Drink"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    height: 58,
                    decoration: BoxDecoration(
                        // color: Colors.orangeAccent,
                        ),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 160,
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                                color: index == 0 ? Colors.black : Colors.grey[200],
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                ),
                                Text("Signatured"),
                              ],
                            ),
                          );
                        }),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: coffeeMenuItems.map((e) => Container()).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 16,
              bottom: 32,
              child: SizedBox(
                height: 58,
                width: 58,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red[200],
                        child: Icon(Icons.shopping_bag_outlined),
                        foregroundColor: Colors.black,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.black,
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 12),
                        ),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
