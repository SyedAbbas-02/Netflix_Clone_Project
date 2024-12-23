import 'package:flutter/material.dart';

import 'package:flutter/services.dart';



import 'screens/home_screen.dart';



import 'screens/coming_soon_screen.dart';



import 'screens/downloads_screen.dart';



import 'screens/more_screen.dart';







void main() {



  WidgetsFlutterBinding.ensureInitialized();



  SystemChrome.setSystemUIOverlayStyle(



    const SystemUiOverlayStyle(



      statusBarColor: Colors.transparent,



      statusBarIconBrightness: Brightness.light,



    ),



  );



  runApp(const MyApp());



}







class MyApp extends StatelessWidget {



  const MyApp({super.key});







  @override



  Widget build(BuildContext context) {



    return MaterialApp(



      title: 'Netflix Clone',



      debugShowCheckedModeBanner: false,



      theme: ThemeData.dark().copyWith(



        scaffoldBackgroundColor: Colors.black,



        primaryColor: Colors.red,



        colorScheme: const ColorScheme.dark(



          primary: Colors.red,



          secondary: Colors.red,



          surface: Colors.black,



        ),



        appBarTheme: const AppBarTheme(



          backgroundColor: Colors.black,



          elevation: 0,



        ),



        bottomNavigationBarTheme: const BottomNavigationBarThemeData(



          backgroundColor: Colors.black,



          selectedItemColor: Colors.white,



          unselectedItemColor: Colors.grey,



          type: BottomNavigationBarType.fixed,



          elevation: 8,



        ),



      ),



      home: const MainScreen(),



    );



  }



}







class MainScreen extends StatefulWidget {



  const MainScreen({super.key});







  @override



  State<MainScreen> createState() => _MainScreenState();



}







class _MainScreenState extends State<MainScreen> {



  int _selectedIndex = 0;



  final PageController _pageController = PageController();







  final List<Widget> _screens = [



    const HomeScreen(),



    const ComingSoonScreen(),



    const DownloadsScreen(),



    const MoreScreen(),



  ];







  void _onItemTapped(int index) {



    setState(() {



      _selectedIndex = index;



      _pageController.animateToPage(



        index,



        duration: const Duration(milliseconds: 300),



        curve: Curves.easeInOut,



      );



    });



  }







  @override



  void dispose() {



    _pageController.dispose();



    super.dispose();



  }







  @override



  Widget build(BuildContext context) {



    return Scaffold(



      body: PageView(



        controller: _pageController,



        physics: const NeverScrollableScrollPhysics(),



        children: _screens,



      ),



      bottomNavigationBar: BottomNavigationBar(



        currentIndex: _selectedIndex,



        onTap: _onItemTapped,



        items: const [



          BottomNavigationBarItem(



            icon: Icon(Icons.home_outlined),



            activeIcon: Icon(Icons.home),



            label: 'Home',



          ),



          BottomNavigationBarItem(



            icon: Icon(Icons.video_library_outlined),



            activeIcon: Icon(Icons.video_library),



            label: 'Coming Soon',



          ),



          BottomNavigationBarItem(



            icon: Icon(Icons.download_outlined),



            activeIcon: Icon(Icons.download),



            label: 'Downloads',



          ),



          BottomNavigationBarItem(



            icon: Icon(Icons.menu),



            activeIcon: Icon(Icons.menu),



            label: 'More',



          ),



        ],



      ),



    );



  }



}






























