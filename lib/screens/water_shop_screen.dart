import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_widget.dart';

class WaterShopScreen extends StatelessWidget {
  static const String routeName = 'water_shop_screen';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
      body: SingleChildScrollView(
        child: Container(
          height: mediaQuery.size.height + mediaQuery.padding.top + 24.0,
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.black,),
                    onPressed: () {},
                  ),
                ],
              ),
              Text(
                'Water Shop',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
              SizedBox(height: 10.0,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2014/08/26/07/36/letters-427680__340.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Catalog',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      'see all >',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CatalogWidget(),
                    CatalogWidget(),
                    CatalogWidget(),
                    CatalogWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class CatalogWidget extends StatelessWidget {
  const CatalogWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://cdn.pixabay.com/photo/2014/08/26/07/36/letters-427680__340.jpg')
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Catalog',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white
            ),
          ),
          FlatButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Text(
              'Show All',
              style: TextStyle(
                color: Colors.grey
              ),
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}