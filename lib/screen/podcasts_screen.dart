import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:byahad_app/screen/podcasts_detail_screen.dart';

class PodcastsScreen extends StatefulWidget {
  const PodcastsScreen({Key? key}) : super(key: key);

  @override
  State<PodcastsScreen> createState() => _PodcastsScreenState();
}

class _PodcastsScreenState extends State<PodcastsScreen> {
  List<String> titles = [
    'Babbage',
    'Babbage',
    'Babbage',
    'Babbage',
    'Babbage',
    'Babbage',
    'Babbage',
    'Babbage',
  ];

  List<String> descriptions = [
    'Learn about the latest innovations and discoveries in science and technology',
    'Learn about the latest innovations and discoveries in science and technology',
    'Learn about the latest innovations and discoveries in science and technology',
    'Learn about the latest innovations and discoveries in science and technology',
    'Learn about the latest innovations and discoveries in science and technology',
    'Learn about the latest innovations and discoveries in science and technology',
    'Learn about the latest innovations and discoveries in science and technology',
    'Learn about the latest innovations and discoveries in science and technology',
  ];

  List<String> images = [
    'assets/mountain.jpg',
    'assets/mountain.jpg',
    'assets/mountain.jpg',
    'assets/mountain.jpg',
    'assets/mountain.jpg',
    'assets/mountain.jpg',
    'assets/mountain.jpg',
    'assets/mountain.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Podcasts'.tr, style: TextStyle(color: Colors.black)),
        centerTitle: false,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.search_rounded, color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade200,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('TRAILER'.tr),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Boom!'.tr,
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Image.asset('assets/pics.jpg', height: 70),
                    ],
                  ),
                  Text(
                    'Our new series finds out how the generation born in the era of the bomb blew up American politics. Launching July 2024.'.tr,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Latest episodes'.tr,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PodcastsDetailScreen(
                        image: 'assets/pics.jpg',
                        title: 'The Intelligence',
                        description: 'Degree programme: stopping heat deaths'
                    ),));
                  },
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/pics.jpg', height: 70),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'The Intelligence'.tr,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('Degree programme: stopping heat deaths'.tr,maxLines: 2, overflow: TextOverflow.ellipsis,),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            Text(
              'Daily and weekly'.tr,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 950, // Adjust height as needed
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75, // Adjust aspect ratio as needed
                ),
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PodcastsDetailScreen(
                            image: images[index],
                            title: titles[index],
                            description: descriptions[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Center(
                              child: Text('Item $index'.tr),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            titles[index].tr,
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            descriptions[index].tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


