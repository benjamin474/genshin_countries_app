import 'package:flutter/material.dart';
import 'package:ebook_app/nation.dart';

class NationTile extends StatelessWidget {
  final Nation nation;

  const NationTile({super.key, required this.nation});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage(nation.nationElement)),
        Text(
          nation.name,
          style: TextStyle(color: Colors.white),
        ),
        Image(image: AssetImage(nation.flag)),
      ],
    );
  }
}
