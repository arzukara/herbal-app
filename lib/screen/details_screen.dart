import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/provider/product.dart';

class DetailsScreen extends StatefulWidget {
  final Product? product;
  const DetailsScreen({this.product, super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final int waitingTimeMillis = 3000;

  final ProductProvider productProvider = ProductProvider.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      final double maxWidth = constraints.maxWidth;
      return CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey, // Adjust the color as needed
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  widget.product!.photoUrl!,
                  width: maxWidth,
                  height: maxWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.product!.name,
                                style: context.textTheme.titleLarge,
                              ),
                              Text(
                                widget.product!.unit!,
                                style: context.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          Text(
                            widget.product!.price!,
                            style: context.textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Product Detail",
                        style: context.textTheme.bodyLarge,
                      ),
                      Text(
                        """
Aliquam ultrices sem et ex tempus, eget finibus nunc commodo. Proin aliquam congue elit, vitae semper ante faucibus a. Quisque auctor felis est, ac porta sem sagittis vitae. Aenean ut augue nec mauris ullamcorper malesuada. Phasellus aliquet turpis efficitur, auctor lorem ac, efficitur ex. Nullam elementum, est eu ornare fringilla, turpis arcu luctus nulla, a tincidunt mauris nulla vel ipsum. Sed viverra, libero ut lacinia laoreet, nulla felis ultrices nunc, id vulputate nibh felis sed purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis eget est malesuada, sodales libero nec, malesuada velit. Donec lacinia mauris purus, vel varius augue vehicula vel.

Curabitur hendrerit mattis sapien eu cursus. Aenean gravida augue fermentum magna posuere, volutpat consequat massa cursus. Fusce velit sapien, ullamcorper et tristique ac, imperdiet ac felis. Aliquam consectetur purus non augue consectetur tempus. Praesent id ante nisi. Vivamus lobortis tincidunt iaculis. Nullam molestie vehicula sagittis. Nunc dignissim dictum velit, non ornare erat condimentum eu. Vivamus blandit lacus nisl, id dapibus purus placerat vel. Duis ante nisi, pretium sit amet purus ac, gravida fermentum purus. Morbi viverra tristique risus, nec porttitor ex. Maecenas maximus ante a dictum pulvinar. Fusce hendrerit posuere velit, feugiat placerat erat lacinia non. In hac habitasse platea dictumst. Proin fermentum ut orci non gravida.
""",
                        style: context.textTheme.bodyMedium,
                      ),
                    ],
                  )))
        ],
      );
    }));
  }
}
