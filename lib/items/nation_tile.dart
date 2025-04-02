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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4), // 半透明背景
            border: Border.all(color: Colors.white54, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            nation.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Image(image: AssetImage(nation.flag)),
      ],
    );
  }
}
