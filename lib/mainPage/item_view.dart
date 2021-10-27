import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  final bool? show;
  final String? title;
  final int? price;

  const ItemView({Key? key, this.show, this.title, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool a = true;

    // if(show != null){
    //   a = show!;
    // }
    // else{
    //   a = false;
    // }

    return Visibility(
      visible: a,
      child: Container(
        child: Column(
          children: [
            Text(
              title!,
              style: const TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold,fontSize: 20),
            ),

            Text(
              "price: $price",
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w400,fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
