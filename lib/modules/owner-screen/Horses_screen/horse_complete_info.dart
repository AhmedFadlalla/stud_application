

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/layouts/owner_home_layout/cubit/owner_cubit.dart';
import 'package:graduation_project/layouts/owner_home_layout/cubit/owner_state.dart';

import '../../../shared/component/components.dart';

class HorseCompleteInfoScreen extends StatelessWidget {
  final String name;
  final String microShip;
  final String fatherName;
  final String fatherName1;
  final String fatherName2;
  final String motherName;
  final String motherName1;
  final String motherName2;
  final String horseOwner;
  final String studName;
  final String sectionNum;
  final String price;
  final String boxNum;
  final String birthDate;
  final dynamic image;

  const HorseCompleteInfoScreen({Key? key,
    required this.name,
    required this.microShip,
    required this.fatherName,
    required this.fatherName1,
    required this.fatherName2,
    required this.motherName,
    required this.motherName1,
    required this.motherName2,
    required this.horseOwner,
    required this.studName,
    required this.sectionNum,
    required this.price,
    required this.boxNum,
    required this.birthDate,
    required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OwnerCubit,OwnerState>(
        builder: (context, state) {
          var cubit=OwnerCubit.get(context);
          var formKey = GlobalKey<FormState>();
          var sourceLocationController = TextEditingController();
          return Scaffold(
            appBar: AppBar(
              title: Text('اكمل ادخال بيانات الحصان'),
            ),
            body: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      BuildDropBottom(
                        dropdownButtonTitle: ' اختر العنبر',
                        function: (newValue) {
                          cubit.onChangeSectionDropDownButton(newValue);
                        },
                        items: [
                          'طلايق ',
                          ' أمهات',
                          'بكاري',
                          'مهارة اناث',
                          ' مهارة ذكور',
                        ].map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                        value: cubit.sectionValueChoose,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      BuildDropBottom(
                        dropdownButtonTitle: ' اختر نوع الحصان ',
                        function: (newValue) {
                          cubit.onChangeSpecificDropDownButton(newValue);
                        },
                        items: [
                          'ادب ',
                          ' رقص',
                          'جمال',
                          'سباق',
                        ].map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                        value: cubit.specificValueChoose,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      BuildDropBottom(
                        dropdownButtonTitle: ' اختر جنسية الحصان ',
                        function: (newValue) {
                          cubit.onChangeNationalityDropDownButton(newValue);
                        },
                        items: [
                          'عربي ',
                          ' انجليزي',
                        ].map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                        value: cubit.nationlityValueChoose,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      BuildDropBottom(
                        dropdownButtonTitle: ' اختر مصدر الحصان ',
                        function: (newValue) {
                          cubit.onChangeSourceDropDownButton(newValue);
                        },
                        items: [
                          'محلي ',
                          ' من الخارج',
                        ].map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                        value: cubit.sourceValueChoose,
                      ),


                      //////////////////////////////////////////////





                      // Row(
                      //   children: [
                      //     Expanded(child: Text('يجب ادخال تاريخ ميلاد الحصان ')),
                      //     Expanded(
                      //       child: BuildDropBottom(
                      //         dropdownButtonTitle: ' اليوم ',
                      //         function: (newValue) {
                      //           cubit.onChangeDayDropDownButton(newValue);
                      //         },
                      //         items: [
                      //           '1',
                      //           '2',
                      //           '3',
                      //           '4',
                      //           '5',
                      //           '6',
                      //           '7',
                      //           '6',
                      //           '8',
                      //           '9',
                      //           '10',
                      //           '11',
                      //           '12',
                      //           '13',
                      //           '14',
                      //           '15',
                      //           '16',
                      //           '17',
                      //           '18',
                      //           '19',
                      //           '20',
                      //           '21',
                      //           '22',
                      //           '23',
                      //           '24',
                      //           '25',
                      //           '26',
                      //           '27',
                      //           '28',
                      //           '29',
                      //           '30',
                      //           '31'
                      //         ].map((valueItem) {
                      //           return DropdownMenuItem(
                      //             value: valueItem,
                      //             child: Text(valueItem),
                      //           );
                      //         }).toList(),
                      //         value: cubit.DayValueChoose,
                      //       ),
                      //     ),
                      //     Expanded(
                      //       child: BuildDropBottom(
                      //         dropdownButtonTitle: ' الشهر ',
                      //         function: (newValue) {
                      //           cubit.onChangeMonthsDropDownButton(newValue);
                      //         },
                      //         items: [
                      //           'يناير',
                      //           'فبراير',
                      //           'مارس',
                      //           'ابريل',
                      //           'مايو',
                      //           'يونيو',
                      //           'يوليو',
                      //           'اغسطس',
                      //           'سبتمبر',
                      //           'اكتوبر',
                      //           'نوفمبر',
                      //           'ديسمبر'
                      //         ].map((valueItem) {
                      //           return DropdownMenuItem(
                      //             value: valueItem,
                      //             child: Text(valueItem),
                      //           );
                      //         }).toList(),
                      //         value: cubit.MonthsValueChoose,
                      //       ),
                      //     ),
                      //     Expanded(
                      //       child: Directionality(
                      //         textDirection: TextDirection.rtl,
                      //         child: defaultFormField(
                      //             controller: dateController,
                      //             type: TextInputType.text,
                      //             label: 'السنة',
                      //             prefixIcon: Icons.timeline_outlined,
                      //             validator: (value) {
                      //               if (value.isEmpty) {
                      //                 return 'هذا الفيلد مطلوب';
                      //               }
                      //               return null;
                      //             }),
                      //       ),
                      //     ),
                      //   ],
                      // ),





                      SizedBox(
                        height: 15.0,
                      ),
                      BuildDropBottom(
                        dropdownButtonTitle: ' اختر الرسن',
                        function: (newValue) {
                          cubit.onChangeRasanDropDownButton(newValue);
                        },
                        items: [
                          ' كحيلان',
                          ' صقلاوي',
                          ' دهمان',
                          ' عبيان',
                          ' هدبان',
                        ].map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                        value: cubit.rasanValueChoose,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      BuildDropBottom(
                        dropdownButtonTitle: ' اختر النوع',
                        function: (newValue) {
                          cubit.onChangeGanderItem(newValue);
                        },
                        items: [
                          ' ذكر',
                          ' انثي',
                        ].map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                        value: cubit.ganderValueChoose,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      BuildDropBottom(
                        dropdownButtonTitle: ' اختر  اللون',
                        function: (newValue) {
                          cubit.onChangeColorItem(newValue);
                        },
                        items: [
                          'ابيض',
                          'اشهب',
                          'ادهم',
                          'الأحمر(الكميت)',
                          'الأشقر(الأصفر)',
                          'بني',
                          'الرمادي (الأشيب)'
                        ].map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                        value: cubit.colorValueChoose,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      defaultFormField(
                          controller: sourceLocationController,
                          type: TextInputType.text,
                          label: 'عنوان هذا المصدر',
                          prefixIcon: Icons.location_pin,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'هذا الفيلد مطلوب';
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 15.0,
                      ),
                      ConditionalBuilder(
                          condition: state is! CreateHorseLoadingState,
                          builder: (context) => defaultButton(
                              text: 'حفظ',
                              function: () {
                                print(cubit.sectionValueChoose as String);
                                print(microShip);
                                if (formKey.currentState!.validate()) {
                                  cubit.uploadHorseImage(
                                    horseName: name,
                                    fatherName: fatherName,
                                    fatherName1:fatherName1,
                                    fatherName2:fatherName2,
                                    motherName: motherName,
                                    motherName1: motherName1,
                                    motherName2:motherName2,
                                    sectionNUmber: sectionNum,
                                    sectionName:
                                    cubit.sectionValueChoose as String,
                                    boxNum: boxNum,
                                    owner: horseOwner,
                                    dateTime: birthDate,
                                    initPrice: price,
                                    microshipCode: microShip,
                                    type: cubit.rasanValueChoose as String,
                                    color: cubit.colorValueChoose as String,
                                    gander: cubit.ganderValueChoose as String,
                                    specific: cubit.specificValueChoose as String,
                                    nationality:
                                    cubit.nationlityValueChoose as String,
                                    source: cubit.sourceValueChoose as String,
                                    sourceLocation: sourceLocationController.text,
                                  );
                                }
                              }),


                          fallback: (context) =>
                              Center(child: CircularProgressIndicator())),




                    ],
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context,state){

        });
  }
}
