import 'package:flutter/material.dart';

class ArtExhibitonStartPage extends StatelessWidget {
  const ArtExhibitonStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/03/02/11/51/florence-2111060_960_720.jpg",
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 72,
            bottom: 48,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Arexs.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Text(
                  "Discover amazing art around the world",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Feel the experience of seeing art from around the world in the palm of your"
                  "hard without having to come directly to the museum",
                ),
                Container(
                  height: 64,
                  decoration: BoxDecoration(color: Colors.orangeAccent),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 8,
                        right: 0,
                        bottom: 0,
                        top: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 8,
                        bottom: 8,
                        top: 0,
                        child: Container(
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "Get Started",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
