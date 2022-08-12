import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkyrentStartPage extends StatelessWidget {
  const SkyrentStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skyrent",
                    style: GoogleFonts.federo(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "APARTMENTS",
                    style: GoogleFonts.federo(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "FOR RENT IN NYC",
                    style: GoogleFonts.federo(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Search for luxury apartments",
                    style: GoogleFonts.federo(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'in NYC according to your criteria',
                    style: GoogleFonts.federo(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Text("Let's find",
                      style: GoogleFonts.federo(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,

                      ),
                    ),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}