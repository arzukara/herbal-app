import 'package:flutter/material.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/provider/product.dart';
import 'package:herbal_app/route.dart';
import 'package:herbal_app/view/widgets/card.dart';
import 'package:herbal_app/view/widgets/search_bar.dart';

class CategoryScreen extends StatefulWidget {
  final String? title;
  final List<Product>? subCategories;

  const CategoryScreen({this.title, this.subCategories, Key? key})
      : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final int waitingTimeMillis = 3000;

  final ProductProvider productProvider = ProductProvider.instance;
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  List<Product> get filteredSubCategories {
    final String query = searchController.text.toLowerCase();
    return widget.subCategories!
        .where((subCategory) => subCategory.name.toLowerCase().contains(query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ""),
        centerTitle: true,
      ),
      body: widget.subCategories == null || widget.subCategories!.isEmpty
          ? Text("No Data")
          : LayoutBuilder(
              builder: (context, constraints) {
                final double maxWidth = constraints.maxWidth;
                final double halfCardWidth = (maxWidth - 16 * 2) / 2 - 4;
                return Column(
                  children: [
                    SearchBarWidget(
                      controller: searchController,
                      onChanged: (value) => setState(() {}),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.all(16),
                        children: [
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              for (int i = 0;
                                  i < filteredSubCategories.length;
                                  i++) ...[
                                MyCard(
                                  title: filteredSubCategories[i].name,
                                  content: 'Content',
                                  width: halfCardWidth,
                                  photoUrl:
                                      filteredSubCategories[i].photoUrl ?? "",
                                  items: [],
                                  onTap: () => Navigator.pushNamed(
                                    context,
                                    CommonRouteNames.detailsScreen,
                                    arguments: filteredSubCategories[i],
                                  ),
                                ),
                              ]
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
