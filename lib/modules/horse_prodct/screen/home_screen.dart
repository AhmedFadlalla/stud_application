import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/layouts/home_layout/cubit/states.dart';
import 'package:graduation_project/layouts/home_layout/home_layout.dart';
import 'package:graduation_project/models/product.dart';
import 'package:graduation_project/shared/styles/icon_broken.dart';
import 'package:intl/intl.dart';

import '../../../layouts/home_layout/cubit/cubit.dart';
import '../../../shared/component/components.dart';
import '../home_body.dart';


class ProductHomeScreen extends StatelessWidget {
  const ProductHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var productNameController=TextEditingController();
    var priceController=TextEditingController();
    var detailsController=TextEditingController();
    var phoneController=TextEditingController();
   var datetimeController=TextEditingController();
    var amountController=TextEditingController();
    var facebookAccountController=TextEditingController();

   GlobalKey<FormState> formKey=GlobalKey<FormState>();
    var cubit=HorseCubit.get(context);
    var horseProductImage = cubit.productImage;
   Size size = MediaQuery.of(context).size;
    return BlocConsumer<HorseCubit,HorseStates>(

        builder: (context, state){

          phoneController.text=cubit.userModel!.phone;
          datetimeController.text=DateFormat.yMMMd().format(DateTime.now());
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showDialog(context: context, builder: (context) => Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50,),
                  child: AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                    title: Center(child: Text('أضف البيانات', style: TextStyle(fontSize: 25.0,),),),
                    content: BlocConsumer<HorseCubit, HorseStates>(
                      listener: (context, state) {},
                      builder: (context,state){
                        return Form(
                            key: formKey,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  InkWell(
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CircleAvatar(
                                          radius: 65.0,
                                          backgroundColor:
                                          Theme.of(context).scaffoldBackgroundColor,
                                          child: CircleAvatar(
                                            radius: 60.0,
                                            backgroundImage:cubit.productImage==null ?
                                            NetworkImage('https://media.istockphoto.com/photos/veterinarian-examining-the-horse-picture-id154954791')
                                                :FileImage(cubit.productImage!)as ImageProvider,
                                          ),
                                        ),
                                        Icon(Icons.photo_camera),
                                      ],
                                    ),
                                    onTap: (){
                                      cubit.getProductImage();
                                    },
                                  ),
                                  defaultFormField(controller: productNameController, type: TextInputType.name,
                                    validator: (value){
                                      if(value.isEmpty){
                                        return 'يجب ادخال اسم المنتج';
                                      }
                                      return null;
                                    },
                                    label: 'اسم المنتج', prefixIcon: Icons.drive_file_rename_outline,)
                                  , SizedBox(height: 15,),
                                  defaultFormField(
                                      controller: priceController,
                                      type: TextInputType.text,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'يجب ادخال سعر المنتج ';
                                        }
                                        },
                                      label: 'السعر', prefixIcon: Icons.price_check_outlined),
                                  SizedBox(height: 15,),
                                  defaultFormField(
                                      controller: phoneController,
                                      type: TextInputType.text,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'يجب ادخال رقم الهاتف ';
                                        }
                                      },
                                      label: 'رقم التليفون', prefixIcon: Icons.phone),
                                  SizedBox(height: 15,),
                                  defaultFormField(
                                      controller: detailsController,
                                      type: TextInputType.text,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'يجب ادخال البيانات ';
                                        }
                                      },
                                      label: 'تفاصيل المنتج', prefixIcon: Icons.medical_services),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  defaultFormField(
                                      controller: datetimeController,
                                      type: TextInputType.text,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'يجب ادخال البيانات ';
                                        }
                                      },
                                      label: 'التاريخ',
                                      prefixIcon: Icons.date_range_sharp,
                                    prefixIconTapFunction: (){
                                      showDatePicker(context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.parse('1990-01-01'),
                                          lastDate:DateTime.now()).then((value) {
                                        datetimeController.text=DateFormat.yMMMd().format(value!);});
                                    }
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  defaultFormField(
                                      controller: amountController,
                                      type: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'يجب ادخال البيانات ';
                                        }
                                      },
                                      label: 'الكمية ',
                                      prefixIcon: Icons.numbers,
                                      prefixIconTapFunction: (){
                                      }
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  defaultButton2(
                                    text: 'حفظ ',
                                    function: () {
                                      if(formKey.currentState!.validate()){
                                        HorseCubit.get(context).uploadHorseProductImage(
                                            phone: phoneController.text,
                                          productInfo: detailsController.text,
                                          productName: productNameController.text,
                                          productPrice: priceController.text, context: context,
                                            dateTime: datetimeController.text,
                                            amount: amountController.text
                                        ).then((value){

                                          cubit.getProductData();
                                          // HorseCubit.get(context).getProduct(hId: DoctorCubit.get(context).horseId);
                                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added')
                                            ,backgroundColor: Colors.green,));
                                          Navigator.pushReplacement(
                                            context, //my place

                                            MaterialPageRoute(
                                              builder: (context) => HomeScreenLayout(),
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // searchbord(),
                  SizedBox(height: 5,),
                  SizedBox(
                    height: 10,
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(top: 70),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //         topLeft: Radius.circular(40),
                  //         topRight: Radius.circular(40)),
                  //   ),
                  // ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: cubit.products.length,
                    itemBuilder: (context, index) =>ProductCard(size,cubit.products[index]),
                    separatorBuilder: ( context,  index) => myDivider(),

                  )
                ],
              ),
            ),
          );
        } ,
        listener: (context,state){});
  }
  Widget  ProductCard(var size,HorseProductModel model)=> InkWell(
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
                // color: isDark==true ?Color(0xFF4DB6AC):Color(0xFF4DB6AC),
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
                width: 200,
                child: Container(
                  height:80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(70),
                    image: DecorationImage(
                      image: NetworkImage('${model.image}'),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          'اسم المنتج ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '${model.name}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold

                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ))
        ],
      ),

    ),
    onTap: (){
      // OwnerCubit.get(context).getHorses(secId: model.secId);

    },
  );

  AppBar homeappbar() {
    return AppBar(
      title: Text("Hello in my app"),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ],
    );
  }
}
