import 'package:ebook_app/items/nation_card.dart';
import 'package:ebook_app/pages/nation_detail.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/items/nation_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(title: const Text('原神六國導覽', textAlign: TextAlign.center)),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/elements/genshin.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(100),

          itemCount: nations.length,
          itemBuilder: (context, index) {
            return Card(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return NationDetail(nation: nations[index]);
                      },
                    ),
                  );
                },
                child: NationCard(nation: nations[index]),
              ),
            );
          },
          // separatorBuilder: (context, index) {
          //   return const Divider();
          // },
        ),
      ),
    );
  }
}
