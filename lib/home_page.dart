import 'package:flutter/material.dart';
import 'package:zomatofoodapp/widgets/banner.dart';
import 'package:zomatofoodapp/widgets/search_bar.dart';
import 'widgets/app_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBarWidget(),
            const FlashSaleBanner()
          ],
        ),
      ),
      
    );
  }
}
