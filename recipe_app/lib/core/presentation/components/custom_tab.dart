import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  final List<String> labels;
  final int selectedIndex;
  const CustomTab({super.key, required this.labels, this.selectedIndex = 0});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
