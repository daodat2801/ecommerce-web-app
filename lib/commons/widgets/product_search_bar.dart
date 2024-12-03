import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';

class ProductSearchBar extends StatefulWidget {
  const ProductSearchBar({super.key});

  @override
  State<ProductSearchBar> createState() => _ProductSearchBarState();
}

class _ProductSearchBarState extends State<ProductSearchBar> {
  bool _isExpanded = false;
  final _controller = TextEditingController();
  List<String> _suggestions = ['Apple', 'Banana', 'Cherry', 'Date', 'Grape'];
  List<String> _filteredSuggestions = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildAnimtatedSearchBar(),
        Positioned(
          right: 0,
          child: IconButton(
            icon: const Icon(Icons.search, color: Colors.blue),
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

  Widget _buildAnimtatedSearchBar() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: _isExpanded ? 300 : 40,
      height: 40,
      decoration: BoxDecoration(
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
              fieldViewBuilder: (context, textEditingController, focusNode,
                      onFieldSubmitted) =>
                  TextField(
                maxLines: 1,
                textAlignVertical: TextAlignVertical.top,
                focusNode: focusNode,
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "Search here...",
                  fillColor: AppColors.secondaryBackgroundColor,
                  border: InputBorder.none,
                ),
              ),
            )
          : null,
    );
  }
}
