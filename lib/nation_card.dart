import 'package:ebook_app/nation.dart';
import 'package:flutter/material.dart';

class NationCard extends StatefulWidget {
  const NationCard({super.key, required this.nation});

  final Nation nation;

  @override
  State<NationCard> createState() => _NationCardState();
}

class _NationCardState extends State<NationCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        // color: _isHovering ? Colors.yellow : Colors.lightBlue,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(bottom: 10),
        height: _isHovering ? 220 : 200,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.nation.mainCity),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Text(widget.nation.name, style: TextStyle(color: Colors.white)),
            Image(image: AssetImage(widget.nation.flag)),
          ],
        ),
      ),
    );
  }
}
