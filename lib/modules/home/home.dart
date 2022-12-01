import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_notes/modules/behavior/behavior.dart';
import 'package:flutter_notes/modules/components/components.dart';
import 'package:flutter_notes/modules/examples/exmaples.dart';
import 'package:flutter_notes/modules/layouts/layout.dart';
import 'package:flutter_notes/modules/styled/styled.dart';

import '../../widgets/debug_lines.dart';
import '../../widgets/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Notes'),
        actions: const <Widget>[
          if(kDebugMode) DebugLines(),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: ListTile.divideTiles(
        context: context,
        tiles: [

          listItem(
            context,
            'Layouts',
            'all about layouts',
             Icons.layers_outlined,
            const LayoutPage()
          ),

          listItem(
            context,
            'Behavior',
            'gesture, state, network',
             Icons.swipe,
            const BehaviorPage()
          ),

          listItem(
            context,
            'Components',
            'All about widgets',
             Icons.apps,
            const ComponentsPage()
          ),

          listItem(
            context,
            'Styled',
            'box decoration, animations',
             Icons.style,
            const StyledPage()
          ),

          listItem(
            context,
            'Examples',
            'some examples and implementations',
             Icons.mood,
            const ExamplesPage()
          ),

        ]).toList(),
      )
    );
  }
}
