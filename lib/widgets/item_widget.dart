import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.network(
              'https://media.istockphoto.com/photos/red-apple-picture-id184276818?b=1&k=6&m=184276818&s=170667a&w=0&h=Tpx9Uf0l5RZsaHY2cfP3RyT4Vo5INyavYdprAKzOiFY=',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nikigiris'),
                SizedBox(height: 5.0,),
                Text('4km Cabmbridge Layout'),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(width: 5.0,),
                    Text('37 MINS')
                  ],
                ),
                SizedBox(height: 5.0,),
                Divider(),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Icon(Icons.monetization_on, color: Colors.blue,),
                    SizedBox(width: 5.0,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Text(
                          'Get 10% Off On Fruits & Vegetables',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}