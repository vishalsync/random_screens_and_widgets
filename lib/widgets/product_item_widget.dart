import 'package:flutter/material.dart';

//widgets
import './rating_widget.dart';


class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 5.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This is apple',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  RatingWidget(
                    totalRating: (int rating){
                      // print(rating);
                    },
                  ),
                  DropdownButton(
                    onChanged: (val) {
                      print(val);
                    },
                    value: '200 g',
                    items: [
                      DropdownMenuItem(
                        child: Text('200 g'),
                        value: '200 g',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                OutlineButton(
                  child: Row(
                    children: [
                      Icon(Icons.add, color: Colors.green,),
                      Text(
                        'ADD', 
                        style: TextStyle(
                          color: Colors.green, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                Text(
                  '\$44.47',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$13.20',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}