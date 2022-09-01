


import 'package:flutter/material.dart';
import 'package:graduation_project/modules/sona/page1.dart';
import 'package:graduation_project/modules/sona/page3.dart';

import '../../shared/component/constants.dart';

class Hompag extends StatelessWidget {
  const Hompag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const edgeInsets =
        const EdgeInsets.only(left: 100.0, right: 100, top: 200, bottom: 20);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('السنه النبوية')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 620,
              child: Column(children: [
                Padding(
                  padding: edgeInsets,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      child: Center(
                          child: Text(
                        "احاديث",
                        style: TextStyle(fontSize: 25,color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.grey),
                        color: Color(0xFF4DB6AC),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),



                Padding(
                  padding: const EdgeInsets.only(
                      left: 100.0, right: 100, top: 5, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page3()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      
                      child: Center(
                          child: Text(
                        "ايات في القرأن",
                         style: TextStyle(fontSize: 25,color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.grey),
                        color: Color(0xFF4DB6AC),
                      ),
                    ),
                  ),
                ),
              ]),
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //       image: AssetImage('images/new.jpg'), fit: BoxFit.cover),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
