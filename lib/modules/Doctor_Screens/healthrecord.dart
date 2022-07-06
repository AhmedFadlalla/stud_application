
import 'package:flutter/cupertino.dart';
// import 'package:youssef_example/board1/func.dart';
// import 'package:youssef_example/standardbloc/DoctorCubit.dart';
// import 'package:youssef_example/standardbloc/DoctorStates.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:graduation_project/layouts/doc_home_layout/Doctor_Cubit/doc_cubit.dart';
import 'package:graduation_project/layouts/doc_home_layout/Doctor_Cubit/doc_states.dart';
import 'package:graduation_project/layouts/doc_home_layout/doc_home_layout.dart';
import 'package:intl/intl.dart';

import '../../main.dart';
import '../../models/disease_model/disease_model.dart';
import '../../shared/component/components.dart';
class HealthRecord extends StatelessWidget {
  var diseaseDate = TextEditingController();
  var disease = TextEditingController();
  var doctor = TextEditingController();
  var diseaseState = TextEditingController();
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  List<DiseaseData> mydata;
  HealthRecord(this.mydata);
  @override
  Widget build(BuildContext context) {
        return BlocConsumer<DoctorCubit, DoctorStates>
         (
         listener: (BuildContext context, state) {},
         builder: (BuildContext context, state)
         {
          return Scaffold(floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(context: context, builder: (context) => Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50,),
                  child: AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                    title: Center(child: Text('أضف البيانات', style: TextStyle(fontSize: 25.0,),),),
                    content: BlocConsumer<DoctorCubit, DoctorStates>(
                      listener: (context, state) {},
                      builder: (context,state){
                        return Form(
                          key: formKey,
                          child: SingleChildScrollView(
                          child: Column(
                            children: [
                                defaultFormField(controller: diseaseDate, type: TextInputType.datetime,
                                  validator: (value){
                                    if(value.isEmpty){
                                      return 'يجب ادخال تاريخ المرض';
                                    }
                                    return null;
                                  },
                                  label: 'ادخل تاريخ المرض', prefixIcon: Icons.date_range,
                                  prefixIconTapFunction: (){
                                  showDatePicker(context: context,
                                        initialDate: DateTime.now(),
                                      firstDate: DateTime.parse('1990-01-01'),
                                        lastDate:DateTime.now()).then((value) {
                                      diseaseDate.text=DateFormat.yMMMd().format(value!);});
                                  },), SizedBox(height: 15,),
                      defaultFormField(controller: disease, type: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {return 'يجب ادخال البيانات ';}},
                          label: 'المرض', prefixIcon: Icons.coronavirus),
                      SizedBox(height: 15,),
                      defaultFormField(controller: doctor, type: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'يجب ادخال البيانات ';
                            }
                          },
                          label: 'الدكتور المعالج', prefixIcon: Icons.person),
                      SizedBox(height: 15,),
                      defaultFormField(controller: diseaseState, type: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'يجب ادخال البيانات ';
                            }
                          },
                          label: 'حالة المرض - بيانات اضافية ', prefixIcon: Icons.medical_services),
                      SizedBox(
                        height: 15,
                      ),
                      defaultButton2(
                        text: 'حفظ ',
                        function: () {
                         if(formKey.currentState!.validate()){
                            DoctorCubit.get(context).sendDisease(
                            DiseaseData(disease: disease.text,
                             doctor: doctor.text,
                            diseaseCase: diseaseState.text,
                            date: diseaseDate.text),DoctorCubit.get(context).horseId).then((value){
                              DoctorCubit.get(context).getdDisease(hId: DoctorCubit.get(context).horseId);
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added')
                                ,backgroundColor: Colors.green,));
                                   Navigator.pushReplacement(
                                    context, //my place

                                    MaterialPageRoute(
                                      builder: (context) => DocHomeScreenLayout(),
                                    ),
                                    /////اللي انا رايحله
                                  );
                            });
                         }
                        },

                        background: Colors.red.withOpacity(0.8),
                      ),


                            ],
                          ),
                        ));
                      },
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              );




            },
            child: const Icon(Icons.add),
            backgroundColor: Color.fromARGB(255, 36, 209, 206),
          ),
          ///////////////////////////////////////////////////


          body: SafeArea(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                  Row(children: [
                      Expanded(child: defaultRecordItem(txt: 'الدكتور المعالج')),
                      SizedBox(width: 3.0,),
                      Expanded(child: defaultRecordItem(txt: 'الحالة')),
                      SizedBox(width: 3.0,),
                      Expanded(child: defaultRecordItem(txt: 'المرض')),
                      SizedBox(width: 3.0,),
                      Expanded(child: defaultRecordItem(txt: 'التاريخ')),
                      SizedBox(width: 3.0,),

                    ],
                  ),
                  SizedBox(height:10,),
                  //////////////////scroll list view //////////////////////////////////////////////////
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left:5 , right:5 ,),
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => defaultRecord (
                          drName: '${mydata[index].doctor}',
                          horseState: '${mydata[index].diseaseCase}',
                          horseDisease: '${mydata[index].disease}',
                          DiseaseDate: '${mydata[index].date}',
                        ),
                        separatorBuilder: (context, index) =>SizedBox(height:5,),
                        itemCount:mydata.length,),),),],
              ),
            ),
          ),

        );
      },
    );
  }
}

