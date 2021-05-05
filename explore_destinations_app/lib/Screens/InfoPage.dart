import 'package:explore_destinations_app/locations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPage extends StatelessWidget {
  final Location location;

  const InfoPage({Key key, this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: ExactAssetImage(location.path), fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(30)),
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                    stops: [0.0, 0.4],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    height: 70,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              location.loc,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Text(
                                  location.title,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("\$${location.price}",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                            Text("Per day",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.blue.withOpacity(0.7),
                          ),
                          Text("5 person", style: GoogleFonts.poppins()),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.music_note,
                            color: Colors.pink.withOpacity(0.7),
                          ),
                          Text("Music", style: GoogleFonts.poppins()),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image,
                            color: Colors.green,
                          ),
                          Text("Sights", style: GoogleFonts.poppins()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("About",
                        style: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.w500,
                            fontSize: 20)),
                    Row(
                      children: [
                        for (int i = 0; i < 4; i++)
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.orange.withOpacity(0.5),
                          ),
                        Icon(
                          Icons.star_border,
                          size: 20,
                          color: Colors.orange.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            sliver: SliverToBoxAdapter(
                child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
              style: GoogleFonts.poppins(color: Colors.black.withOpacity(0.5)),
            )),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              width: double.infinity,
              height: 70,
              color: Colors.orange.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("People List",
                          style: GoogleFonts.poppins(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.w600,
                              fontSize: 18)),
                      Row(
                        children: [
                          Text("Recommended",
                              style: GoogleFonts.poppins(
                                  fontSize: 13, color: Colors.grey)),
                          Text(" 15+ ",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w500)),
                          Text("friends",
                              style: GoogleFonts.poppins(
                                  fontSize: 13, color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text("15+",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            sliver: SliverToBoxAdapter(
              child: Text("Location",
                  style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                      fontSize: 20)),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: ExactAssetImage("assets/map.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
