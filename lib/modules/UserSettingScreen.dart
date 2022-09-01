import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/layouts/home_layout/cubit/states.dart';
import 'package:graduation_project/modules/profile_screen/profile_screen.dart';
import 'package:graduation_project/shared/component/components.dart';
import 'package:graduation_project/shared/network/local/cach_helper.dart';
import 'package:graduation_project/shared/cubit/cubit.dart';

import '../../shared/component/constants.dart';
import '../../shared/styles/colors.dart';
import '../layouts/home_layout/cubit/cubit.dart';

class UserSettingsScreen extends StatelessWidget {
  const UserSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HorseCubit,HorseStates>(
      listener: (context, state) => {},
      builder: (context,state){
        double height=MediaQuery.of(context).size.height;
        return Column(
          children: [

            SizedBox(height: height*0.03,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'Menu',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),


            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage: NetworkImage(
                              '${HorseCubit.get(context).userModel!.image}',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${HorseCubit.get(context).userModel!.name}',
                                style: Theme.of(context).textTheme.bodyText1,),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                  'See your profile',
                                  style: Theme.of(context).textTheme.caption)

                            ],

                          ),

                        ],
                      )

                    ],
                  ),
                ),
              ),
              onTap: (){
                navigateTo(context, UserProfileScreen());
              },
            ),
            myDivider(),
            InkWell(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.dark_mode,
                              size: 40.0,
                              color: isDark==true ? Colors.white:Colors.black,
                            ),
                          ),
                           Text(isDark==true?'Light Mode':'Dark Mode',
                            style: Theme.of(context).textTheme.bodyText1,),



                        ],
                      ),
                    ),
                  ),
                ],
              ),
              onTap: (){
                appCubit.get(context).changeMode();
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: defaultButton(
                  function: (){
                      // HorseCubit.get(context).signOut(context: context);


                  },
                  text: 'Log out'),
            )


          ],
        );
      },
    );
  }
}
