
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/layouts/doc_home_layout/doc_home_layout.dart';
import 'package:graduation_project/layouts/home_layout/cubit/cubit.dart';
import 'package:graduation_project/layouts/owner_home_layout/owner_home_Layout.dart';
import 'package:graduation_project/modules/Doctor_Screens/complete_info.dart';
import 'package:graduation_project/modules/registeration_screen/login_screen/login_screen.dart';
import 'package:graduation_project/modules/sona/homepage.dart';
import 'package:graduation_project/modules/splash_screen/splashScreen.dart';
import 'package:graduation_project/shared/bloc_observer.dart';
import 'package:graduation_project/shared/component/constants.dart';
import 'package:graduation_project/shared/cubit/cubit.dart';
import 'package:graduation_project/shared/cubit/states.dart';
import 'package:graduation_project/shared/network/local/cach_helper.dart';
import 'package:graduation_project/shared/styles/themes.dart';
import 'layouts/doc_home_layout/Doctor_Cubit/doc_cubit.dart';
import 'layouts/home_layout/home_layout.dart';
import 'layouts/owner_home_layout/cubit/owner_cubit.dart';
import 'modules/Doctor_Screens/aleka/alekanew.dart';
import 'modules/owner-screen/aleka_screens/productss.dart';


void main(context) async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp();
  await CachHelper.init();
  Widget widget;
  uId = CachHelper.getData(key: 'uId');
  oId =CachHelper.getData(key: 'oId');
  dId =CachHelper.getData(key: 'dId');
  dDone =CachHelper.getData(key: 'done');

  isDark = CachHelper.getData(key: 'isDark');
  print(uId);
  print(oId);
  print(dId);
  print(dDone);


  if (uId != null && oId==null && dId == null) {
    widget = HomeScreenLayout();
  }
  else if(uId == null && oId!=null && dId == null||uId != null && oId!=null && dId == null)
  {
    widget=OwnerHomeScreenLayout();
  }

  else if(uId == null && oId==null && dId !=null)
  {
    if(dDone==1)
      widget=DocHomeScreenLayout();
    else
      widget=DoctorCompleteInfo();
  }
  else if (uId == null && oId==null && dId ==null){
    widget = LoginScreen();
  }
  else{
    widget=SplashScreen();
  }

  runApp(MyApp(
    startWidget: widget,
    isDark: isDark,
  ));
}

class MyApp extends StatelessWidget {
  final bool? isDark;
  final Widget? startWidget;

  MyApp({this.startWidget,this.isDark});

  @override
  Widget build(BuildContext context) {
    return new MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HorseCubit()
            ..getUserData()
            ..getAllUsers()
            ..getAllPosts()
            ..getAccomData()..getProductData()
          ),
          BlocProvider(
              create: (context) => OwnerCubit()
            ..getOwnerData()
            ..getAllPosts()
            ..getUserData()
            ..getSectionsData()
          ),
          BlocProvider(create: (context) => DoctorCubit()
            ..getDocData()
            ..getAllPosts()
            ..getAllUsers()
          ),
          BlocProvider(
              create: (context) => appCubit()..changeMode(fromShared: isDark)),
        ],
        child:  BlocConsumer<appCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: appCubit.get(context).isDark==true
                  ? ThemeMode.dark
                  : ThemeMode.light,
              home:startWidget,
            );
          },
        ));
  }
}
