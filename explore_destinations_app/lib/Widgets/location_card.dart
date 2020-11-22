import 'package:explore_destinations_app/Screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../locations.dart';

class LocationCard extends StatelessWidget {
  final Location locatie;

  const LocationCard({Key key, this.locatie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => InfoPage(locatie: locatie))),
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 20, right: 10, left: 10),
        height: 100,
        width: 160,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 0.1,
              offset: Offset(0.0, 5),
            ),
          ],
          image: DecorationImage(
            image: ExactAssetImage(locatie.path),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.7), Colors.transparent],
              stops: [0.0, 0.4],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                locatie.title,
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
