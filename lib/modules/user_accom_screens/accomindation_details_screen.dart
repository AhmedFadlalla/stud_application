import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/layouts/home_layout/cubit/states.dart';
import 'package:graduation_project/layouts/owner_home_layout/cubit/owner_cubit.dart';
import 'package:graduation_project/layouts/owner_home_layout/cubit/owner_state.dart';

import '../../layouts/home_layout/cubit/cubit.dart';
import '../../shared/component/components.dart';
import '../../shared/component/constants.dart';

class AccomindationDetailsScreen extends StatelessWidget {
  const AccomindationDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var accommindationttypeController = TextEditingController();
    var sectionController = TextEditingController();
    var periodController = TextEditingController();
    var priceController = TextEditingController();


    return BlocConsumer<HorseCubit, HorseStates>(
        builder: (context, state) {
          var cubit = HorseCubit.get(context);
          accommindationttypeController.text=cubit.accomList[cubit.index].type;
          periodController.text=cubit.accomList[cubit.index].period;
          priceController.text=cubit.accomList[cubit.index].Price;
          return Scaffold(
            body: SingleChildScrollView(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:0 ,left:11 ,right:11 ,top: 44),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                     color:  Color.fromARGB(255, 219, 218, 212),
                    ),


                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(
                        
                        children: [SizedBox(height: 5,),
                          SizedBox(
                            height: height * 0.01,

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5,),
                            child: Card(
                              elevation: 22.0,
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                children: [
                                  
                                  Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Image(
                                        image: NetworkImage(
                                            '${cubit.accomList[cubit.index].AccomImage}'),
                                        width: double.infinity,
                                        height: 250.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25.0,),


                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [


                                SizedBox(
                                  height: 15.0,
                                ),

                                
                                Container(
                                  
                                  width: 300, 
                                  
                                  child: horseFormField(


                                      controller: accommindationttypeController,
                                      type: TextInputType.name,
                                      validator: (value){
                                        if(value.isEmpty){
                                          return 'يجب ادخال البيانات';
                                        }
                                        return null;
                                      },
                                      hintText: 'نوع الايواء', prefixIcon: Icons.info, label: 'نوع الايواء'),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                                   
                                ),
                                SizedBox(height: 15.0,),
                                Container(
                                  width: 300.0,
                                  child: horseFormField(
                                      controller: periodController, type: TextInputType.name,
                                      validator: (value){
                                        if(value.isEmpty){
                                          return 'يجب ادخال البيانات';
                                        }
                                        return null;
                                      },
                                      hintText: '30 يوم', prefixIcon: Icons.info,
                                      label: '30 يوم'),
                                ),

                                SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                  width: 300.0,
                                  child: horseFormField(
                                      controller: priceController,
                                      type: TextInputType.name,
                                      validator: (value){
                                        if(value.isEmpty){
                                          return 'يجب ادخال البيانات';
                                        }
                                        return null;
                                      },
                                      hintText: 'السعر', prefixIcon: Icons.info, label: '3300 جنيه'),
                                ),

                                SizedBox(height: 15.0,),

                              ],
                            ),
                          ),





                        ],
                      ),
                    )
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
