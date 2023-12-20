import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:herbal_app/model/products.dart';

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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
  }
}
