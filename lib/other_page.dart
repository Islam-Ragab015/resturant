import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Trending Restaurant",
          style: TextStyle(color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.5, color: Colors.white)),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_list)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "images/1.png",
                    width: 400,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "Happy Bones",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 5, top: 15),
              child: Column(
                children: [
                  Image.asset(
                    "images/2.png",
                    width: 370,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "Uncle Boons",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/3.png",
                    width: 370,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "Sea Food",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/4.jpg",
                    width: 370,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "chicken",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/5.jpg",
                    width: 370,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "Fast Food",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
