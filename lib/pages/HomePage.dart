import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/FoodOrderPage.dart';
import 'package:flutter_app/pages/Profile.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_app/widgets/BestFoodWidget.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';
import 'package:flutter_app/widgets/PopularFoodsWidget.dart';
import 'package:flutter_app/widgets/SearchWidget.dart';
import 'package:flutter_app/widgets/TopMenus.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: SideDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text("FoodApp", style: TextStyle(color: Colors.black)),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notification_important,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: SignInPage()));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(
              color: Colors.black,
            ),
            Text(
              "Delicious, Best Food for You",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10),
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 70,
                    child: CircleAvatar(
                      //radius: 50,
                      backgroundColor: Colors.deepOrange,
                      backgroundImage: AssetImage(
                          "assets/images/bestfood/ic_best_food_1.jpeg"),
                    ),
                  ),
                  Text(
                    'My Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Upload Image",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.deepOrange,
            ),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(
              Icons.credit_card,
              color: Colors.deepOrange,
            ),
            title: Text('Profile'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile())),
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.deepOrange,
            ),
            title: Text('Order'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FoodOrderPage())),
            },
          ),
          ListTile(
            leading: Icon(
              Icons.tag_faces_outlined,
              color: Colors.deepOrange,
            ),
            title: Text('Offer and Promo'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.book,
              color: Colors.deepOrange,
            ),
            title: Text('Privacy Policy'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.security,
              color: Colors.deepOrange,
            ),
            title: Text('Security'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.border_color,
              color: Colors.deepOrange,
            ),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.deepOrange,
            ),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
