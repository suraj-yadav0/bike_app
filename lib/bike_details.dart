import 'package:bike_app/checkout_screen.dart';
import 'package:flutter/material.dart';

class BikeDetails extends StatefulWidget {
  const BikeDetails({super.key});

  @override
  State<BikeDetails> createState() => _BikeDetailsState();
}

class _BikeDetailsState extends State<BikeDetails> {
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                    children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const BackButton(),
                  Container(
                    width: 274,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Center(
                      child: Text(
                        'Bike Details',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Indian',
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          'Scout Bobber',
                          style:
                              TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 63,
                          width: 136,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(children: [
                              Text(
                                'Category',
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              Text(
                                'Cruiser',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 63,
                          width: 136,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(children: [
                              Text(
                                'Displacement',
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              Text(
                                '1133cc',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 203,
                      height: 282,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16)),
                      child: Image.network(
                          'https://cdn1.polaris.com/globalassets/indian/2020/model/vehicle-cards/scout-sixty-abs-pearl-white-titanium-metallic.png?v=735c4c7e',
                          height: 250,
                          //   width: 230,
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 63,
                      width: 136,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(children: [
                          Text(
                            'Max Speed',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          Text(
                            '124km/hr',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 63,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.black)),
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CheckoutScreen())),
                            child: const Text(
                              'Rent',
                              style: TextStyle(fontSize: 23, color: Colors.white),
                            ),
                          ),
                         const Text(
                            '499/per day',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
            
                    ),
                  ],
                ),
              ),
               const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Add",
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
                  const  SizedBox(height: 20,),  SizedBox(
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
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Image.network(
                                        'https://e7.pngegg.com/pngimages/1007/337/png-clipart-leather-jacket-clothing-motorcycle-riding-gear-moto-jacket-leather-motorcycle-thumbnail.png')),
                                title: const Text(
                                  'Riding Jacket',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: const Text("800 / per day"),
                                trailing: Container(
                                  height: 22,
                                  width: 70,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    'Add',
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
            )),
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
