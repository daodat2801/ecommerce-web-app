import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductSearchBar extends StatefulWidget {
  const ProductSearchBar({super.key});

  @override
  State<ProductSearchBar> createState() => _ProductSearchBarState();
}

class _ProductSearchBarState extends State<ProductSearchBar> {
  bool _isExpanded = false;
  final List<String> _suggestions = ['Apple', 'Banana', 'Cherry', 'Date', 'Grape'];
  final List<String> _filteredSuggestions = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        _buildAnimatedSearchBar(),
        Positioned(
          right: 0,
          child: IconButton(
            icon: SvgPicture.asset(AppSvgs.icSearch, height: 16, width: 16),
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
                if (!_isExpanded) _filteredSuggestions.clear();
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAnimatedSearchBar() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: _isExpanded ? 200 : 40,
      height: 40,
      decoration: BoxDecoration(
        border: _isExpanded ? Border.all(color: AppColors.textSecondaryColor2) : null,
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      padding: const EdgeInsets.only(left: 15, right: 40),
      child: _isExpanded
          ? Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return _suggestions.where((String option) {
                  return option.contains(textEditingValue.text.toLowerCase());
                });
              },
              optionsViewBuilder: (context, onSelected, options) => Align(
                alignment: Alignment.topLeft,
                child: Material(
                  child: Container(
                    width: 250,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index) {
                        final String option = options.elementAt(index);
                        return ListTile(
                          title: Text(option),
                          onTap: () => onSelected(option),
                        );
                      },
                    ),
                  ),
                ),
              ),
              fieldViewBuilder:
                  (context, textEditingController, focusNode, onFieldSubmitted) =>
                      TextField(
                maxLines: 1,
                focusNode: focusNode,
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "Search here...",
                  fillColor: AppColors.textSecondaryColor2,
                  border: InputBorder.none,
                ),
              ),
            )
          : null,
    );
  }
}
