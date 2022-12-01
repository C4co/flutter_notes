import 'package:flutter/material.dart';
import '../../widgets/list_item.dart';

import 'grid.dart';
import 'row.dart';
import 'column.dart';
import 'stack.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layouts')),
      body: (
        ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              listItem(
                context,
                'Row',
                'Layout Widget',
                Icons.view_week_outlined,
                const RowPage()
              ),

              listItem(
                context,
                'Column',
                'Layout Widget',
                Icons.table_rows_outlined,
                const ColumnPage()
              ),

              listItem(
                context,
                'Grid',
                'Layout Widget',
                Icons.grid_view,
                const GridPage()
              ),

              listItem(
                context,
                'Stack',
                'Layout Widget',
                Icons.filter_none,
                const StackPage()
              ),
            ]
          ).toList()
        )
      )
    );
  }
}
