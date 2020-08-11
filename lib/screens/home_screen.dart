import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/hotel_model.dart';
import 'package:travel_app/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = ['HOTEL', 'SORT', 'VIEW ALL'];

  final List<Hotel> hotels = [
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel0.jpg',
      rating: 5,
      price: 200,
    ),
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel1.jpg',
      rating: 2,
      price: 100,
    ),
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel2.jpg',
      rating: 4,
      price: 500,
    ),
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel3.jpg',
      rating: 3,
      price: 150,
    ),
  ];

  final List<Hotel> mostVisited = [
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel4.jpg',
      rating: 5,
      price: 200,
    ),
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel5.jpg',
      rating: 2,
      price: 100,
    ),
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel6.jpg',
      rating: 4,
      price: 500,
    ),
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel7.jpg',
      rating: 3,
      price: 150,
    ),
    Hotel(
      name: 'Something Hotel',
      description: 'Best hotel ever!',
      address: 'Bazar Avenue Cos 231',
      imageUrl: 'assets/images/hotel8.jpg',
      rating: 3,
      price: 150,
    ),
  ];

  int _selectedIndex = 0;
  int _currentIndex = 0;

  Widget _buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: index == _selectedIndex ? primaryColor : accentColor,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
          child: Text(
            categories[index],
            style: TextStyle(
              color: index == _selectedIndex ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 120.0),
                child: Text(
                  'Visit Cox\'s Bazar',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SearchBar(),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategory(0),
                  _buildCategory(1),
                  _buildCategory(2),
                ],
              ),
              SizedBox(height: 40.0),
              Container(
                height: 280.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels.length,
                    itemBuilder: (BuildContext context, int index) {
                      Hotel hotel = hotels[index];
                      return Column(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                
                                Container(
                                  margin: EdgeInsets.all(10.0),
                                  height: 200,
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Image(
                                      image: AssetImage(hotel.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(hotel.name, 
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                letterSpacing: 1.5,
                              )
                              ),
                              Text(hotel.address,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                letterSpacing: 1.2,
                              )
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 120.0),
                child: Text(
                  'Most Visited',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 280.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mostVisited.length,
                    itemBuilder: (BuildContext context, int index) {
                      Hotel hotel = mostVisited[index];
                      return Column(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10.0),
                                  height: 200,
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Image(
                                      image: AssetImage(hotel.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(hotel.name, 
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                letterSpacing: 1.5,
                              )
                              ),
                              Text(hotel.address,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                letterSpacing: 1.2,
                              )
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 25.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 25.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 25.0,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
