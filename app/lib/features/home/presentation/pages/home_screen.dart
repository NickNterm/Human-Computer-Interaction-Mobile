import 'package:app/core/dependency_injection.dart';
import 'package:app/features/home/presentation/bloc/poi/poi_bloc.dart';
import 'package:app/features/home/presentation/pages/graph_screen.dart';
import 'package:app/features/home/presentation/pages/map_screen.dart';
import 'package:app/utils/extensions/context.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget page = MapScreen();

  @override
  void initState() {
    super.initState();
    sl<PoiBloc>().add(GetPois());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: context.palette.primaryColor,
              ),
            ),
            ListTile(
              title: Text("Χάρτης"),
              onTap: () {
                setState(() {
                  page = MapScreen();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Επιβραβεύσεις"),
              onTap: () {
                setState(() {
                  page = GraphScreen();
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "IoanninaXplorer",
          style: context.textStyles.header2.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: page,
    );
  }
}
