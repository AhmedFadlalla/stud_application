

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/modules/owner-screen/Horses_screen/horse_complete_info.dart';
import 'package:intl/intl.dart';
// import 'package:intl/intl.dart';

import '../../../layouts/owner_home_layout/cubit/owner_cubit.dart';
import '../../../layouts/owner_home_layout/cubit/owner_state.dart';
import '../../../shared/component/components.dart';

class AddHorseScreen extends StatelessWidget {
  const AddHorseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OwnerCubit.get(context).getSectionsData();
    return BlocConsumer<OwnerCubit, OwnerState>(
        builder: (context, state) {
          var horsenameController = TextEditingController();
          var fathernameController = TextEditingController();
          var fathername1Controller = TextEditingController();
          var fathername2Controller = TextEditingController();
          var mothernameController = TextEditingController();
          var mothername1Controller = TextEditingController();
          var mothername2Controller = TextEditingController();
          var ownernameController = TextEditingController();
          var boxnumController = TextEditingController();
          var sectionNumberController = TextEditingController();
          var priceController = TextEditingController();
          var farmController = TextEditingController();
          var microController = TextEditingController();
          var dateController = TextEditingController();


          var formKey = GlobalKey<FormState>();

          var cubit = OwnerCubit.get(context);
          farmController.text = cubit.ownerModel!.studName;

          return Scaffold(
              body: Form(
                key: formKey,
                child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 190.0,
                            child: Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 65.0,
                                  backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                                  child: CircleAvatar(
                                    radius: 60.0,
                                    backgroundImage: cubit.horseImage == null
                                        ? NetworkImage(
                                        'https://cdn3.iconfinder.com/data/icons/horse-riding-sport/64/horse-riding-add-new-512.png'
                                      // 'https://store-images.s-microsoft.com/image/apps.62288.13620585470013536.11ea7ace-068b-4450-a62e-2233e0b32064.39ccf900-bfd0-48d2-8259-e9bbfa50f4c2?mode=scale&q=90&h=300&w=300'
                                    )
                                        : FileImage(cubit.horseImage!)
                                    as ImageProvider,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      cubit.getHorseImage();
                                    },
                                    icon: CircleAvatar(
                                      radius: 20.0,
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 16.0,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: microController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'يجب ادخال الكود';
                                }
                                return null;
                              },
                              label: 'يجب ادخال كود المايكروشيب',
                              prefixIcon: Icons.info),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: horsenameController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'يجب ادخال الاسم ';
                                }
                              },
                              label: 'اسم الحصان',
                              prefixIcon: Icons.info),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: defaultFormField(
                                    controller: fathernameController,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' يجب ادخال اسم الاب';
                                      }
                                    },
                                    label: 'اسم الاب ',
                                    prefixIcon: Icons.drive_file_rename_outline),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Expanded(
                                child: defaultFormField(
                                    controller: mothernameController,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'يجب ادخال اسم الام';
                                      }
                                    },
                                    label: 'اسم الام',
                                    prefixIcon: Icons.drive_file_rename_outline),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: defaultFormField(
                                    controller: fathername1Controller,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' يجب ادخال اسم الجد';
                                      }
                                    },
                                    label: 'اسم الجد ',
                                    prefixIcon: Icons.drive_file_rename_outline),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Expanded(
                                child: defaultFormField(
                                    controller: mothername1Controller,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' يجب ادخال اسم الجدة';
                                      }
                                    },
                                    label: 'اسم الجدة ',
                                    prefixIcon: Icons.drive_file_rename_outline),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: defaultFormField(
                                    controller: fathername2Controller,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' يجب ادخال اسم اب الجد';
                                      }
                                    },
                                    label: 'اسم اب الجد ',
                                    prefixIcon: Icons.drive_file_rename_outline),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Expanded(
                                child: defaultFormField(
                                    controller: mothername2Controller,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' يجب ادخال اسم ام الجدة';
                                      }
                                    },
                                    label: 'اسم ام الجدة ',
                                    prefixIcon: Icons.drive_file_rename_outline),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: ownernameController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'يجب ادخال اسم المربي ';
                                }
                              },
                              label: 'اسم المربي',
                              prefixIcon: Icons.info),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: farmController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'يجب ادخال اسم المزرعة ';
                                }
                              },
                              label: 'اسم المزرعة',
                              prefixIcon: Icons.info),
                          SizedBox(
                            height: 20.0,
                          ),
                          defaultFormField(
                              controller: sectionNumberController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'يجب ادخال رقم العنبر ';
                                }
                              },
                              label: 'رقم العنبر ',
                              prefixIcon: Icons.info),
                         



                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: boxnumController,
                              type: TextInputType.text,
                              label: 'رقم الصندوق',
                              prefixIcon: Icons.info,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'هذا الفيلد مطلوب';
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: priceController,
                              type: TextInputType.text,
                              label: 'السعر',
                              prefixIcon: Icons.price_check_sharp,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'هذا الفيلد مطلوب';
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 15.0,
                          ),


                          defaultFormField(
                            controller: dateController,
                            type: TextInputType.datetime,

                            validator: (value){
                              if(value.isEmpty){
                                return 'يجب ادخال التاريخ';
                              }
                              return null;
                            },
                            label: 'ادخل تاريخ الميلاد',

                            prefixIcon: Icons.date_range,

                            prefixIconTapFunction: (){
                              showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.parse('1990-01-01'),
                                  lastDate:DateTime.now())
                                  .then((value) {
                                dateController.text=DateFormat.yMMMd().format(value!);

                              });
                            },),



                          SizedBox(height: 15.0,),

                          defaultButton(
                            text: 'التالي',
                            function: () {
                              if(formKey.currentState!.validate()){
                                navigateTo(context, HorseCompleteInfoScreen(
                                    name: horsenameController.text,
                                    microShip: microController.text,
                                    fatherName: fathernameController.text,
                                    fatherName1: fathername1Controller.text,
                                    fatherName2: fathername2Controller.text,
                                    motherName: mothernameController.text,
                                    motherName1: mothername1Controller.text,
                                    motherName2: mothername2Controller.text,
                                    horseOwner: ownernameController.text,
                                    studName: farmController.text,
                                    sectionNum: sectionNumberController.text,
                                    price: priceController.text,
                                    boxNum: boxnumController.text,
                                    birthDate: priceController.text,
                                    image: cubit.horseImage != null?cubit.horseImage:'https://cdn.pixabay.com/photo/2017/12/10/15/16/white-horse-3010129_1280.jpg'
                                  ,
                                ));
                              }
                            },
                          ),





                        ],
                      ),
                    )),
              ));
        },
        listener: (context, state) {});
  }
}
