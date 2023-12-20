import 'package:flutter/material.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/provider/product.dart';
import 'package:herbal_app/route.dart';
import 'package:herbal_app/view/widgets/card.dart';
import 'package:herbal_app/view/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int waitingTimeMillis = 3000;

  final ProductProvider productProvider = ProductProvider.instance;

  @override
  void initState() {
    super.initState();
    Future.microtask(loadData);
  }

  Future loadData({bool reset = false}) async {
    productProvider.getProducts(reset: reset);
  }

  List<Product> get products => productProvider.productsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Products"),
        centerTitle: true,
        //backgroundColor: Color(0xFFCBE5FF),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, value, child) => value.isProductsLoading
            ? Center(child: const CircularProgressIndicator())
            : RefreshIndicator(
                onRefresh: () => loadData(reset: true),
                child: LayoutBuilder(
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
                                for (int i = 0; i < products.length; i++) ...[
                                  MyCard(
                                    title: products[i].name,
                                    content: 'Content',
                                    width: halfCardWidth,
                                    photoUrl: products[i].photoUrl!,
                                    items: products[i].items,
                                    onTap: () => Navigator.pushNamed(
                                      context,
                                      CommonRouteNames.subScreen,
                                      arguments: {
                                        'title': products[i].name,
                                        'subCategories': products[i].items,
                                      },
                                    ),
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
              ),
      ),
    );
  }
}
