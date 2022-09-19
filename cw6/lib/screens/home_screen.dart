import 'package:flutter/material.dart';

import '../models/Bulding.dart';
import 'building_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var buildings = [
    Building(
      name: 'أبراج الكويت',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
    ),
    Building(
      name: 'برج التحرير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    ),
    Building(
      name: 'المسجد الكبير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(' معالم الكويت', style: TextStyle(fontSize: 30)),
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodScreen(
                      building: buildings[index],
                    ),
                  ),
                );
              }, //onTap

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    buildings[index].imgUrl,
                    width: 90,
                    height: 90,
                  ),
                  Container(
                    color: Color.fromARGB(255, 22, 97, 118).withOpacity(0.1),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      buildings[index].name,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
