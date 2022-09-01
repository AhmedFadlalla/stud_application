import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/layouts/home_layout/cubit/cubit.dart';
import 'package:graduation_project/layouts/home_layout/home_layout.dart';
import 'package:graduation_project/modules/manage_stud_screens/info_screen.dart';
import 'package:graduation_project/shared/component/components.dart';
import 'package:graduation_project/shared/component/constants.dart';
import 'package:graduation_project/shared/network/local/cach_helper.dart';

import '../../layouts/home_layout/cubit/states.dart';
import '../../layouts/owner_home_layout/owner_home_Layout.dart';
import '../horse_prodct/screen/home_screen.dart';
import '../sona/homepage.dart';
import '../user_accom_screens/user_accom_screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String>imagelist=[
      'https://media.istockphoto.com/photos/the-bay-horse-gallops-on-the-grass-picture-id1209008843?k=20&m=1209008843&s=612x612&w=0&h=wAVL5kIf4mBmkCIb5k-hQtjZ8W7k8FPem-MoLj4BWfo=',
      'https://images.pexels.com/photos/1996333/pexels-photo-1996333.jpeg?cs=srgb&dl=pexels-helena-lopes-1996333.jpg&fm=jpg',
      'https://external-preview.redd.it/GX3KFHJ9aprun34K90x2YL5ivkbfYJYer3RGvYEtPVU.jpg?auto=webp&s=fb384989c3515b62fe01b769bdbcb217f74d54a5',
      'https://live.staticflickr.com/8831/17107585073_f1fb6a9dac_b.jpg',
      'https://thumbs.dreamstime.com/b/appaloosa-horse-adult-galloping-meadow-appaloosa-172898158.jpg',
      'https://www.horsefactbook.com/wp-content/uploads/2022/03/mixed-herd.webp',
      'https://www.horsefactbook.com/wp-content/uploads/2022/03/feature-1024x683.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Two_year_old_budjonny_stallions_in_russia.jpg/1200px-Two_year_old_budjonny_stallions_in_russia.jpg',
      'https://media.istockphoto.com/photos/horses-looking-at-camera-picture-id185289778?k=20&m=185289778&s=612x612&w=0&h=MGPPU75bNeMg1NwfMRxGSMp03tdhP91PoeafQGlB5ko=',
      'https://p0.pxfuel.com/preview/23/192/19/green-grass-field-horse.jpg',
    ];
    return BlocConsumer<HorseCubit,HorseStates>(
        builder: (context, state) {
      return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),

                child: Center(
                  child: SizedBox(
                    width:500 ,
                    height:230 ,
                    child: CarouselSlider(

                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        // autoPlayAnimationDuration: Duration(milliseconds: 500),
                      ),

                      items:imagelist.map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(
                              e,

                              fit: BoxFit.cover,
                            )

                          ],
                        ),

                      )).toList(),



                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,

                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: buildImageInteractionCard(
                            title: 'ادارة الاسطبل',
                            image: 'https://apis.xogrp.com/media-api/images/cd833cb0-6160-11e5-9816-22000aa61a3e',
                          ),
                          onTap: (){
                            navigateTo(context,InfoScreen());}

                          ,
                        ),
                      ),
                      SizedBox(width: 50.0,),
                      Expanded(
                        child: InkWell(
                          child: buildImageInteractionCard(
                            title: 'الايواء',
                            image: 'https://www.alkonouz.com/wp-content/uploads/2020/07/%D8%A7%D8%B3%D8%B7%D8%A8%D9%84-%D8%BA%D9%84%D8%A7%D9%81.jpg',
                          ),
                          onTap: (){
                            navigateTo(context, UserAccomindationHomeScreen());
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              /////////////////الصف  التاني ///////////////////////////////
              // EdgeInsets.symmetric(horizontal: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [




                      Expanded(
                        child: InkWell(
                          child: buildImageInteractionCard(
                            title: 'السنةالنبوية',
                            image: 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/8b45cb19272075.562d79509ff86.jpg',
                          ),
                          onTap: (){
                            navigateTo(context, Hompag());

                          },
                        ),
                      ),
                      SizedBox(width: 50.0,),
                      Expanded(
                        child: InkWell(
                          child: buildImageInteractionCard(
                            title: 'مستلزمات الخيل ',
                            image: 'https://m.media-amazon.com/images/I/61XBNNddj4L.jpg',
                          ),
                          onTap: (){

                            navigateTo(context, ProductHomeScreen());
                          },
                        ),
                      ),



                    ],
                  ),
                ),
              ),
              /////////////////////////////////////////////////////

              //////////////////////

              ///////////////////////////////

              ////////////////////////////////

            ],
          ),
        );
    }, listener: (context,state){
    });
  }
}
Widget buildImageInteractionCard({
  String? title,
  String image = 'https://scontent.faly1-2.fna.fbcdn.net/v/t1.6435-9/148577639_'
      '262626785223454_7510717016690158095_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_'
      'nc_eui2=AeHs-r6YwFdWFo2Edr8RIS-EPVM5h__RUno9UzmH_9FSer_7C-3PiaHYA9IJJyUQj7o_'
      'AG9_botUuyukAMRS8ACA&_nc_ohc=i0lUiHsEkr4AX8CGYbt&_nc_ht=scontent.faly1-2.fna&oh=00_AT_'
      'lqFj3jky-nIqgKCOSW-qjf9UeZNzbbdRDSu3Bb3hY9A&oe=6248696A',
}) =>
    Card(
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
                  image,
                ),
                width: double.infinity,
                height: 180.0,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black.withOpacity(0.4),
                padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 10,
                ),
                width: double.infinity,
                child: Text(
                  title ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

