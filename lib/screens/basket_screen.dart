import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {

  static const String routeName = 'basket_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_left, color: Colors.black,),
            onPressed: () {},
          ),
        centerTitle: true,
        title: Text('Basket', style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Expanded(
            child: ListView(
              children: [
                BasketItemWidget(),
                BasketItemWidget(),
                BasketItemWidget(),
                BasketItemWidget(),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('\$50', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  color: Colors.blueAccent,
                  child: Text('Pay', style: TextStyle(color: Colors.white),),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

















class BasketItemWidget extends StatelessWidget {
  const BasketItemWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0)
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  child: Image.network('https://images.unsplash.com/photo-1498484350622-344a7eab522f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', fit: BoxFit.cover,),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Masafi Water', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                      Text('Bottle 18,9 L Water',),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$50', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)
                                  ),
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              Text('1', style: TextStyle(fontWeight: FontWeight.bold),),
                              InkWell(
                                onTap: (){},
                                child: Card(
                                  color: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)
                                  ),
                                  child: Icon(Icons.add, color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}