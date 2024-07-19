
import 'package:advance_flutter_ch1/Photo%20Gallery/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    OpenHideFolderProvider openHideFolderProvider =
    Provider.of<OpenHideFolderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gallery",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PopupMenuButton<SampleItem>(
                  itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.itemOne,
                      child: Text('Select'),
                    ),
                    PopupMenuItem<SampleItem>(
                      onTap: () {
                        openHideFolderProvider.Navset(context);
                      },
                      value: SampleItem.itemTwo,
                      child: Text('Hide Folder'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.itemThree,
                      child: Text('Move'),
                    ),
                  ],
                ),
              ],
            ),
            Wrap(
              children: [
                ...List.generate(ListOfImage.length,(index) => Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.blue,
                    image: DecorationImage(image: AssetImage(ListOfImage[index],),fit: BoxFit.cover),
        
                  ),
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}

List ListOfImage = [
  "assets/images/breackup.jpg",
  "assets/images/change.jpg",
  "assets/images/creativitiy.jpg",
  "assets/images/Discipline.webp",
  "assets/images/divorce_time.jpg",
  "assets/images/education.jpg",
  "assets/images/Enterpreneur.webp",
  "assets/images/family.jpg",
  "assets/images/focus.jpg",
  "assets/images/freedome.jpg",
  "assets/images/freinds.jpg",
  "assets/images/goal.jpg",
  "assets/images/happyness.jpg",
  "assets/images/health.jpg",
];
List HideImage = [
  "assets/images/hope.jpg",
  "assets/images/kind.jpeg",
  "assets/images/leader.jpg",
  "assets/images/love.jpg",
  "assets/images/marriage.webp",
  "assets/images/money.webp",
  "assets/images/Positivity.jpeg",
  "assets/images/respect.jpg",
  "assets/images/sad.jpg",
  "assets/images/sports.jpg",
];

enum SampleItem { itemOne, itemTwo, itemThree }