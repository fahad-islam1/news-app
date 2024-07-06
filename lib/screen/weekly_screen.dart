import 'package:byahad_app/screen/weekly_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeeklyScreen extends StatefulWidget {
  const WeeklyScreen({Key? key}) : super(key: key);

  @override
  State<WeeklyScreen> createState() => _WeeklyScreenState();
}

class _WeeklyScreenState extends State<WeeklyScreen> {
  String categoryName = 'General';

  final List<String> categoryList = [
    'General'.tr,
    'Entertainment'.tr,
    'Health'.tr,
    'Sports'.tr,
    'Business'.tr,
    'Technology'.tr
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Weekly'.tr,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      categoryName = categoryList[index];
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: categoryName == categoryList[index] ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          categoryList[index],
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage('assets/news.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'title'.tr,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'date'.tr,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'play_audio'.tr,
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.add,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'build_queue'.tr,
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.download_for_offline_outlined,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'download_edition'.tr,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const Divider(color: Colors.black),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'world_this_week'.tr,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WeeklyDetailScreen(
                              image: 'assets/pics.jpg',
                              title: 'The world this week'.tr,
                              description: 'Politics'.tr
                          ),));
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'world_this_week'.tr,
                                      style: const TextStyle(color: Colors.red, fontSize: 12),
                                    ),
                                    Text('category'.tr),
                                  ],
                                ),
                                Image.asset(
                                  'assets/pics.jpg',
                                  height: 70,
                                  width: 120,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            // Row(
                            //   children: [
                            //     Text('read_time'.tr),
                            //     const Spacer(),
                            //     const Icon(Icons.volume_up_sharp),
                            //     const SizedBox(width: 5,),
                            //     const Icon(Icons.file_copy_outlined),
                            //   ],
                            // ),
                            const Divider(),
                          ],
                        ),
                      ),
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
