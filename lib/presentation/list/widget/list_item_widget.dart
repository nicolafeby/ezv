import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      height: 200.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProductImage(),
          _buildTitle(context),
          _buildPrice(context),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(4.r),
        topRight: Radius.circular(4.r),
      ),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        height: 120.h,
        imageUrl: 'https://i.dummyjson.com/data/products/5/2.jpg',
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Flexible(
      child: Text(
        'title',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  Widget _buildPrice(BuildContext context) {
    return Flexible(
      child: Text(
        'harga',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
