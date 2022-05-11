import 'package:flutter/material.dart';

import 'Chat_app_ui_copy1/modules/main_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat App UI #1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),

    );
  }
}

// import 'package:flutter/material.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:google_fonts/google_fonts.dart';
//
// import 'Chat_app_ui_copy3/screens/aboutpage.dart';
// import 'Chat_app_ui_copy3/screens/chatpage.dart';
// import 'Chat_app_ui_copy3/screens/homepage.dart';
// import 'Chat_app_ui_copy3/screens/loginpage.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// // ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         // This changes font for the entire app using the Google Fonts package
//         // from pub.dev : https://pub.dev/packages/google_fonts
//         textTheme: GoogleFonts.nunitoSansTextTheme(
//           Theme.of(context).textTheme,
//         ),
//         // You can change theme colors to directly change colors for the whole
//         // app.
//         primaryColor:  const Color(0xff5B428F),
//         // ignore: deprecated_member_use
//         accentColor: const Color(0xffF56D58),
//         primaryColorDark: const Color(0xff262833),
//         primaryColorLight: const Color(0xffFCF9F5),
//       ),
//       darkTheme: ThemeData(
//         // This changes font for the entire app using the Google Fonts package
//         // from pub.dev : https://pub.dev/packages/google_fonts
//         textTheme: GoogleFonts.nunitoSansTextTheme(
//           Theme.of(context).textTheme,
//         ),
//         // You can change theme colors to directly change colors for the whole
//         // app.
//         primaryColor: const Color(0xff5B428F),
//         // ignore: deprecated_member_use
//         accentColor: const Color(0xffF56D58),
//         primaryColorDark: const Color(0xffFFFFFF),
//         primaryColorLight: const Color(0xff000000),
//       ),
//       debugShowCheckedModeBanner: false,
//       routes: {
//         Loginpage.id: (context) => Loginpage(),
//         Aboutpage.id: (context) => Aboutpage(),
//         ChatPage.id: (context) => ChatPage(),
//         Homepage.id: (context) => Homepage(),
//       },
//       initialRoute: Aboutpage.id,
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:projects/Login&Welcome&SignUp_Ui/Screens/Welcome/welcome_screen.dart';
// import 'package:projects/Login&Welcome&SignUp_Ui/constants.dart';
//
// void main() => runApp(MyApp());
//
// // ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Welcome and Login and Sign Up UI ',
//       theme: ThemeData(
//         primaryColor: kPrimaryColor,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: WelcomeScreen(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// import 'package:projects/On_boarding_ui_sharepre/screens/home/home_screen.dart';
// import 'package:projects/On_boarding_ui_sharepre/screens/onboarding/screen_one.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// int? isviewed;
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   isviewed = prefs.getInt('onBoard');
//
//   runApp(MyApp());
//
// }
//
// // ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'OnBoarding Screen UI Using SharedPreferences',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//      home: isviewed != 0 ?OnboardingScreenOne() : HomeScreen(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:projects/Shop_app_ui_copy1/screens/home_screen.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// // ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Shop App UI #1',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         textTheme: const TextTheme(
//           headline1: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 30,
//             color: Colors.black87,
//           ),
//           headline2: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 18,
//             color: Colors.grey,
//           ),
//           headline4: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 18,
//             color: Colors.black,
//           ),
//           headline5: TextStyle(
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.w300,
//             fontSize: 15,
//           ),
//           caption: TextStyle(
//             fontFamily: 'Poppins',
//             color: Colors.grey,
//             fontSize: 13,
//           ),
//           button: TextStyle(
//             fontFamily: 'Poppins',
//             color: Colors.white,
//           ),
//         ),
//       ),
//       home: HomeScreen(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:projects/Shop_app_ui_copy2/widget_tree.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// // ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Shop App UI #2',
//       theme: ThemeData(
//           primarySwatch:Colors.blue,
//           // ignore: deprecated_member_use
//           accentColor: const Color(0xFFE7E9F5),
//           iconTheme: IconThemeData(color: Colors.black.withOpacity(0.4))),
//       home: WidgetTree(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:projects/Shop_app_ui_copy3/bottom.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Shop App UI #3',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home:  Botton(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:projects/Food_app_ui_copy1/bottom_bar.dart';
// import 'package:projects/Food_app_ui_copy1/cookie_page.dart';
//
// void main() => runApp(MyApp());
//
// // ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'Food app UI #1',
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
//
// // ignore: use_key_in_widget_constructors
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
//           onPressed: () {},
//         ),
//         title: const Text('Pickup',
//             style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontSize: 20.0,
//                 color: Color(0xFF545D68))),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: ListView(
//         padding: const EdgeInsets.only(left: 20.0),
//         children: <Widget>[
//           const SizedBox(height: 15.0),
//           const Text('Categories',
//               style: TextStyle(
//                   fontFamily: 'Varela',
//                   fontSize: 42.0,
//                   fontWeight: FontWeight.bold)),
//           const SizedBox(height: 15.0),
//           TabBar(
//               controller: _tabController,
//               indicatorColor: Colors.transparent,
//               labelColor: const Color(0xFFC88D67),
//               isScrollable: true,
//               labelPadding: const EdgeInsets.only(right: 45.0),
//               unselectedLabelColor: const Color(0xFFCDCDCD),
//               tabs: const [
//                 Tab(
//                   child: Text('Cookies',
//                       style: TextStyle(
//                         fontFamily: 'Varela',
//                         fontSize: 21.0,
//                       )),
//                 ),
//                 Tab(
//                   child: Text('Cookie cake',
//                       style: TextStyle(
//                         fontFamily: 'Varela',
//                         fontSize: 21.0,
//                       )),
//                 ),
//                 Tab(
//                   child: Text('Ice cream',
//                       style: TextStyle(
//                         fontFamily: 'Varela',
//                         fontSize: 21.0,
//                       )),
//                 )
//               ]),
//               // ignore: sized_box_for_whitespace
//               Container(
//                 height: MediaQuery.of(context).size.height - 50.0,
//                 width: double.infinity,
//                 child: TabBarView(
//                   controller: _tabController,
//                   children: [
//                     CookiePage(),
//                     CookiePage(),
//                     CookiePage(),
//                   ]
//                 )
//               )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {},
//       backgroundColor: const Color(0xFFF17532),
//       child: const Icon(Icons.fastfood),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomBar(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:projects/Food_app_ui_copy2/item.dart';
// import 'package:projects/Food_app_ui_copy2/item_description.dart';
//
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:google_fonts/google_fonts.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// // ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Food app UI #2',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         textTheme: GoogleFonts.poppinsTextTheme(),
//       ),
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Container(
//           width: double.infinity,
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 24.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//
//                     Container(
//                       width: 45,
//                       height: 45,
//                       decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         borderRadius: const BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                       ),
//                       child: const Icon(
//                         Icons.keyboard_arrow_left,
//                         color: Colors.black,
//                         size: 28,
//                       )
//                     ),
//
//                     const Icon(
//                       Icons.filter_list,
//                       color: Colors.black,
//                       size: 28,
//                     ),
//                   ],
//                 ),
//               ),
//
//               const SizedBox(
//                 height: 24.0,
//               ),
//
//               const Text(
//                 "Fruits and berries",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//
//               const SizedBox(
//                 height: 16.0,
//               ),
//
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search',
//                   hintStyle: const TextStyle(fontSize: 16),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                     borderSide: const BorderSide(
//                       width: 0,
//                       style: BorderStyle.none,
//                     ),
//                   ),
//                   filled: true,
//                   fillColor: Colors.grey[200],
//                   contentPadding: const EdgeInsets.all(20),
//                   prefixIcon: const Padding(
//                     padding: EdgeInsets.only(left: 24.0, right: 16.0),
//                     child: Icon(
//                       Icons.search,
//                       color: Colors.black,
//                       size: 28,
//                     ),
//                   ),
//                 ),
//               ),
//
//               const SizedBox(
//                 height: 16.0,
//               ),
//
//               Expanded(
//                 child: GridView.count(
//                   physics: const BouncingScrollPhysics(),
//                   childAspectRatio: 1 / 1.5,
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 20,
//                   mainAxisSpacing: 20,
//                   children: getGridItems().map((item) => renderGridItem(item)).toList(),
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget renderGridItem(Item item){
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => ItemDescription(item: item)),
//         );
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: item.color,
//           borderRadius: const BorderRadius.all(
//             Radius.circular(25),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//
//               Text(
//                 item.title,
//                 textAlign: TextAlign.left,
//                 style: const TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: <Widget>[
//                   Text(
//                     r"$ " + item.price,
//                     textAlign: TextAlign.left,
//                     style: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 8.0,
//                   ),
//                   Text(
//                     item.priceDescription,
//                     textAlign: TextAlign.left,
//                     style: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//
//               const SizedBox(
//                 height: 8.0,
//               ),
//
//               Expanded(
//                 child: Hero(
//                   tag: item.title,
//                   child: Image.asset(
//                     item.imageUrl,
//                   ),
//                 ),
//               ),
//
//               const SizedBox(
//                 height: 8.0,
//               ),
//
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.1),
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(25),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const <Widget>[
//                       Text(
//                         "Add to cart",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 8.0,
//                       ),
//                       Icon(
//                         Icons.add_shopping_cart,
//                         color: Colors.black,
//                         size: 16,
//                       )
//                     ],
//                   ),
//                 )
//               )
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:projects/Music_app_ui/homePage.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Music Player App UI',
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:projects/Hotel_app_ui/hotel_screen.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hotel App UI',
//       debugShowCheckedModeBanner: false,
//       home: TravelApp(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:projects/Travel_app_ui/screens/home_screen.dart';
//
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Travel App UI',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Color(0xFF3EBACE),
//         accentColor: Color(0xFFD8ECF1),
//         scaffoldBackgroundColor: Color(0xFFF3F5F7),
//       ),
//       home: HomeScreen(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:projects/Plant_app_ui/constants.dart';
//
// import 'Plant_app_ui/screens/home/home_screen.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Plant App UI',
//       theme: ThemeData(
//         scaffoldBackgroundColor: kBackgroundColor,
//         primaryColor: kPrimaryColor,
//         textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }
