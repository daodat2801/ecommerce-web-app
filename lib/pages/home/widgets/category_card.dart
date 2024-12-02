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
          LayoutBuilder(
              builder: (context, constraints) => Image.asset(
                    imagePath,
                    fit: BoxFit.fitHeight,
                    height: constraints.maxHeight,
                  )),
          Positioned(
              left: 20,
              bottom: 20,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    textAlign: TextAlign.center,
                    name,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
