import 'package:flutter/material.dart';
import 'package:graduation_project/layouts/home_layout/cubit/cubit.dart';
import 'package:graduation_project/modules/horse_prodct/product_card.dart';
import 'package:graduation_project/modules/horse_prodct/screen/details_screen.dart';
import 'package:graduation_project/shared/styles/colors.dart';

import '../../models/product.dart';
import '../../shared/component/components.dart';
import '../../shared/styles/icon_broken.dart';
import 'details/search.dart';


class Homebody extends StatelessWidget {
  const Homebody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var productNameController=TextEditingController();
    var priceController=TextEditingController();
    var detailsController=TextEditingController();
    var phoneController=TextEditingController();
    var whatsappNumberController=TextEditingController();
    var facebookAccountController=TextEditingController();

    var cubit=HorseCubit.get(context);
    var horseProductImage = cubit.horseImage;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 50,
                  left: 50,
                ),
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  title: Center(
                    child: Text(
                      ' تفاصيل المنتج',
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  actions: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.white,),
                          child: IconButton(
                              onPressed: () {
                              },
                              icon: CircleAvatar(
                                radius: 90.0,
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 70.0,

                                ),
                              )),
                        ),
                      ),
                    ),

                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: defaultFormField(
                          type: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'يجب ادخال البيانات ';
                            }
                          },
                          label: 'اسم  المنتج ',
                          prefixIcon: Icons.ad_units,
                          controller: productNameController),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: defaultFormField(

                          type: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'يجب ادخال البيانات ';
                            }
                          },
                          label:  ' السعر',
                          prefixIcon: Icons.location_on_outlined,
                          controller: priceController),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: defaultFormField(
                          type: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'يجب ادخال البيانات ';
                            }
                          },
                          label: '  تفاصيل عن المنتج ',
                          prefixIcon: Icons.details,
                          controller: detailsController),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    


                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: defaultFormField(
                          type: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'يجب ادخال البيانات ';
                            }
                          },
                          label: ' ادخل رقم الواتساب ',
                          prefixIcon: Icons.details,
                          controller: whatsappNumberController
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),





                    defaultbutton(
                      text: 'حفظ',
                      function: () {
                        cubit.uploadHorseProductImage(
                            productName: productNameController.text,
                            productPrice: priceController.text,
                            productInfo: detailsController.text,
                            phone: whatsappNumberController.text,
                            context: context);
                      },
                      size: 20.0,
                      background: Colors.grey, width: double.infinity,
                    )


                  ],
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          );



        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          searchbord(),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Stack(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) =>ProductCard(),
              separatorBuilder: ( context,  index) => myDivider(),

            )
          ],
            ),
          )
        ],
      ),
    );
  }


  Widget  ProductCard()=> Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    height: 190.0,
    child: InkWell(
      onTap: () {

      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 190.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
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
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                height: 140,
                width: 200,
                child: Container(
                  height:80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(70),
                    image: DecorationImage(
                      image: AssetImage(''),
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
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'hhh',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        '',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(color: Colors.black, fontSize: 14,),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 20.0, right: 10.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.circular(22)),
                        child: Text(
                          '10',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    ),

  );
}
// productcard(
// itemindex: index,
// productt: ,
// press: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => DetailsScreen(proo:products[index],)));
// },
// )