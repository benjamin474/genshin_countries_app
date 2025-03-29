import 'package:flutter/material.dart';
import 'package:ebook_app/nation.dart';

class NationTile extends StatelessWidget{

  final Nation nation;

  const NationTile({super.key, required this.nation});

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage(nation.flag)),
        Text(nation.name),
        Text('Element:'),
        Image(image: AssetImage(nation.nationElement)),
        Text('God'),
        Image(image: AssetImage(nation.god)),
        Text('Story'),
        Image(image: AssetImage(nation.nationStory)),
      ],
    )
  }
}