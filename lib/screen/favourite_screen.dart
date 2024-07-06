import 'package:byahad_app/screen/favourite_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text("Favourite".tr),
        centerTitle: false,
        backgroundColor: Colors.white,
        actions: [
          Image.asset('assets/logo.jpg'),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: 30,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FavouriteDetailScreen(
                    image: 'assets/pics.jpg',
                    title: 'Asia'.tr,
                    description: "Takashima Ryosuke is \n Japan's youngest ever mayor".tr
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
                            'Asia'.tr,
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                          Text("Takashima Ryosuke is \n Japan's youngest ever mayor".tr),
                        ],
                      ),
                      Image.asset(
                        'assets/pics.jpg',
                        height: 70,
                        width: 111,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                   Row(
                    children: [
                      Text('Jul 3rd 2024'.tr),
                      Text(' | '),
                      Text('5 min read'.tr),
                      Spacer(),
                      Icon(Icons.favorite,color: Colors.red,),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
