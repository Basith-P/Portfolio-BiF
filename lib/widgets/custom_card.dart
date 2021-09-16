import 'package:flutter/material.dart';

Widget buildCustomCard(BuildContext context, String title, List<Widget> children) {
  return GestureDetector(
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(.1),
        //     blurRadius: 10,
        //   )
        // ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          ),
          childrenPadding: const EdgeInsets.all(15).copyWith(top: 0),
          children: children,
        ),
      ),
    ),
  );
}
