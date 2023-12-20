import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/provider/product.dart';
import 'package:herbal_app/route.dart';
import 'package:provider/provider.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String content;
  final double width;
  final String photoUrl;
  final List<Product> items;
  final Function()? onTap;
  MyCard({
    required this.title,
    required this.content,
    required this.width,
    required this.photoUrl,
    required this.items,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      onLongPress: null,
      child: SizedBox(
        width: width,
        child: Card(
          // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          // Set the clip behavior of the card
          clipBehavior: Clip.antiAliasWithSaveLayer,
          // Define the child widgets of the card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels
              photoUrl.isNotEmpty
                  ? Image.network(
                      photoUrl,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : Icon(
                      Icons.broken_image_outlined,
                      size: 160,
                    ),
              // Add a container with padding that contains the card's title, text, and buttons
              Padding(
                padding: EdgeInsets.only(left: 16, top: 10),
                child: Text(
                  '$title\n',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    /*InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      onLongPress: null,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.all(8),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFDFE4EE),
            image: DecorationImage(
              image: NetworkImage(photoUrl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black
                    .withOpacity(0.3), // Adjust the opacity here (0.0 to 1.0)
                BlendMode.dstATop,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: context.textTheme.titleLarge
                      ?.copyWith(color: Color(0xFDFDFDFD)),
                ),
              ],
            ),
          ),
        ),
      ),
    );*/
  }
}
