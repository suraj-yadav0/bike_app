import 'package:bike_app/bike_details.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<String> category = [
    'Adventure',
    'Cruiser',
    'SportsBike',
    'Meteore',
    'Royal',
    'Sports',
    'Budget'
  ];
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 36),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'assets/Ellipse.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Abhi Tiwari",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search Bike',
                      //   icon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 65,
                  width: double.infinity,
                  child: Expanded(
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: category.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                   border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: Text(
                                                                      category[index].toString(),
                                                                    ),
                                    ))),
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Items",
                      style: TextStyle(fontSize: 21),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 225,
                  width: double.infinity,
                  child: Expanded(
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: category.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BikeDetails())),
                              child: Container(
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(16)),
                                child: SingleChildScrollView(
                                  child: Container(
                                      height: 225,
                                      width: 143,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Column(
                                        children: [
                                          Image.asset('assets/meteor 1.png'),
                                          const Text(
                                            "Meteor ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          const Text(
                                            "Royal Enfield ",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          const Text("699/ per day "),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Recently",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Viewed",
                      style: TextStyle(fontSize: 21),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 342,
                  height: 300,
                  child: Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(16)),
                              child: ListTile(
                                leading: Container(
                                    width: 45,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(12)),
                                    child: Image.network(
                                        'https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/01/PNGPIX-COM-BMW-R1200R-Motorcycle-Bike-PNG-Image.png?fit=1763%2C1475&ssl=1')),
                                title: const Text(
                                  'Hayabusa',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: const Text("2000 / per day"),
                                trailing: Container(
                                  height: 22,
                                  width: 70,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    'Available',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Maps"),
        
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
