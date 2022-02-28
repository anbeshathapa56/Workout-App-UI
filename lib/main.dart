import 'package:flutter/material.dart';
import 'package:flutter_fitness/listitem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: FitnessApp()
    );
  }
}

class FitnessApp extends StatefulWidget {
  const FitnessApp({Key? key}) : super(key: key);

  @override
  _FitnessAppState createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  // First we need to import some image link so we can use it as
  //background for the header and the list Item
// ignore: non_constant_identifier_names
String img_Header =
    "assets/wout1.jpeg";

List<String> trainingImage = [
  'assets/wout2.jpg',
  'assets/wout3.jpg',
  'assets/wout4.jpeg',
  'assets/wout4.jpeg',

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        //first lets start by creating the collapsing App Header
        headerSliverBuilder: (context, innerBoxIsScrolled){
          return<Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              pinned: true,
              floating: false,
              title: const Text("FitApp",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.blue,
              toolbarHeight: 90.0,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(img_Header,
                  fit: BoxFit.cover,
                  //lets make it darker
                  color: const Color(0xaa212121),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              //now lets add the bottom search bar
              bottom: PreferredSize(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom:24.0, left: 16.0, right: 12.0 ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
                      hintText: "Search for a training program...",
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )
                    ),
                  ),
                ),
                preferredSize: const Size.fromHeight(200.0),),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                ),
                //now lets add the background of the header
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: Column(
              children: [
                const Text("Top Trends", style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                ),),
                const SizedBox(
                  height: 20.0,
                ),
                listItem( trainingImage[0], "Full Body Program", 53, 30),
                listItem( trainingImage[1], "Beginners", 30, 10),
                listItem( trainingImage[2], "Intermediate", 60, 10),
                listItem( trainingImage[3], "Hard Core", 53, 30),
              ],
            ),
          ),
        )
      ),
    );
  }
}


