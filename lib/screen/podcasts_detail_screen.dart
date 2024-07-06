import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PodcastsDetailScreen extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const PodcastsDetailScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    // Example list of related news with URLs
    final List<Map<String, String>> relatedNews = [
      {
        'title': 'Related News 1',
        'description': 'Description of related news 1',
        'url': 'https://example.com/news1',
      },
      {
        'title': 'Related News 2',
        'description': 'Description of related news 2',
        'url': 'https://example.com/news2',
      },
      {
        'title': 'Related News 3',
        'description': 'Description of related news 3',
        'url': 'https://example.com/news3',
      },
    ];

    // Function to launch URL
    Future<void> launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height * 0.45,
            child: ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(CupertinoIcons.left_chevron),
              ),
            ),
          ),
          Container(
            height: height * 0.6,
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            margin: EdgeInsets.only(top: height * 0.4),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: ListView(
              children: [
                SizedBox(height: height * 0.02),
                Text(
                  title.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: height * 0.04),
                Text(
                  description.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: height * 0.13),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'JOIN US ON SOCIAL MEDIA'.tr,
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'For even more \n exclusive content!'.tr,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 18),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 18,
                              backgroundImage: AssetImage('assets/facebook.png'),
                              foregroundColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 18,
                              backgroundImage: AssetImage('assets/instagram.jpeg'),
                              foregroundColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage('assets/twitter.jpeg'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                const Divider(),
                Text(
                  'Related News'.tr,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: relatedNews.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      title: Text(relatedNews[index]['title']!.tr),
                      subtitle: Text(relatedNews[index]['description']!.tr),
                      onTap: () {
                        launchURL(relatedNews[index]['url']!);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
