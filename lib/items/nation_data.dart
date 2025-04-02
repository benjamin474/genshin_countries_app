import 'package:ebook_app/nation.dart';

const List<Nation> nations = [
  Nation(
    name: '蒙德',
    flag: 'assets/images/nations/mondstadt.webp',
    god: '巴巴托斯',
    nationElement: 'assets/images/elements/anemo.webp',
    mainCity: 'assets/images/main_city/mondstadt.webp',
    areaImages: [
      'assets/images/area/mon/ming.webp',
      'assets/images/area/mon/feng.webp',
      'assets/images/area/mon/drei.webp',
      'assets/images/area/mon/cang.webp',
      'assets/images/area/mon/long.webp',
    ],
    areaNames: ['明冠山地', '風嘯山坡', '墜星山谷', '蒼風高地', '龍脊雪山'],
    nationStory:
        "2600年前，蒙德由烈風高塔之王迭卡拉庇安與北風狼王安德留斯統治，最終由風神巴巴托斯帶領人民推翻暴政，使蒙德成為自由之邦。千年後，貴族腐敗，巴巴托斯與溫妮莎領導革命，建立西風騎士團。五百年前，黑龍杜林襲擊蒙德，特瓦林擊敗杜林卻被其毒血感染。半年前，團長法爾伽遠征，蒙德城遭「風魔」龍攻擊，原神故事由此展開。",
    festivals: [
      {
        "羽球節":
            "https://bbs.mihoyo.com/ys/obc/content/390/detail?bbs_presentation_style=no_header&visit_device=pc",
      },
      {"風花節": "https://genshin.hoyoverse.com/zh-tw/news/detail/105494"},
      {
        "佳釀節":
            "https://wiki.biligame.com/ys/%E5%BD%92%E9%A3%8E%E4%BD%B3%E9%85%BF%E8%8A%82",
      },
    ],
  ),

  Nation(
    name: '璃月',
    flag: 'assets/images/nations/liyue.webp',
    god: '摩拉克斯',
    nationElement: 'assets/images/elements/geo.webp',
    mainCity: 'assets/images/main_city/liyue.webp',
    areaImages: [
      'assets/images/area/liy/bi.webp',
      'assets/images/area/liy/min.webp',
      'assets/images/area/liy/quong.webp',
      'assets/images/area/liy/li.webp',
      'assets/images/area/liy/yun.webp',
    ],
    areaNames: ['碧水原', '珉林', '瓊璣野', '璃沙郊', '雲來海'],
    nationStory:
        "璃月是提瓦特歷史最悠久的國家，3700年前由摩拉克斯與仙人簽訂契約建立。魔神戰爭期間，歸終戰死，摩拉克斯帶領人民南遷至璃月港，並擊敗眾多魔神，成為岩神。戰後，妖邪橫行，摩拉克斯召喚夜叉鎮壓，但多數夜叉最終消逝。現今璃月由七星治理，摩拉克斯每年於七星請仙典儀降臨，指引璃月發展方向。",
    festivals: [
      {'海燈節': "https://xin.18183.com/wiki/4454082.html"},
    ],
  ),
  Nation(
    name: '稻妻',
    flag: 'assets/images/nations/inazuma.webp',
    god: '巴爾澤布',
    nationElement: 'assets/images/elements/electro.webp',
    mainCity: 'assets/images/main_city/inazuma.webp',
    areaImages: [],
    areaNames: [],
    nationStory:
        "稻妻由雙生魔神雷電真與雷電影建立，真負責政務，影擔任影武者。數百年前雷電真隕落，雷電影繼承雷神之位，推行「鎖國令」與「眼狩令」以維持永恆。旅行者與八重神子說服她改變理念，最終解除鎖國令，並擊敗人偶雷電將軍以確立新的管理方式。稻妻的鶴觀島與淵下宮曾誕生文明，但皆因災變消亡，島民或融入稻妻，或在旅行者幫助下獲得解放。",
    festivals: [
      {'三川花祭': ""},
    ],
  ),
  Nation(
    name: '須彌',
    flag: 'assets/images/nations/sumeru.webp',
    god: '布耶爾',
    nationElement: 'assets/images/elements/dendro.webp',
    mainCity: 'assets/images/main_city/sumeru.webp',
    areaImages: [],
    areaNames: [],
    nationStory:
        "須彌過去由大慈樹王、赤王與花神共同統治，花神逝世後，赤王陷入瘋狂並追求禁忌知識，最終導致沙漠生態崩壞，他犧牲自己封印污染。大慈樹王創造雨林，並建立教令院管理須彌。坎瑞亞災變後，她創造分身納西妲，自己則因污染而消逝。五百年後，教令院賢者試圖以虛空系統創造新神，卻被旅行者與納西妲阻止。納西妲最終重組教令院，並以神之心淨化禁忌知識，使世界徹底遺忘大慈樹王，唯獨旅行者記得她的存在。",
    festivals: [
      {'花神誕祭': ""},
    ],
  ),
  Nation(
    name: '楓丹',
    flag: 'assets/images/nations/fontaine.webp',
    god: '芙卡洛斯',
    nationElement: 'assets/images/elements/hydro.webp',
    mainCity: 'assets/images/main_city/fontaine.webp',
    areaImages: [],
    areaNames: [],
    nationStory:
        "遠古時期，統治提瓦特的「天理」降下洪水摧毀楓丹文明，並創造厄歌莉婭接管原始胎海。厄歌莉婭試圖幫助純水精靈化為人類，觸怒天理，被囚禁於胎海。數千年後，雷穆斯王建立雷穆利亞，試圖透過魔石改造國民，但王國最終因負面情感影響福波斯而滅亡。其後，厄歌莉婭重建秩序，繼任水神芙卡洛斯暗中積蓄力量，並在災難前將神力交給新水龍王那維萊特，使其守護楓丹。災難過後，芙寧娜隱退，由那維萊特接管楓丹事務。",
    festivals: [
      {'電影節': ""},
    ],
  ),
  Nation(
    name: '納塔',
    flag: 'assets/images/nations/natlan.webp',
    god: '赫布里穆',
    nationElement: 'assets/images/elements/pyro.webp',
    mainCity: 'assets/images/main_city/natlan.webp',
    areaImages: [],
    areaNames: [],
    nationStory:
        "納塔的遠古時期曾由強大的龍族統治，因此未有倖存的魔神。500年前，火神希巴拉克向天空若娜瓦借力，制定納塔的規則，團結納塔人，並集結六位英雄，為預防500年後的毀滅之時奠定基礎。六大部落——回聲之子、流泉之眾、懸木人、花羽會、沃陸之邦與煙迷主，共同掌管納塔各地。其後，赤曈少年繼任火神，並確立了以「歸火聖夜巡禮」選拔新火神的傳統。500年前，懸木人部族的瑪維卡贏得聖夜巡禮成為火神，為對抗自深淵延續至今的災難，她選擇提前回歸聖火，直至現今再度重生。",
    festivals: [
      {'歸火聖夜巡禮': ""},
    ],
  ),
];
