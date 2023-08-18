import 'package:ezv/presentation/list/widget/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 16.0,
            children: List.generate(
              30,
              (index) => ListItemWidget(),
            ),
          ),
        )
        // body: GridView.builder(
        //   padding: EdgeInsets.symmetric(horizontal: 16.w),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisSpacing: 8.w, crossAxisCount: 2, mainAxisSpacing: 8.h),
        //   itemBuilder: (context, index) {
        //     return ListItemWidget();
        //   },
        // ),
        );
  }
}
