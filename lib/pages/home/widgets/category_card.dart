import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final int cellsOfHeight;
  final int cellsOfWidth;
  const CategoryCard(
      {super.key,
      required this.name,
      required this.imagePath,
      this.cellsOfHeight = 1,
      this.cellsOfWidth = 1});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: cellsOfWidth,
      mainAxisCellCount: cellsOfHeight,
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
          Positioned(
              left: 10,
              bottom: 10,
              right: 15,
              child: Container(
                color: Colors.white,
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                ),
              ))
        ],
      ),
    );
  }
}
