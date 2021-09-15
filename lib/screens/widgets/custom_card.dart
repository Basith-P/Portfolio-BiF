import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildCustomCard(String title, void Function() onTap) {
  return GestureDetector(
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.raleway(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Icon(Icons.navigate_next_rounded),
        ],
      ),
    ),
    onTap: onTap,
  );
}
