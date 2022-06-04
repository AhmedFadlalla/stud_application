import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../models/product.dart';


class productcard extends StatelessWidget {
  const productcard({
    Key? key,
    required this.itemindex,
    required this.productt,
    required this.press,
  }) : super(key: key);
  final HorseProductModel productt;
  final int itemindex;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      height: 190.0,
      child: InkWell(
        onTap: () {
          press();
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 190.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 25),
                        blurRadius: 25,
                        color: Colors.black26),
                  ]),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  height: 140,
                  width: 200,
                  child: Container(
                    height:80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(70),
                      image: DecorationImage(
                        image: AssetImage(productt.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SizedBox(
                  height: 130.0,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          'hhh',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          '',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(color: Colors.black, fontSize: 14,),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 20.0, right: 10.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[200],
                              borderRadius: BorderRadius.circular(22)),
                          child: Text(
                            '10',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),

    );
  }
}
