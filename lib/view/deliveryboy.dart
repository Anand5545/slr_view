import 'package:flutter/material.dart';

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "i am,\nDelivery Boy",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(170.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 15.0),
                          suffixIcon: Icon(Icons.search),
                        ),
                        onSubmitted: (String value) {},
                      ),
                    ),
                  ),
                  TabBar(
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Food Delivery'),
                      Tab(text: 'Home Products'),
                      Tab(text: 'Paper'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: <Widget>[
                  TaskItem(
                    title: 'Pizza delivery',
                    distance: '1.2km',
                    time: '13 min',
                    description:
                        'Deliver a Pizza order to a near street behind Zerag colony, home no 34.',
                    imageUrl:
                        'https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.6666666666666667xw:1xh;center,top&resize=1200:*', // Replace with actual image URL
                  ),
                  TaskItem(
                    title: 'Tina Sandalz',
                    distance: '2.2km',
                    time: '23 min',
                    description:
                        'Deliver a Sandal to Tina near gulshan colony, w1 home no 21.',
                    imageUrl:
                        'https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.6666666666666667xw:1xh;center,top&resize=1200:*', // Replace with actual image URL
                  ),
                ],
              ),
              Center(
                child: Text('History Tab Content'),
              ),
              Center(
                child: Text('Home Products Tab Content'),
              ),
              Center(
                child: Text('Paper Tab Content'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String title;
  final String distance;
  final String time;
  final String description;
  final String imageUrl;

  TaskItem({
    required this.title,
    required this.distance,
    required this.time,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(70.0),
                child: Image.network(imageUrl)),
            title: Text(title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(distance),
                Text(time),
                Text(description),
                Container(
                    child: Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text("Drop")),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.arrow_right_alt),
                          SizedBox(width: 8),
                        ],
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
