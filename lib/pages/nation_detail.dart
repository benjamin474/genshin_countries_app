import 'package:ebook_app/nation.dart';
import 'package:ebook_app/items/nation_data.dart';
import 'package:ebook_app/pages/subpages/story_page.dart';
import 'package:flutter/material.dart';

class NationDetail extends StatefulWidget {
  const NationDetail({super.key, required this.nation});

  final Nation nation;

  @override
  State<NationDetail> createState() => _NationDetailState();
}

class _NationDetailState extends State<NationDetail> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.nation.name)),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Image.asset(widget.nation.flag),
            Container(
              color: Colors.white,
              child: TabBar(
                tabs: const [
                  Tab(text: "國家故事"),
                  Tab(text: "地區"),
                  Tab(text: "歷代神明"),
                  Tab(text: "節日"),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.amber,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // 故事
                  StoryPage(nation: widget.nation),

                // 節日
                  Container(
                    color: Colors.lightBlue,
                    child: Text('Hello world'),
                  ),
                // 故事
                  Container(
                    color: Colors.lightBlue,
                    child: Text('Hello world2'),
                  ),
                
                 Container(
                    color: Colors.lightBlue,
                    child: Text('Hello world3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
