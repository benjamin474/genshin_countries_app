import 'package:ebook_app/nation.dart';
import 'package:flutter/material.dart';

class NationDetail extends StatefulWidget {
  const NationDetail ({super.key, required this.nation});

  final Nation nation;

  @override
  State<NationDetail> createState() => _NationDetailState();
}

class _NationDetailState extends State<NationDetail> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context){
    return MouseRegion(
      onEnter: (_){
        setState(() => _isHovering = true);
      },
      onExit: (_){
        setState(()=>_isHovering = false);
      },
      child: AnimatedContainer(
        duration: const Duration()
      )
    );
  }
  
}