import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( //controller for TabBar
        length: 2, //length of tabs in TabBar
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        )
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text('EduHelp',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amber[800],
        centerTitle: true,
        titleSpacing: 2,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 30,
              onPressed: (){
                //code to execute when this button is pressed
              }
          ),
      ],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.send),
            ),
          ],
        ),

      ),

      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
                minVerticalPadding: 5.0,
                tileColor: Colors.blueGrey,

              ), ListTile(
                leading: Icon(Icons.book),
                title: Text('See Books'),
                minVerticalPadding: 5.0,
                tileColor: Colors.blueGrey,

              ), ListTile(
                leading: Icon(Icons.assignment_ind_outlined),
                title: Text('Sign Up'),
                minVerticalPadding: 5.0,
                tileColor: Colors.blueGrey,

              ), ListTile(
                leading: Icon(Icons.perm_identity_rounded),
                title: Text('Sign in'),
                minVerticalPadding: 5.0,
                tileColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar( //bottom navigation bar on scaffold
       items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.add),
           label: "Add Books",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.search),
           label: "Search Books",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.library_books),
           label: "Your Library",
         ),
       ],
      ),
      //endDrawer: Drawer(), // right side theke dekhabe
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          children: [
            Container(
              height: 250,
              width: 150,
              color: Colors.black26,
              child: Image.asset('assets/book-1.jpg'),
            ), Container(
              height: 250,
              width: 150,
              color: Colors.black26,
              child: Image.asset('assets/book-2.jpg'),
            ), Container(
              height: 250,
              width: 150,
              color: Colors.black26,
              child: Image.asset('assets/book-3.jpg'),
            ), Container(
              height: 250,
              width: 150,
              color: Colors.black26,
              child: Image.asset('assets/book-4.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}

