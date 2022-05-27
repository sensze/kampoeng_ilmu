import 'package:flutter/material.dart';
import 'package:kampoengilmu/constants.dart';
import 'package:kampoengilmu/users/frontpage.dart';
import 'package:kampoengilmu/users/kategoripage.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _activeTabIndex = 0;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_setActiveTabIndex);
  }
  void _setActiveTabIndex(){
    _activeTabIndex = _tabController.index;
}

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: (){
          },
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search, color: Colors.black,),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: new BorderSide(color: Colors.white),
            ),
            fillColor: Color(0xffffffff),
            filled: true,
          ),
        ),
      backgroundColor: Pallete.bgnavbar,
      bottom: TabBar(
        controller: _tabController,
        indicatorColor: Pallete.green,
        labelColor: Pallete.green,
        unselectedLabelColor: Colors.white,
        labelPadding: EdgeInsets.all(0),
        tabs: [
          Tab(text: "Homepage"),
          Tab(text: "Category"),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Frontpage(),
          Kategoripage(),
        ],
      ),
    );
  }
}
