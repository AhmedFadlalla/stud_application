import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/layouts/owner_home_layout/cubit/owner_cubit.dart';
import 'package:graduation_project/layouts/owner_home_layout/cubit/owner_state.dart';
import 'package:graduation_project/layouts/owner_home_layout/owner_home_Layout.dart';
import 'package:graduation_project/modules/owner-screen/Horses_screen/nasap_Screen.dart';
import 'package:graduation_project/shared/component/components.dart';

import '../../../shared/component/constants.dart';

class HorseDetailsScreen extends StatelessWidget {
  const HorseDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    var horsenameController = TextEditingController();
    var sectionController = TextEditingController();
    var sectionNumController = TextEditingController();
    var priceController = TextEditingController();
    var birthDateController = TextEditingController();
    var microshipController = TextEditingController();
    var typeController = TextEditingController();
    var ganderController = TextEditingController();
    var nationalityController = TextEditingController();
    var boxNumController = TextEditingController();

    var ownerController=TextEditingController();
    var specificController = TextEditingController();
    var sourceController = TextEditingController();
    var sourceLocationController = TextEditingController();
    var colorController=TextEditingController();
    // var horsenameController = TextEditingController();
    // var horsenameController = TextEditingController();
    // var horsenameController = TextEditingController();

    return BlocConsumer<OwnerCubit, OwnerState>(
        builder: (context, state) {
          var cubit = OwnerCubit.get(context);
          horsenameController.text=cubit.horseData[cubit.index].horseName;
          sectionController.text=cubit.horseData[cubit.index].sectionName;
          sectionNumController.text=cubit.horseData[cubit.index].sectionNUmber;
          priceController.text=cubit.horseData[cubit.index].initPrice+' '+'جنيه';
          birthDateController.text=cubit.horseData[cubit.index].birthDate;
          microshipController.text=cubit.horseData[cubit.index].microshipCode;
          typeController.text=cubit.horseData[cubit.index].type;
          nationalityController.text=cubit.horseData[cubit.index].nationality;
          boxNumController.text=cubit.horseData[cubit.index].boxNum;
          specificController.text=cubit.horseData[cubit.index].specific;
          colorController.text=cubit.horseData[cubit.index].color;
          sourceController.text=cubit.horseData[cubit.index].source;
          sourceLocationController.text=cubit.horseData[cubit.index].sourceLocation;
          ownerController.text=cubit.horseData[cubit.index].source;
          print(cubit.index);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Horse Profile'
              ),
              actions: [
                IconButton(
                    onPressed: (){

                      cubit.deleteHorse(secId: cubit.horseModel!.sectionName, horseId:cubit.horseModel!.microshipCode );

                    }, icon: Icon(
                    Icons.delete
                )),
                IconButton(
                    onPressed: (){

                      cubit.updateHorseData(
                          secId: cubit.horseModel!.sectionName,
                          horseId: microshipController.text,
                          horseName: horsenameController.text,
                          horseImage: cubit.horseData[cubit.index].horseImage,
                          fatherName: cubit.horseData[cubit.index].fatherName,
                          fatherName1: cubit.horseData[cubit.index].fatherName1,
                          fatherName2: cubit.horseData[cubit.index].fatherName2,
                          motherName: cubit.horseData[cubit.index].motherName,
                          motherName1: cubit.horseData[cubit.index].motherName1,
                          motherName2: cubit.horseData[cubit.index].motherName2,
                          sectionNUmber: sectionNumController.text,
                          sectionName: sectionController.text,
                          boxNum: boxNumController.text,
                          owner: ownerController.text,
                          initPrice: priceController.text,
                          dateTime: birthDateController.text,
                          microshipCode: microshipController.text,
                          type: typeController.text,
                          color: colorController.text,
                          gander: ganderController.text,
                          specific: specificController.text,
                          nationality: nationalityController.text,
                          source: sourceController.text,
                          sourceLocation: sourceLocationController.text);



                    }, icon: Icon(
                    Icons.update,
                  size: 22,

                )),



              ],
            ),
            body: SingleChildScrollView(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0,left: 15.0,right: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color:isDark==true ? Colors.black:Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 20,
                          color: Color(0xFFB0CCE1).withOpacity(0.32),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.01,

                        ),
                        Container(
                          height: 250,
                            width: width,
                            padding: EdgeInsets.only(top: 1),
                            margin: EdgeInsets.only(top: 1,),
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(20),

                            ) ,
                            child: Container(
                              width: width,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image(
                                    image: NetworkImage(
                                        '${cubit.horseData[cubit.index].horseImage}')),
                              ),
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(22),


                              ),
                            )
                        ),
                        SizedBox(height: 20.0,),
                        Container(

                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5.0,
                                ),
                                defaultFormField(
                                    controller: horsenameController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    hintText: 'اسم الحصان',

                                    prefixIcon: Icons.person, label: 'اسم الحصان'),
                                SizedBox(height: 15.0,),

                                defaultFormField(
                                    controller: sectionController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    hintText: 'العنبر',

                                    prefixIcon: Icons.local_fire_department, label: 'العنبر'),
                                SizedBox(height: 15.0,),

                                defaultFormField(
                                    controller: sectionNumController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    hintText: 'العنبر',

                                    prefixIcon: Icons.local_fire_department, label: 'رقم العنبر'),
                                SizedBox(height: 15.0,),


                                defaultFormField(
                                    controller:microshipController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'المايكروشيب'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:priceController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'السعر'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:birthDateController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'تاريخ الميلاد'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:typeController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'الرسن'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:ganderController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'النوع'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:nationalityController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'الجنسية'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:boxNumController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'رقم الصندوق'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:specificController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'التخصص'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:colorController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'اللون'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:sourceController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'المصدر'),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                    controller:sourceLocationController,
                                    type: TextInputType.name,
                                    validator: (value){

                                      if(value.isEmpty){
                                        return 'يجب ادخال البيانات';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.person, label: 'مكان المصدر'),
                                SizedBox(height: 15.0,),
                                Row(
                                  children: [
                                    Text(
                                        'لاستعراض شهادة النسب',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,

                                      ),
                                    ),
                                    TextButton(
                                        onPressed: (){

                                          navigateTo(context, NassapScreen(
                                              horseName:cubit.horseData[cubit.index].horseName ,
                                              fatherName: cubit.horseData[cubit.index].fatherName,
                                              fatherName1: cubit.horseData[cubit.index].fatherName1,
                                              fatherName2: cubit.horseData[cubit.index].fatherName2,
                                              motherName: cubit.horseData[cubit.index].motherName,
                                              motherName1: cubit.horseData[cubit.index].motherName1,
                                              motherName2: cubit.horseData[cubit.index].motherName2));
                                        },
                                        child: Text(
                                            'اضغط هنا',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),




                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is DeleteHorseSuccessfulState)
            {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Deleted')
                    ,backgroundColor: Colors.green,));
              Navigator.pushReplacement(
                  context, //my place
                  MaterialPageRoute(
                  builder: (context) => OwnerHomeScreenLayout(),
          )
              );
            }
        });
  }
}
