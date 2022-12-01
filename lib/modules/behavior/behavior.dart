import 'package:flutter/material.dart';
import '../../widgets/list_item.dart';

import 'conditional_rendering.dart';
import 'future_builder.dart';
import 'gesture_detector.dart';
import 'http_request.dart';
import 'stateful_widget.dart';
import 'widget_props.dart';

class BehaviorPage extends StatelessWidget {
  const BehaviorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Behavior')),
      body: (
        ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [

              listItem(
                context,
                'Stateful Widget',
                'State',
                Icons.move_up_outlined,
                const SfWidget()
              ),

              listItem(
                context,
                'HTTP request',
                'State',
                Icons.http,
                const HttpRequesPage()
              ),

              listItem(
                context,
                'Conditional Rendering',
                'State',
                Icons.cached,
                const ConditionalRenderingPage()
              ),

              listItem(
                context,
                'Gesture Detector',
                'Gesture',
                Icons.touch_app_outlined,
                const GestureDetectorPage()
              ),

              listItem(
                context,
                'Widget Props',
                'State',
                Icons.star_border,
                const WidgetProps()
              ),

              listItem(
                context,
                'Future builder',
                'State',
                Icons.sync,
                const FutureBuildPage()
              ),

            ]
          ).toList()
        )
      )
    );
  }
}
