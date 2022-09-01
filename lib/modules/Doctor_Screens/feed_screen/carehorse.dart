import 'package:flutter/material.dart';

import '../../../shared/component/components.dart';
import '../../../shared/styles/colors.dart';
import 'horsedetails.dart';
class CareHorse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 40,),

//https://www.aces.edu/wp-content/uploads/2020/11/GettyImages-995392950-scaled.jpg

Card(
                    elevation: 22.0, clipBehavior: Clip.antiAlias, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),),
                    child: Column(
                      children: [Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image(image: NetworkImage(
                                'https://www.aces.edu/wp-content/uploads/2020/11/GettyImages-995392950-scaled.jpg',),
                              width: double.infinity,
                              height: 300.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),



          // Center(child: Text("قسم الرعاية : التغذية",style: TextStyle(fontSize: 30.0),)),
          Row(
            children: [

              // Expanded(
              //   child: Container(
              //     margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              //     width: double.infinity,
              //     height: 60.0,
              //     child: defaultbutton(
              //       width:double.infinity,
              //       background:defColorApp,
              //       function:(){print("hello flutter");},
              //       text:'التذكر',
              //       size: 20.0
              //     ),
              //   ),
              // ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScren()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    width: double.infinity,
                    height: 60.0,
                    child: defaultbutton(
                      width:double.infinity,
                      background:defColorApp,
                      function:(){print("hello flutter");},
                      text:' التغذية',     
                      size: 20.0
                    ),
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
