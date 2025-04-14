import 'package:app/core/dependency_injection.dart';
import 'package:app/features/home/domain/entities/poi.dart';
import 'package:app/features/home/presentation/bloc/poi/poi_bloc.dart';
import 'package:app/utils/extensions/context.dart';
import 'package:app/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';

import '../../../../utils/graph_helper.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> with TickerProviderStateMixin {
  late AnimatedMapController controller;

  bool showFilters = false;
  List<String> filters = [
    "museum",
    "art",
    "castle",
    "mountain",
    "shop",
    "theater",
  ];

  @override
  void initState() {
    super.initState();
    controller = AnimatedMapController(
      vsync: this,
    );
  }

  Poi? selectedPoi;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PoiBloc, PoiState>(
      bloc: sl<PoiBloc>(),
      builder: (context, state) {
        return Stack(
          children: [
            FlutterMap(
              mapController: controller.mapController,
              options: MapOptions(
                interactionOptions: InteractionOptions(
                  flags: InteractiveFlag.drag |
                      InteractiveFlag.flingAnimation |
                      InteractiveFlag.pinchMove |
                      InteractiveFlag.pinchZoom |
                      InteractiveFlag.doubleTapZoom |
                      InteractiveFlag.doubleTapDragZoom |
                      InteractiveFlag.scrollWheelZoom,
                ),
                initialCenter: LatLng(39.6586678, 20.8456178),
                initialZoom: 13,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                MarkerLayer(
                  markers: state.pois
                      .where((e) => filters.contains(e.type))
                      .map(
                        (e) => Marker(
                          point: LatLng(e.lat, e.lon),
                          height: 40,
                          width: 40,
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedPoi = e;
                              });
                            },
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                height: 100,
                                width: 100,
                                fit: BoxFit.contain,
                                "assets/${e.type}.png",
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            if (selectedPoi != null)
              Positioned(
                bottom: 30,
                left: 16,
                right: 16,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      POI_INFO,
                      arguments: selectedPoi,
                    );
                  },
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Icon(
                            Icons.info,
                            color: context.palette.primaryColor,
                          ),
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                selectedPoi!.imageUrl,
                                height: 84,
                                width: 84,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    selectedPoi!.name,
                                    style: context.textStyles.body1b,
                                  ),
                                  Text(
                                    selectedPoi!.shortDescription,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Positioned(
              right: 10,
              top: 10,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showFilters = !showFilters;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.menu),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 60,
              child: Visibility(
                visible: showFilters,
                child: AnimatedOpacity(
                  opacity: showFilters ? 1 : 0,
                  duration: Duration(milliseconds: 300),
                  child: Container(
                    height: 272,
                    width: 200,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        FilterSelection(
                          text: "Κάστρο",
                          asset: "castle.png",
                          isSelected: filters.contains("castle"),
                          onTap: () {
                            setState(() {
                              if (filters.contains("castle")) {
                                filters.remove("castle");
                              } else {
                                filters.add("castle");
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FilterSelection(
                          text: "Μουσεία",
                          asset: "museum.png",
                          isSelected: filters.contains("museum"),
                          onTap: () {
                            setState(() {
                              if (filters.contains("museum")) {
                                filters.remove("museum");
                              } else {
                                filters.add("museum");
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FilterSelection(
                          text: "Τέχνη",
                          asset: "art.png",
                          isSelected: filters.contains("art"),
                          onTap: () {
                            setState(() {
                              if (filters.contains("art")) {
                                filters.remove("art");
                              } else {
                                filters.add("art");
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FilterSelection(
                          text: "Σπήλαιο",
                          asset: "mountain.png",
                          isSelected: filters.contains("mountain"),
                          onTap: () {
                            setState(() {
                              if (filters.contains("mountain")) {
                                filters.remove("mountain");
                              } else {
                                filters.add("mountain");
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FilterSelection(
                          text: "Μαγαζιά",
                          asset: "shop.png",
                          isSelected: filters.contains("shop"),
                          onTap: () {
                            setState(() {
                              if (filters.contains("shop")) {
                                filters.remove("shop");
                              } else {
                                filters.add("shop");
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FilterSelection(
                          text: "Θέατρο",
                          asset: "theater.png",
                          isSelected: filters.contains("theater"),
                          onTap: () {
                            setState(() {
                              if (filters.contains("theater")) {
                                filters.remove("theater");
                              } else {
                                filters.add("theater");
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class FilterSelection extends StatelessWidget {
  const FilterSelection({
    super.key,
    required this.text,
    required this.asset,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final String asset;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/$asset",
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 6,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
