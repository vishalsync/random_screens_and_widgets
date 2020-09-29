import 'package:flutter/material.dart';

//Widgets
import '../widgets/product_list_widget.dart';

class ProductOverviewScreen extends StatelessWidget {

  static const String routeName = 'product_overview_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          title: Card(
            elevation: 3,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                hintText: 'Search for item',
                hintStyle: TextStyle(fontSize: 20.0)
              ),
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            unselectedLabelColor: Colors.black,
            isScrollable: true,
            tabs: [
              Tab(
                text: 'All',

              ),
              Tab(
                  text: 'Rice & Grains',
                ),
              Tab(
                text: 'Pulses',
              ),
              Tab(
                text: 'Atta & Flour',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProductListWidget(),
            Center(child: Text('Rice & Grains')),
            Center(child: Text('Pulses')),
            Center(child: Text('Atta & Flour')),
          ],
        ),
      ),
    );
  }
}