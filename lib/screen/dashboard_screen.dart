import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:urban_culture_assessment/resources/app_colors.dart';
import 'package:urban_culture_assessment/screen/routine_screen.dart';
import 'package:urban_culture_assessment/screen/streak_screen.dart';

class DashboardScreen extends HookWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final selectedIndex = useState(0);
    final screens = [RoutineScreen(), StreakScreen()];
    return Scaffold(
      body: screens[selectedIndex.value],
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        selectedIndex: selectedIndex.value,
        onDestinationSelected: (final int index) {
          selectedIndex.value = index;
        },
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.search,
              color: AppColors.cherry,
            ),
            label: 'Routine',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.people_alt_sharp,
              color: AppColors.cherry,
            ),
            label: 'Streaks',
          ),
        ],
      ),
    );
  }
}
