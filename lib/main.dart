import 'package:flutter/material.dart';


//Screens
import './screens/category_brand_screen.dart';
import './screens/product_overview_screen.dart';
import './screens/water_shop_screen.dart';
import './screens/basket_screen.dart';


void main() => runApp( MyApp() );


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: BasketScreen.routeName,

      routes: {
        CategoryBrandScreen.routeName: ( context ) => CategoryBrandScreen(),
        ProductOverviewScreen.routeName: ( context ) => ProductOverviewScreen(),
        WaterShopScreen.routeName: ( context ) => WaterShopScreen(),
        BasketScreen.routeName: ( context ) => BasketScreen(),
      },
      
    );
  }
}