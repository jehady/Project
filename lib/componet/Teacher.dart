import 'package:e232/API/test.dart';
import 'package:e232/componet/importImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherProfile extends StatelessWidget {
  const TeacherProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final DATA dataController = Get.put(DATA());

    // // Fetch data when the widget is first built
    // dataController.login();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              child: Stack(
                children: [
                  Obx(() {
                    // Show a placeholder image until data is fetched
                    String imageUrl = dataController.userData.value?.image ??
                        'assets/images/background.jpeg';
                    return Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    );

                    // String name =
                    //     dataController.userData.value?.fullName ?? 'Hicham';
                  }),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onForcePressStart: (details) => applyBoxFit,
                              child: Text(
                                'ads',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onForcePressStart: (details) => applyBoxFit,
                              child: Text(
                                "change info",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return importImage();
                              },
                            );
                          },
                          child: Center(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/images/profile.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(273),
                      bottomRight: Radius.circular(273))),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Name: ${dataController.userData.value?.fullName}",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            Obx(() {
              if (dataController.userData.value == null) {
                return CircularProgressIndicator();
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Name: ${dataController.userData.value!.fullName}",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                );
              }
            }),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Recomended : ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Card(
                          elevation: 5,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 6,
                          left: 10,
                          child: Text(
                            'Item $index',
                            style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: 10, // Define the number of items
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Most Watched : ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Card(
                          elevation: 5,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 6,
                          left: 10,
                          child: Text(
                            'Item $index',
                            style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: 10, // Define the number of items
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.9,
              color: Colors.yellow,
              child: Center(
                child: Text("Footer"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
