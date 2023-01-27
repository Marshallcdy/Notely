import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 55, top: 100),
            child: Text(
              "Notely",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 70),
                child: Image.asset("photo/first.jpg"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 45, top: 40),
                child: Text(
                  "       World's Safest And \n  Largest Digital Notebook",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 40),
                child: Text(
                    "     Notely is the world’s safest, largest and \n       intelligent digital notebook. Join over \n          10M+ users already using Notely."),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 65),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 90,
                      right: 100,
                      bottom: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const SecondPage())));
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              TextButton(
                onPressed: (() {}),
                child: const Padding(
                  padding: EdgeInsets.only(left: 65, top: 5),
                  child: Text(
                    "Already have an account ?",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 100),
            child: Text(
              "Notely",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 100),
            child: Text(
              "Create a Free Account",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 25),
            child: Text(
              "     Join Notely for free. Create and share \n         unlimited notes with your friends.",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 70, right: 270),
            child: Text("Full Name"),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, bottom: 10, top: 5),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Sagar Chaudhary",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, right: 270),
            child: Text("Enter Email"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: "sagarcdy@gmail.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 255),
            child: Text("Enter Password"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: "##########",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 100,
                  right: 100,
                  bottom: 20,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const SecondPage())));
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          TextButton(
            onPressed: (() {}),
            child: const Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "Already have an account ?",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
