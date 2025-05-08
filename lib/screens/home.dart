import 'package:flutter/material.dart';
import 'package:task_management/screens/menuPage.dart';
import 'package:task_management/screens/profilePage.dart';
import 'package:task_management/widgets/constant.dart';
import 'package:task_management/widgets/premium.dart';
import 'package:task_management/widgets/tasks.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _pages = [HomePage(), ProfilePage()];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.25),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: kWhite,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: kLightGrey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded, size: 35, color: kRedDark),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded, size: 35, color: kLightGrey),
                label: 'Person',
              ),
            ],
            onTap: (index) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: kDark,
        child: Icon(Icons.add, color: kLightGrey, size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[activeIndex],
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kWhite,
    elevation: 0,
    title: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 8),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/image/profile.jpg"),
          ),
        ),
        SizedBox(width: 12),
        Text(
          "Hello, Adarsh",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => MenuPage()),
          );
        },
        icon: Icon(Icons.more_vert, size: 25, color: Colors.grey[600]),
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 20,
            bottom: 10,
          ),
          child: GoPremium(),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            "Tasks",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(child: Tasks()),
      ],
    );
  }
}