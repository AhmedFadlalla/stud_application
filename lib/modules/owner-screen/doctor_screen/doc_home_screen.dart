import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/models/section_data_model.dart';
import 'package:graduation_project/modules/owner-screen/doctor_screen/add_doc_screen.dart';
import 'package:graduation_project/modules/owner-screen/doctor_screen/doctors_in_Sections.dart';
import 'package:graduation_project/shared/component/components.dart';

import '../../../layouts/owner_home_layout/cubit/owner_cubit.dart';
import '../../../layouts/owner_home_layout/cubit/owner_state.dart';
import '../../../shared/component/constants.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OwnerCubit,OwnerState>(
        builder: (context,state){
          var cubit=OwnerCubit.get(context);
          Size size = MediaQuery.of(context).size;
          return Scaffold(
            backgroundColor: isDark !=false?Colors.black:Colors.white,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: (){
                navigateTo(context, AddDoctorScreen());
              },
              child: Icon(
                  Icons.add
              ),
            ),
            body: ConditionalBuilder(
              condition: cubit.sectionData.length>0,
              builder:(context)=>SingleChildScrollView(
                child: Column(
                  children: [
                    // Container(
                    //   width: double.infinity,
                    //   height: 170.0,
                    //   child: Card(
                    //     clipBehavior: Clip.antiAliasWithSaveLayer,
                    //     elevation: 20.0,
                    //     child: Image(
                    //       image: NetworkImage(
                    //           'https://image.freepik.com/free-vector/food-menu-banner-social-media-post_166746-86.jpg?w=1060'),
                    //       fit: BoxFit.cover,
                    //       height: 150.0,
                    //     ),
                    //   ),
                    // ),
                    ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context,index)=>buildSectionCard(
                            cubit.sectionData[index],
                            size,
                            index,
                            context
                        ),
                        separatorBuilder:(context,index)=> myDivider(),
                        itemCount: cubit.sectionData.length)

                  ],
                ),
              ) ,
              fallback:(context)=>Center(child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage('https://www.europeanequinelawyers.com/wp-content/uploads/2018/03/brexit-1024x682.jpg'),
                  ),
                  Text(
                    'No Doctor Yet!!!!!!!!!',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  )
                ],
              ))  ,
            ),
          );
        },
        listener: (context,state){

          if (state is GetSectionsDoctorsDataSuccessfulStates)
            navigateTo(context, DoctorSection());

        });
  }
  Widget buildSectionCard(SectionDataModel model,var size,index,context)=> InkWell(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      height: 190.0,

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 160.0,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color:  Color(0xFF4DB6AC),
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
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 140,
                width: 180,
                child: Container(
                  height:80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(22),
                    image: DecorationImage(
                      image: NetworkImage('https://media.istockphoto.com/photos/animals-barn-with-horses-picture-id488536888?k=20&m=488536888&s=612x612&w=0&h=yrVGau1K-LnZC-wbJ7QN6cELBDscgXmKD1ah9PJ6eoI='),
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
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            ' العنبر :',
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '${model.name}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,

                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ))
        ],
      ),

    ),
    onTap: (){
      OwnerCubit.get(context).getDoctors(secId: model.secId);

    },
  );
}
