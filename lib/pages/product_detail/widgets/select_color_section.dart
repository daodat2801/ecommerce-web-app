import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';

class SelectColorSection extends StatefulWidget {
  final List<String> listProductColor;

  const SelectColorSection({super.key, required this.listProductColor});

  @override
  SelectColorSectionState createState() => SelectColorSectionState();
}

class SelectColorSectionState extends State<SelectColorSection> {
  int? selectedIndex;
  int? hoveredIndex;

  Color _getColorFromName(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'blue':
        return AppColors.primaryBlue;
      case 'red':
        return Colors.red;
      case 'green':
        return Colors.green;
      case 'yellow':
        return Colors.yellow;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: widget.listProductColor.asMap().entries.map((entry) {
        int index = entry.key;
        String colorName = entry.value;
        Color color = _getColorFromName(colorName);

        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  hoveredIndex = index;
                });
              },
              onExit: (_) {
                setState(() {
                  hoveredIndex = null;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  border: Border.all(
                    color: selectedIndex == index
                        ? AppColors.textColorGreen
                        : AppColors.dividerLightGrayColor,
                    width: 2, // Border width
                  ),
                ),
                transform: Matrix4.identity()..scale(
                  hoveredIndex == index ? 1.2 : 1.0,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
