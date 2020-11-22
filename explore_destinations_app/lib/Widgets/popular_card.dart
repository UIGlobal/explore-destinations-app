import 'package:explore_destinations_app/Screens/screens.dart';
import 'package:explore_destinations_app/locations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCard extends StatelessWidget {
  final Location locatie;

  PopularCard({this.locatie});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => InfoPage(locatie: locatie))),
      child: Container(
        height: 250,
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(locatie.path), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 0.1,
                    offset: Offset(0.0, 5),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(locatie.loc,
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.orange,
                          size: 14,
                        ),
                        Text(locatie.title,
                            style: GoogleFonts.poppins(color: Colors.orange)),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black.withOpacity(0.7)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$",
                          style: GoogleFonts.poppins(fontSize: 21),
                        ),
                        Text("115",
                            style: GoogleFonts.poppins(
                                fontSize: 21, fontWeight: FontWeight.w500)),
                        Text(
                          "/ Night",
                          style: GoogleFonts.poppins(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
