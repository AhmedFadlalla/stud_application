import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/modules/Doctor_Screens/aleka/alekanew.dart';
import 'package:graduation_project/modules/Doctor_Screens/aleka/show.dart';
import 'package:graduation_project/shared/styles/colors.dart';

import '../../../shared/component/components.dart';
import 'alekanew.dart';

class AlekaHomeScreen extends StatelessWidget {
  const AlekaHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40,),

  Card(
                    elevation: 22.0, clipBehavior: Clip.antiAlias, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),),
                    child: Column(
                      children: [Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image(image: NetworkImage(
                                'https://nffpm.ae/wp-content/uploads/2020/11/Horse-Feed-16-Pellets-1.jpg',),
                              width: double.infinity,
                              height: 300.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),



            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowDetails()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                width: double.infinity,
                height: 80.0,
                child: defaultbutton(
                    width:double.infinity,
                    background: defColorApp,
                    function:(){print("hello flutter");},
                    text:'العلائق',
                    size: 20.0
                ),
              ),
            ),
            
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewFile()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                width: double.infinity,
                height: 80.0,
                child: defaultbutton(
                  width:double.infinity,
                  function:(){print("hello flutter");},
                  background: defColorApp,
                  text:'كون عليقة',
                  size: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
