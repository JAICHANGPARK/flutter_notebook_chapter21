import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1215_fashinex_app/src/model/fashinex_menu.dart';

class FashinexWishListPage extends StatefulWidget {
  const FashinexWishListPage({Key? key}) : super(key: key);

  @override
  State<FashinexWishListPage> createState() => _FashinexWishListPageState();
}

class _FashinexWishListPageState extends State<FashinexWishListPage> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  Text(
                    "My Wishlist",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 32,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24)),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Text(
                            "All",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(24)),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(child: Text("Wedding")),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.65,
                  children: List.generate(
                    8,
                    (index) => Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.pink,
                            ),
                          ),
                          Text("RUCHED ASYMMETRIC"),
                          Text("DRESS LIMITED EDITION"),
                          Row(
                            children: [

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
            currentIndex: screenIndex,
            onTap: (idx) {
              setState(() {
                screenIndex = idx;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            items: fashinexMenuItems
                .map((e) => BottomNavigationBarItem(
                      icon: Icon(e.iconData ?? Icons.home_max),
                      label: e.menuTitle ?? "",
                      tooltip: "Home",
                    ))
                .toList()),
      ),
    );
  }
}