import 'package:flutter/material.dart';

class ListTileText extends StatelessWidget {
  final String title;

  const ListTileText(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // alignment: Alignment.centerLeft,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
