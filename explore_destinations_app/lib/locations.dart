import 'package:flutter/material.dart';

class Location {
  final String title;
  final String loc;
  final String path;
  final String description;
  final int stars;
  final String visited;

  Location(
      {this.title,
      this.loc,
      this.path,
      this.description,
      this.stars,
      this.visited});
}

List<Location> locatii = [
  Location(
    title: "Indonesia",
    loc: "Green Park",
    path: "assets/indonesia.jpeg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac ullamcorper leo. Aenean a nunc id orci hendrerit ultricies et volutpat velit. Nam ut nisl dui. Phasellus sit amet arcu id tortor tempus elementum eget nec lacus. Mauris ultricies, mi ultrices tempus pretium, neque felis venenatis ex, id vehicula erat nunc eget quam.",
    stars: 4,
    visited: "15+",
  ),
  Location(
    title: "Islands",
    loc: "Coral Reef",
    path: "assets/islands.jpeg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac ullamcorper leo. Aenean a nunc id orci hendrerit ultricies et volutpat velit. Nam ut nisl dui. Phasellus sit amet arcu id tortor tempus elementum eget nec lacus. Mauris ultricies, mi ultrices tempus pretium, neque felis venenatis ex, id vehicula erat nunc eget quam.",
    stars: 3,
    visited: "15+",
  ),
  Location(
    title: "Indonesia",
    loc: "Danubius Hotel",
    path: "assets/danubius-hotel.jpeg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac ullamcorper leo. Aenean a nunc id orci hendrerit ultricies et volutpat velit. Nam ut nisl dui. Phasellus sit amet arcu id tortor tempus elementum eget nec lacus. Mauris ultricies, mi ultrices tempus pretium, neque felis venenatis ex, id vehicula erat nunc eget quam.",
    stars: 3,
    visited: "15+",
  ),
];
