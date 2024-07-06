import 'package:byahad_app/screen/home_detail_screen.dart';
import 'package:byahad_app/screen/home_top_news_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> hintText = [
    "Finance & economics",
    "Finance & economics",
    "Finance & economics",
    "Finance & economics",
    "Finance & economics",
    "Finance & economics",
    "Finance & economics",
    "Finance & economics",
    "Finance & economics",
    "Finance & economics",
  ];

  List<String> title = [
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
    'What happened to the artificial-intelligence revolution?',
  ];

  List<String> description = [
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
    "So far the technology has had almost no economic impact",
  ];

  List<String> image = [
    "https://images.pexels.com/photos/18492589/pexels-photo-18492589/free-photo-of-modern-culture-center-in-baku.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/26731546/pexels-photo-26731546/free-photo-of-kayak.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/25584126/pexels-photo-25584126/free-photo-of-a-camera-and-sunglasses-on-a-table-next-to-a-cup-of-coffee.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3508975/pexels-photo-3508975.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/1212809/pexels-photo-1212809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/18492589/pexels-photo-18492589/free-photo-of-modern-culture-center-in-baku.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/18492589/pexels-photo-18492589/free-photo-of-modern-culture-center-in-baku.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/18492589/pexels-photo-18492589/free-photo-of-modern-culture-center-in-baku.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/18492589/pexels-photo-18492589/free-photo-of-modern-culture-center-in-baku.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/18492589/pexels-photo-18492589/free-photo-of-modern-culture-center-in-baku.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  ];

  final List<String> categoryList = [
    'General',
    'Entertainment',
    'Health',
    'Sports',
    'Business',
    'Technology'
  ];

  String selectedCategory = 'General';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // shadowColor: Colors.blue,
        // backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset('assets/logo.jpg',height: 50,width: 50,),
        ),
        actions: [
          Image.asset('assets/logo.jpg',height: 120,width: 120,),
          const Spacer(),
          PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (String value) {
              setState(() {
                selectedCategory = value;
              });
            },
            itemBuilder: (BuildContext context) {
              return categoryList.map<PopupMenuItem<String>>((String category) {
                return PopupMenuItem<String>(
                  value: category,
                  child: Text(category.tr),
                );
              }).toList();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    selectedCategory.tr,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/category_icon.png',
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'The world in brief'.tr,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 150, // Adjusted height to fit the horizontal ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TopHomeDetailScreen(
                              hintText: 'Enter date',
                              color: Colors.amber,
                              title: 'Enter file',
                              description: 'Enter description',
                          ),));
                        },
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Enter date".tr),
                              Text('Enter title'.tr),
                              Text("Enter description".tr),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Top stories'.tr,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true, // Important to make the ListView take only necessary space
                physics: const NeverScrollableScrollPhysics(), // Prevents nested scrolling
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeDetailScreen(
                                hintText: hintText[index],
                                image: image[index],
                                title: title[index],
                                description: description[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 200,
                          width: double.infinity, // Adjusted width to take full available width
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(image[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        hintText[index].tr,
                        style: const TextStyle(color: Colors.red),
                      ),
                      Text(
                        title[index].tr,
                        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                      ),
                      Text(description[index].tr),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('7 min read'.tr),
                          const Icon(Icons.file_copy),
                        ],
                      ),
                      const Divider(),
                      Text(
                        'Leaders'.tr,
                        style: const TextStyle(color: Colors.red),
                      ),
                      Text(
                        "Big tech's capex splurge may be irrationally exuberant".tr,
                      ),
                      Row(
                        children: [
                          Text('4 min read'.tr),
                          const Spacer(),
                          // const Icon(Icons.volume_up_sharp),
                          const Icon(Icons.file_copy),
                        ],
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
