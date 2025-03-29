import 'package:flutter/material.dart';
import 'package:ebook_app/nation.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends  State<HomePage>{

  final List<Nation> nations = const[
    Nation(name: '蒙德',flag: 'assets/images/nations/mondstadt.webp',god:'溫迪',nationElement: '風',nationStory: ''),
    Nation(name: '璃月',flag: 'assets/images/nations/liyue.webp',god:'鍾離',nationElement: '岩',nationStory: ''),
    Nation(name: '稻妻',flag: 'assets/images/nations/inazuma.webp',god:'雷電影',nationElement: '雷',nationStory: ''),
    Nation(name: '須彌',flag: 'assets/images/nations/sumeru.webp',god:'納西妲',nationElement: '草',nationStory: ''),
    Nation(name: '楓丹',flag: 'assets/images/nations/fortain.webp',god:'無(前任:芙卡洛斯)',nationElement: '水',nationStory: ''),
    Nation(name: '納塔',flag: 'assets/images/nations/natlan.webp',god:'瑪薇卡',nationElement: '火',nationStory: ''),
  ];


  @override
  void initState(){
    super.initState();
    
  }


  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(title: const Text('Books')),
      body: ListView(children: [
        ],
      ),
    );
  }
}
