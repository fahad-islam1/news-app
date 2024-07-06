// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:get/get.dart';
//
// class HomeDetailScreen extends StatefulWidget {
//   final String hintText, image, title, description;
//
//   HomeDetailScreen({
//     Key? key,
//     required this.hintText,
//     required this.image,
//     required this.title,
//     required this.description,
//   }) : super(key: key);
//
//   @override
//   State<HomeDetailScreen> createState() => _HomeDetailScreenState();
// }
//
// class _HomeDetailScreenState extends State<HomeDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             height: height * 0.45,
//             child: ClipRRect(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(30),
//                 topRight: Radius.circular(30),
//               ),
//               child: Image.network(widget.image,width: double.infinity,),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 40.0,left: 30),
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               child: IconButton(onPressed: (){
//                 Navigator.pop(context);
//               },icon: Icon(CupertinoIcons.left_chevron),),
//             ),
//           ),
//           Container(
//             height: height * 0.6,
//             padding: EdgeInsets.only(top: 20, right: 20, left: 20),
//             margin: EdgeInsets.only(top: height * 0.4),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(30),
//                 topLeft: Radius.circular(30),
//               ),
//             ),
//             child: ListView(
//               children: [
//                 SizedBox(height: height * 0.02),
//                 Text(
//                   widget.title.tr,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
//                 ),
//                 SizedBox(height: height * 0.04),
//                 Text(
//                   widget.description.tr,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
//                 ),
//                 SizedBox(height: height * 0.13),
//                 Container(
//                   height: 200,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.black87,
//                     borderRadius: BorderRadius.circular(8)
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         Text('JOIN US ON SOCIAL MEDIA'.tr,style: TextStyle(color: Colors.white, fontSize: 18),),
//                         SizedBox(height: 8,),
//                         Text('For even more \n exclusive content!'.tr,textAlign: TextAlign.center,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),),
//                         SizedBox(height: 18,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CircleAvatar(
//                               backgroundColor: Colors.black,
//                               radius: 18,
//                               backgroundImage: AssetImage('assets/facebook.png'),foregroundColor: Colors.white,),
//                             SizedBox(width: 8,),
//                             CircleAvatar(
//                               backgroundColor: Colors.black,
//                                 radius: 18,
//                                 backgroundImage: AssetImage('assets/instagram.jpeg'),foregroundColor: Colors.white,),
//                             SizedBox(width: 8,),
//                             CircleAvatar(
//                                 radius: 18,
//                                 backgroundImage: AssetImage('assets/twitter.jpeg')),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: height * 0.05),
//
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDetailScreen extends StatefulWidget {
  final String hintText, image, title, description;

  HomeDetailScreen({
    Key? key,
    required this.hintText,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<HomeDetailScreen> createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height * 0.45,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              child: Image.network(
                widget.image,
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
                icon: Icon(CupertinoIcons.left_chevron),
              ),
            ),
          ),
          Container(
            height: height * 0.6,
            padding: EdgeInsets.only(top: 20, right: 20, left: 20),
            margin: EdgeInsets.only(top: height * 0.4),
            decoration: BoxDecoration(
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
                  widget.title.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: height * 0.04),
                Text(
                  widget.description.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
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
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'For even more \n exclusive content!'.tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 18),
                        Row(
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
                // News Section
                Text(
                  'LATEST NEWS'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: height * 0.02),
                NewsItem(
                  title: 'News Title 1'.tr,
                  description: 'Description of the news 1'.tr,
                  url: 'https://www.example.com/news1',
                ),
                NewsItem(
                  title: 'News Title 2'.tr,
                  description: 'Description of the news 2'.tr,
                  url: 'https://www.example.com/news2',
                ),
                NewsItem(
                  title: 'News Title 3'.tr,
                  description: 'Description of the news 3'.tr,
                  url: 'https://www.example.com/news3',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  NewsItem({
    required this.title,
    required this.description,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(description),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            _launchURL(url);
          },
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
