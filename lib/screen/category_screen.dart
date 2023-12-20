import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/provider/product.dart';
import 'package:herbal_app/route.dart';
import 'package:herbal_app/view/widgets/card.dart';
import 'package:herbal_app/view/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatefulWidget {
  final String? title;
  final List<Product>? subCategories;

  const CategoryScreen({this.title, this.subCategories, super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final int waitingTimeMillis = 3000;

  final ProductProvider productProvider = ProductProvider.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("widget.subCategories => ${widget.subCategories}");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ""),
        centerTitle: true,
        //backgroundColor: Color(0xFFCBE5FF),
      ),
      body: widget.subCategories == null || widget.subCategories!.isEmpty
          ? Text("No Data")
          : LayoutBuilder(
              builder: (context, constraints) {
                final double maxWidth = constraints.maxWidth;
                // (maxWidth - horizontalPadding) / 2 - (spaceBetweenCardsInDesign) / 2
                final double halfCardWidth = (maxWidth - 16 * 2) / 2 - 4;
                return Column(
                  children: [
                    SearchBarWidget(),
                    Expanded(
                        child: ListView(
                      padding: EdgeInsets.all(16),
                      children: [
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            /* MyCard(
                              title: 'All Products',
                              content: 'Content for Card 1',
                              width: maxWidth,
                              photoUrl: "products[i].photoUrl!",
                            ),*/
                            for (int i = 0;
                                i < widget.subCategories!.length;
                                i++) ...[
                              MyCard(
                                title: widget.subCategories![i].name,
                                content: 'Content',
                                width: halfCardWidth,
                                photoUrl:
                                    widget.subCategories![i].photoUrl ?? "",
                                items: [],
                                onTap: () => Navigator.pushNamed(
                                    context, CommonRouteNames.detailsScreen,
                                    arguments: widget.subCategories![i]),
                              ),
                            ]
                          ],
                        ),
                      ],
                    ))
                  ],
                );
              },
            ),
    );
  }
}
