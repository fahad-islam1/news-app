import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  // NewsViewModel newsViewModel = NewsViewModel();

  String categoryName = 'General';

  final List<String> categoryList = [
    'General',
    'Entertainment',
    'Health',
    'Sports',
    'Business',
    'Technology'
  ];

  @override
  Widget build(BuildContext context) {

    // final format = DateFormat('MMMM dd, yyyy');
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      categoryName = categoryList[index];
                      setState(() {

                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            color: categoryName == categoryList[index] ?Colors.blue : Colors.grey,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Text( categoryList[index].toString(),style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w500),)),
                      ),
                    ),
                  );
                },),
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
