import 'package:flutter/material.dart';
import 'package:flutter_notes/modules/examples/navigation_return_data.dart';
import 'package:flutter_notes/modules/examples/persist_sqlite.dart';
import 'package:flutter_notes/modules/examples/route_transition.dart';
import '../../widgets/list_item.dart';

import 'login_screen.dart';

class ExamplesPage extends StatelessWidget {
  const ExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Styled')),
      body: (
        ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [

              listItem(
                context,
                'Login screen',
                'Login screen with validation',
                Icons.password,
                const LoginScreenPage()
              ),

              listItem(
                context,
                'Route Transition',
                'Animated transition',
                Icons.directions,
                const RouteTransitionPage()
              ),

              listItem(
                context,
                'Navigation with data',
                'Return data from a screen',
                Icons.keyboard_return_sharp,
                const NavigationReturnDataPage()
              ),

              listItem(
                context,
                'Persist SQLite',
                'Persiste data wit SQLite',
                Icons.table_chart,
                const PersistSqlitePage()
              ),

            ]
          ).toList()
        )
      )
    );
  }

}
