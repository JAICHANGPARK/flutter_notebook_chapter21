import 'package:flutter/material.dart';

class JobMainPage extends StatefulWidget {
  const JobMainPage({Key? key}) : super(key: key);

  @override
  State<JobMainPage> createState() => _JobMainPageState();
}

class _JobMainPageState extends State<JobMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Location",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 18,
                            color: Colors.deepOrangeAccent,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Jakarta, Indonesia",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Colors.deepOrange,
                    size: 28,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.deepOrange,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  // SizedBox(height: 4,),
                  // CircleAvatar(
                  //   radius: 3,
                  //   backgroundColor: Colors.deepOrange,
                  // )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble_outline_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  // SizedBox(height: 4,),
                  // CircleAvatar(
                  //   radius: 3,
                  //   backgroundColor: Colors.deepOrange,
                  // )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.grey,
                    size: 28,
                  ),
                  // SizedBox(height: 4,),
                  // CircleAvatar(
                  //   radius: 3,
                  //   backgroundColor: Colors.deepOrange,
                  // )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.perm_identity,
                    color: Colors.grey,
                    size: 28,
                  ),
                  // SizedBox(height: 4,),
                  // CircleAvatar(
                  //   radius: 3,
                  //   backgroundColor: Colors.deepOrange,
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}