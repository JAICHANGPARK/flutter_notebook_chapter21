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
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black87,
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_none,
                            ),
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    height: 46,
                    // color: Colors.blue,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Find your job now",
                                hintStyle: TextStyle(
                                  fontSize: 13,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black87,
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                              ),
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot Jot This Month",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Show All"),
                    style: TextButton.styleFrom(
                      primary: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              color: Colors.blue,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 320,
                  color: Colors.brown,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Post",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Show All"),
                    style: TextButton.styleFrom(
                      primary: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.pink,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 8),
                  height: 100,
                  color: Colors.green,
                ),
              ),
            )),
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
