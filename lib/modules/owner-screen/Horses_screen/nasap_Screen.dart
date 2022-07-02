import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NassapScreen extends StatelessWidget {
  final String horseName;
  final String fatherName;
  final String fatherName1;
  final String fatherName2;
  final String motherName;
  final String motherName1;
  final String motherName2;
  const NassapScreen({Key? key,
    required this.horseName,
    required this.fatherName,
    required this.fatherName1,
    required this.fatherName2,
    required this.motherName,
    required this.motherName1,
    required this.motherName2


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // The title text which will be shown on the action bar
        title:  Text('شهادة النسب')
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
               if(index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      list(context: context,
                      text: '$fatherName1',
                      function: () {},
                      count: 1),
                      list(context: context,
                          text: '$motherName1',
                          function: () {},
                          count: 1),
                      SizedBox(
                        height: 9.0,
                      ),

                      list(context: context,
                          text: '$fatherName2',
                          function: () {},
                          count: 1),
                      list(context: context,
                          text: '$motherName2',
                          function: () {},
                          count: 1),

                    ],
                  ),
                );
              }
              else if (index == 1) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      list(context: context,
                      text: '$fatherName',
                      function: () {},
                      count: 1),
                      SizedBox(
                        height: 35.0,
                      ),
                      list(context: context,
                          text: '$motherName',
                          function: () {},
                          count: 1),

                    ],
                  ),
                );
              }
              return list(context: context, text: '$horseName', function: (){}, count: 1);
            },
            separatorBuilder: (context, index) =>SizedBox(width: 20),
            itemCount: 3,
            shrinkWrap: true,
          ),
        ),
      ),
    );
  }

  Widget list({required context,required String text,required Function() function,required int count})=>SizedBox(
    width: 100,
    child: Center(
      child: ListView.separated(
        itemBuilder: (context,index)=>button(text: text, function: function),
        separatorBuilder: (context,index)=>SizedBox(height: 100/count),
        itemCount: count,
        shrinkWrap: true,
      ),
    ),
  );
  Widget button({required String text,required Function() function})=> ElevatedButton(onPressed: function, child: Text(text));
}
