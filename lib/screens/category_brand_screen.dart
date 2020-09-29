import 'package:flutter/material.dart';

//widgets
import '../widgets/category_widget.dart';
import '../widgets/bottom_navigation_widget.dart';
import '../widgets/product_widget.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/item_widget.dart';

class CategoryBrandScreen extends StatelessWidget {
  static const String routeName = 'category_brand_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Category Brand',
          style: TextStyle(
            color: Colors.grey
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey),
            onPressed: (){},
          )
        ],
      ),
      body: ListView(
        children: [
          ItemWidget(),
          ProductCardWidget(),
          ProductWidget(),
          CategoryWidget(
            brandName: 'Apple',
            imageUrl: 'https://images.unsplash.com/photo-1599687266394-00d0dba159bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          ),
          CategoryWidget(
            brandName: 'Apple',
            imageUrl: 'https://images.unsplash.com/photo-1599687266394-00d0dba159bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          ),
          CategoryWidget(
            brandName: 'Apple',
            imageUrl: 'https://images.unsplash.com/photo-1599687266394-00d0dba159bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          ),
           CategoryWidget(
            brandName: 'Apple',
            imageUrl: 'https://images.unsplash.com/photo-1599687266394-00d0dba159bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          ),
           CategoryWidget(
            brandName: 'Apple',
            imageUrl: 'https://images.unsplash.com/photo-1599687266394-00d0dba159bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          ),
        ],
      ),
    );
  }
}
