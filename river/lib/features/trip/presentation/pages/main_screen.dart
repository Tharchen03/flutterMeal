// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/features/trip/presentation/pages/add_trip_screen.dart';
import 'package:river/features/trip/presentation/pages/mt_trip_screen.dart';
import 'package:river/features/trip/presentation/providers/trip_provider.dart';

class MainScreen extends ConsumerWidget {
  // const MainScreen({super.key});
  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);

  MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
       ref.watch(tripleListNotifierProvider.notifier).loadTrips();
       
    _pageController.addListener(() {
      _currentPage.value = _pageController.page!.round();
    });
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            'Hi There!!',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'Travelling Today!!',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ]),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          MyTripsScreen(),
          AddTripScreen(),
          Text('3'),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: _currentPage,
          builder: (contex, pageindex, child) {
            return BottomNavigationBar(
              currentIndex: pageindex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.list), label: 'My Trips'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add), label: 'Add Trips'),
                BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Maps'),
              ],
              onTap: (index) {
                _pageController.jumpToPage(index);
              },
            );
          }),
    );
  }
}
