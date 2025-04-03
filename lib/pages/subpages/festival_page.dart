import 'package:ebook_app/nation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FestivalPage extends StatelessWidget {
  const FestivalPage({super.key, required this.nation});

  final Nation nation;

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw '無法打開 $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final festivals = nation.festivals;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(nation.mainCity),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: festivals.length,
        itemBuilder: (context, index) {
          final festival = festivals[index];
          final festivalName = festival.keys.first;
          final festivalUrl = festival.values.first;

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () => _launchURL(festivalUrl),
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      festivalName,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      '(點擊查看詳情)',
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16.0),
      ),
    );
  }

}
