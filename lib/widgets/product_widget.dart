import 'package:flutter/material.dart';


//widget
import '../widgets/rating_widget.dart';


class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://images.unsplash.com/photo-1598135696462-bed80b54e423?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Chip(
                    backgroundColor: Colors.green,
                    label: Text('Open', style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width: 10.0,),
                  Chip(
                    backgroundColor: Colors.orange,
                    label: Text('Pickup', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Column(
              children: [
                Text(
                  'Hamburguesas TOP',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                  'Nihil totam voluptibus ab',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
                
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 20.0),
            child: RatingWidget(
              totalRating: (val) {
                print(' = $val');
              },
            ),
          ),
        ],
      ),
      
    );
  }
}
