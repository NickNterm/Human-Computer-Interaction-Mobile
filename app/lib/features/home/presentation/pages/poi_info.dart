import 'package:app/features/home/domain/entities/poi.dart';
import 'package:app/utils/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hive/hive.dart';

class PoiInfo extends StatelessWidget {
  const PoiInfo({
    super.key,
    required this.poi,
  });

  final Poi poi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          poi.name,
          style: context.textStyles.header2.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  poi.imageUrl,
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: -30,
                  left: 20,
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: context.palette.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/${poi.type}.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Html(
                data: poi.text,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300,
                height: 56,
                decoration: BoxDecoration(
                  color: context.palette.primaryColor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Ξεκίνησε το Quiz",
                  style: context.textStyles.body1b.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
