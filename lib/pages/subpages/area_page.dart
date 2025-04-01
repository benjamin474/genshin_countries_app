import 'package:ebook_app/nation.dart';
import 'package:flutter/material.dart';

class AreaPage extends StatelessWidget {
  const AreaPage({super.key, required this.nation});

  final Nation nation;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
      ),
      children: <Widget>[Image.network('', fit: BoxFit.cover)],
    );
  }
}
