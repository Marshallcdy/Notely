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
      home: Start(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
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
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const LogIn())));
                  }),
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => const Start())));
              },
              child: const Text(
                "Sign Up ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          TextButton(
            onPressed: (() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => const LogIn())));
            }),
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

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 120),
            child: Text(
              "Notely",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "photo/login.jpg",
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
                hintText: "Sagar Chaudhary",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 245),
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
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 100,
                  right: 100,
                  bottom: 20,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => const Create())));
              },
              child: const Text(
                "LogIn ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE5E5E5),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 150, top: 50, bottom: 10),
                child: Text(
                  "  Notely Premium ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 70, bottom: 10),
                child: IconButton(
                    onPressed: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Create())));
                    }),
                    icon: const Icon(Icons.cut)),
              ),
            ],
          ),
          Image.asset("photo/tick.jpg"),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 25),
            child: Text(
              "   Start Using Notely \n with premium Benefit",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 8),
            child: Text(
              "  ✔ Save Unlimted notes on single project",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 4),
            child: Text(
              "✔ Create Unlimited Project and Teams",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 8),
            child: Text(
              "  ✔ Daily Backup and keep your data safe",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 50),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0XFFF47F6B),
                        width: 5.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 240, 238, 235),
                  ),
                  height: 135,
                  width: 135,
                  child: Column(
                    children: const [
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          "Annual",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Text(
                          "\$ 79.99",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Text(
                          "Per Year",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 50),
                child: Container(
                  height: 135,
                  width: 135,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 240, 238, 235),
                  ),
                  child: Column(
                    children: const [
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          "Monthly",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Text(
                          "\$ 7.99",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Text(
                          "Per Month",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFF47F6B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 100,
                  right: 100,
                  bottom: 10,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Register ",
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
                "Restore Purchase",
                style: TextStyle(
                  color: Color(0XFFF47F6B),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE5E5E5),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.sort),
                Text(
                  "All Notes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset(
              "photo/notes.jpg",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              "Create Your First Notes ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
                "        Hello, I am Sagar Chaudhary . \n I have Recently joined Forbes College ."),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFF47F6B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 100,
                  right: 100,
                  bottom: 15,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Create A Note ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
            ),
          ),
          TextButton(
            onPressed: (() {}),
            child: const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Import Notes",
                style: TextStyle(
                  color: Color(0XFFF47F6B),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
