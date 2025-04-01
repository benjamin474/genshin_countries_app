import 'package:ebook_app/nation.dart';
import 'package:ebook_app/items/nation_data.dart';
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
                  Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Card(
                            color: Colors.white,
                            elevation: 4,
                            margin: const EdgeInsets.only(bottom: 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '國家特色',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text('widget.nation.nationStory'),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white,
                            elevation: 4,
                            margin: const EdgeInsets.only(bottom: 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '現任神明',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(widget.nation.god),
                                ],
                              ),
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),


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
