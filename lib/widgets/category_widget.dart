import 'package:flutter/material.dart';


class CategoryWidget extends StatelessWidget {

  final String brandName;
  final String imageUrl;

  const CategoryWidget({@required this.brandName, @required  this.imageUrl});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 150.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl)
        )
      ),
      child: Text(
        brandName,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}