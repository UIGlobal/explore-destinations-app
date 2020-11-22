import 'package:explore_destinations_app/Widgets/all_widgets.dart';
import 'package:explore_destinations_app/locations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 28,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: GoogleFonts.poppins(
                      fontSize: 28,
                      color: Colors.orange,
                      fontWeight: FontWeight.w400),
                ),
                Text("Top Destinations",
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 20),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    LocationCard(locatie: locatii[index]),
                itemCount: 3,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular hotes",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "See more",
                  style: GoogleFonts.poppins(
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                )
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => PopularCard(locatie: locatii[index]),
              childCount: locatii.length,
            ),
          ),
        ),
      ],
    );
  }
}
