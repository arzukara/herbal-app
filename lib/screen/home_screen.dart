import 'package:flutter/material.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/provider/product.dart';
import 'package:herbal_app/route.dart';
import 'package:herbal_app/view/widgets/card.dart';
import 'package:herbal_app/view/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int waitingTimeMillis = 3000;
  final ProductProvider productProvider = ProductProvider.instance;
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    Future.microtask(loadData);
  }

  Future loadData({bool reset = false}) async {
    productProvider.getProducts(reset: reset);
  }

  List<Product> get products => productProvider.productsList;

  List<Product> get filteredProducts {
    final String query = searchController.text.toLowerCase();
    return products
        .where((product) => product.name.toLowerCase().contains(query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Products"),
        centerTitle: true,
      ),
      body: Consumer<ProductProvider>(
        builder: (context, value, child) => value.isProductsLoading
            ? Center(child: const CircularProgressIndicator())
            : RefreshIndicator(
                onRefresh: () => loadData(reset: true),
                child: LayoutBuilder(
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
                                      i < filteredProducts.length;
                                      i++) ...[
                                    MyCard(
                                      title: filteredProducts[i].name,
                                      content: 'Content',
                                      width: halfCardWidth,
                                      photoUrl: filteredProducts[i].photoUrl!,
                                      items: filteredProducts[i].items,
                                      onTap: () => Navigator.pushNamed(
                                        context,
                                        CommonRouteNames.subScreen,
                                        arguments: {
                                          'title': filteredProducts[i].name,
                                          'subCategories':
                                              filteredProducts[i].items,
                                        },
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
              ),
      ),
    );
  }
}
