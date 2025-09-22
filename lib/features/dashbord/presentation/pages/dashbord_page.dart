import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/font_size.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../user_data/presentation/pages/user_data_page.dart';

@RoutePage()
class DashbordPage extends StatefulWidget {
  const DashbordPage({super.key});

  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const HomePage(), const UserDataPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.kColorWhite75, width: 1),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.kColorPrimaryText,
          selectedLabelStyle: kTextStyleDMSans600.copyWith(
            fontSize: FontSize.f18,
            color: AppColors.kColorPrimary,
          ),
          unselectedLabelStyle: kTextStyleDMSans500.copyWith(
            fontSize: FontSize.f16,
            color: AppColors.kColorCrlBorder,
          ),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Data'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.kColorPrimary,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
