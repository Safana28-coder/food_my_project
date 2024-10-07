import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/SigninSignup/screen/HomePage.dart';
import 'features/SigninSignup/screen/SignUp.dart';
import 'features/SplashScreen/Screen/loadingFile.dart';
import 'features/SplashScreen/Screen/splashScreen.dart';
import 'features/foodSelection/screen/menuLayout.dart';
import 'features/foodSelection/screen/mouzyFood.dart';
import 'features/mainHomepage/Screen/BottomNavigationPage.dart';
import 'features/mainHomepage/Screen/MainHomepage.dart';
import 'features/profile/AddCredit.dart';
import 'features/profile/newcard.dart';
import 'features/profile/password.dart';
import 'features/profile/payment.dart';
import 'features/profile/paypal.dart';
import 'features/profile/profile.dart';
import 'features/profile/voucher.dart';
import 'firebase_options.dart';


var width;
var height;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  runApp(DevicePreview(
    enabled: !kReleaseMode,
      builder: (context) =>  MyApp()));
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {

     width=MediaQuery.of(context).size.width;
     height=MediaQuery.of(context).size.height;

     return GestureDetector(
       onTap: () {
       FocusManager.instance.primaryFocus!.unfocus();
     },
       child: MaterialApp(
         debugShowCheckedModeBanner:  false,
         locale: DevicePreview.locale(context),
         builder: DevicePreview.appBuilder,
         home:   Loadingfile(),
         theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme()
         ),
       ),
     );
   }
 }
