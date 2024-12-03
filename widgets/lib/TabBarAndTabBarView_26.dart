import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        initialIndex: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabbar'),
            bottom: const TabBar(
              indicatorColor: Colors.green,
              indicatorWeight: 2,
              labelColor: Colors.blue,
              labelStyle: TextStyle(fontSize: 18),
              unselectedLabelStyle: TextStyle(fontSize: 12),
              unselectedLabelColor: Colors.red,
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 5),
                  icon: Icon(Icons.radio),
                  text: 'radio',
                ),
                Tab(
                  icon: Icon(Icons.music_note),
                  text: 'music',
                ),
                Tab(
                  icon: Icon(Icons.music_video),
                  text: 'music_video',
                ),
              ],
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.all(15.0),
            child: TabBarView(children: [
              Text('radio page'),
              Text('music_off page'),
              Text('music_video page'),
            ]),
          ),
        ),
      ),
    );
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbar'),
          bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.green,
            indicatorWeight: 2,
            labelColor: Colors.blue,
            labelStyle: const TextStyle(fontSize: 18),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            unselectedLabelColor: Colors.red,
            tabs: const [
              Tab(
                iconMargin: EdgeInsets.only(bottom: 5),
                icon: Icon(Icons.radio),
                text: 'radio',
              ),
              Tab(
                icon: Icon(Icons.music_note),
                text: 'music',
              ),
              Tab(
                icon: Icon(Icons.music_video),
                text: 'music_video',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TabBarView(
            controller: tabController,
            children: [
              SizedBox(
                height: double.infinity,
                child: Column(
                  children: [
                    const Text('radio page'),
                    const SizedBox(
                      height: 222,
                    ),
                    MaterialButton(
                      onPressed: () {
                        tabController!.animateTo(1);
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 87, 75),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Go to music page',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9),
                                child: Icon(Icons.arrow_circle_right),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text('music_off page'),
              const Text('music_video page'),
            ],
          ),
        ),
      ),
    );
  }
}
