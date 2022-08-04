import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/global_utils/global_text_util.dart';

class ClassedLessonPage extends StatefulWidget {
  const ClassedLessonPage({Key? key}) : super(key: key);

  @override
  State<ClassedLessonPage> createState() => _ClassedLessonPageState();
}

class _ClassedLessonPageState extends State<ClassedLessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 100,
            color: Color.fromRGBO(206, 203, 191, 1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SizedBox(
              height: 56,
              child: Row(
                children: [
                  Container(
                    width: 72,
                    margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                    color: Color.fromRGBO(206, 203, 191, 1),
                    child: Center(
                      child: IconButton(
                        icon: Icon(
                          Icons.clear,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color.fromRGBO(206, 203, 191, 1),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_left,
                              ),
                            ),
                            Text(
                              "Lesson",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 72,
                    margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                    color: Color.fromRGBO(206, 203, 191, 1),
                    child: Center(
                      child: IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 72,
                  margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                  color: Color.fromRGBO(206, 203, 191, 1),
                ),
                Expanded(
                  child: Container(
                    width: 72,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    color: Color.fromRGBO(206, 203, 191, 1),
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: 10,
                      separatorBuilder: (context, index) => Divider(
                        height: 0,
                        color: Colors.black,
                        thickness: 1.5,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 320,
                          color: Colors.blue,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Row(
                                children: [
                                  Expanded(child: Container()),
                                  Container(
                                    width: 72,
                                    margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                    color: Color.fromRGBO(206, 203, 191, 1),
                                    child: Center(
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.more_horiz,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  )
                                ],
                              )),
                              Divider(
                                color: Colors.black,
                                thickness: 1.5,
                                height: 0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Meet your instructor",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text("${loremIpsum.substring(0, 200)}")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
