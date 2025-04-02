import 'package:ebook_app/items/nation_tile.dart';
import 'package:ebook_app/nation.dart';
import 'package:ebook_app/pages/nation_detail.dart';
import 'package:flutter/material.dart';

class NationCard extends StatefulWidget {
  const NationCard({super.key, required this.nation});

  final Nation nation;

  @override
  State<NationCard> createState() => _NationCardState();
}

class _NationCardState extends State<NationCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return NationDetail(nation: widget.nation);
              },
            ),
          );
        },

        // 背景圖片
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(widget.nation.mainCity),
              fit: BoxFit.cover,
            ),
          ),

          // child: Container(
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     image: DecorationImage(
          //       image: AssetImage(widget.nation.mainCity),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(bottom: 10),
            child: Column(children: [NationTile(nation: widget.nation)]),
          ),
        ),
      ),
    );
  }
}
