import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(
            elevation: 10,
            shadowColor: Colors.red,
            child: ListView(children:  [
            const  Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child:Icon(
                      Icons.person,
                      size: 65,
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Yousef '),
                      subtitle: Text('you7ahmed@gamil.com'),
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
                onTap: (){
                  
                },
              ),
              ListTile(
                title: Text('Account'),
                leading: Icon(Icons.account_box),
                onTap: (){
                  
                },
              ),
              ListTile(
                title: Text('Favorite'),
                leading: Icon(Icons.favorite),
                onTap: (){
                  
                },
              ),
              ListTile(
                title: Text('About Us'),
                leading: Icon(Icons.help),
                onTap: (){
                  
                },
              ),
              ListTile(
                title: Text('Contect us'),
                leading: Icon(Icons.phone),
                onTap: (){
                  
                },
              ),
              ListTile(
                title: Text('Sign out'),
                leading: Icon(Icons.exit_to_app),
                onTap: (){
                  
                },
              )
            ]),
          ),
          endDrawer: Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
