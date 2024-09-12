import 'package:flutter/material.dart';
import 'package:resturant/other_page.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatefulWidget {
  const RestaurantApp({super.key});

  @override
  State<RestaurantApp> createState() => _RestaurantAppState();
}

class _RestaurantAppState extends State<RestaurantApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RestaurantPage(),
    );
  }
}

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 50),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.5, color: Colors.white),
                    ),
                    hintText: "Find Restaurants",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_list),
                    focusColor: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Trending Restaurants",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all (45)",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnotherPage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/1.png",
                          width: 300,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all (9)",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.orange,
                      image: DecorationImage(
                        opacity: 0.4,
                        image: AssetImage(
                          'images/Italian.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 100,
                    height: 120,
                    alignment: Alignment.center,
                    child: const Text(
                      'Italian',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.pinkAccent,
                      image: DecorationImage(
                        opacity: 0.5,
                        image: AssetImage(
                          'images/Chinese.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 100,
                    height: 120,
                    alignment: Alignment.center,
                    child: const Text(
                      'Chinese',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.blue,
                      image: DecorationImage(
                        opacity: 0.5,
                        image: AssetImage(
                          'images/maxican.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 100,
                    height: 120,
                    alignment: Alignment.center,
                    child: const Text(
                      'Mexican',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Friends",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all (9)",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AvatarImage(image: "images/p1.jpeg"),
                  AvatarImage(image: "images/p2.jpg"),
                  AvatarImage(image: "images/p3.jpg"),
                  AvatarImage(image: "images/p4.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _index,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          _index = value;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Save'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      elevation: 15,
      backgroundColor: Colors.blue,
      child: const Icon(Icons.add, size: 40),
    );
  }
}

class AvatarImage extends StatelessWidget {
  final String image;

  const AvatarImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(image),
    );
  }
}
