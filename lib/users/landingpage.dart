import 'package:flutter/material.dart';
import 'package:kampoengilmu/constants.dart';
import 'package:kampoengilmu/users/accountpage.dart';
import 'package:kampoengilmu/users/checkoutpage.dart';
import 'package:kampoengilmu/users/favoritepage.dart';
import 'package:kampoengilmu/users/homepage.dart';
import 'package:kampoengilmu/users/transactionpage.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Homepage(),
    new FavoritePage(),
    new CheckoutPage(),
    new TransactionPage(),
    new AccountPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Pallete.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
             Icons.home,
              color: Pallete.green,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite_border_outlined,
              color: Pallete.green,
            ),
            icon: new Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_cart_checkout,
              color: Pallete.green,
            ),
            icon: new Icon(
              Icons.shopping_cart_checkout,
              color: Colors.grey,
            ),
            label: "Checkout",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.swap_horiz_rounded,
              color: Pallete.green,
            ),
            icon: new Icon(
              Icons.swap_horiz_rounded,
              color: Colors.grey,
            ),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Pallete.green,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
