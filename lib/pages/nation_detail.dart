import 'package:ebook_app/nation.dart';
import 'package:ebook_app/pages/subpages/area_page.dart';
import 'package:ebook_app/pages/subpages/festival_page.dart';
import 'package:ebook_app/pages/subpages/story_page.dart';
import 'package:flutter/material.dart';

class NationDetail extends StatefulWidget {
  const NationDetail({super.key, required this.nation});

  final Nation nation;

  @override
  State<NationDetail> createState() => _NationDetailState();
}

class _NationDetailState extends State<NationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.nation.name)),
      body:  DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Image.asset(widget.nation.flag),
            Container(
              color: Colors.grey[700],
              child: TabBar(
                tabs: [
                  Tab(text: "關於${widget.nation.name}"),
                  Tab(text: "地區"),
                  Tab(text: "節日"),
                ],
                labelColor: Colors.yellow[50],
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.yellow,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // 故事
                  StoryPage(nation: widget.nation),
                  // 地區
                  AreaPage(nation: widget.nation),
                  // 節日
                  FestivalPage(nation: widget.nation),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
