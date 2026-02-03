import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:no_ai_sns/features/upload/presentation/pages/upload_page.dart';

class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = _navIndexFromBranch(widget.navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    if (selectedIndex != 2) {
      final navIndex = _navIndexFromBranch(widget.navigationShell.currentIndex);
      if (navIndex != selectedIndex) {
        selectedIndex = navIndex;
      }
    }

    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => _onTap(context, index),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.brand,
        unselectedItemColor: const Color(0xFF94A3B8),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
            icon: _buildAddIcon(index: 2, selectedIndex: selectedIndex),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    // 가운데 "+" 아이콘
    if (index == 2) {
      context.push(UploadPage.routeName);
      return;
    }

    setState(() {
      selectedIndex = index;
    });

    final int branchIndex = index < 2 ? index : index - 1;
    widget.navigationShell.goBranch(
      branchIndex,
      initialLocation: branchIndex == widget.navigationShell.currentIndex,
    );
  }

  int _navIndexFromBranch(int branchIndex) {
    if (branchIndex >= 2) {
      return branchIndex + 1;
    }
    return branchIndex;
  }

  Widget _buildAddIcon({required int index, required int selectedIndex}) {
    final isSelected = (index == selectedIndex);

    if (isSelected) {
      return Container(
        width: 44,
        height: 44,
        decoration: const BoxDecoration(
          color: AppColors.brand,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.add, color: Colors.white, size: 24),
      );
    }

    return Container(
      width: 44,
      height: 44,
      decoration: const BoxDecoration(
        color: Color(0xFF29262F),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.add,
        color: AppColors.textSecondaryDark,
        size: 24,
      ),
    );
  }
}
