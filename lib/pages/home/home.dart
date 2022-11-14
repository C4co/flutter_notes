import 'package:flutter/material.dart';
import 'package:flutter_notes/pages/stateful_widget/stateful_widget.dart';

import '../../widgets/debug_lines.dart';

import '../row/row.dart';
import '../column/column.dart';
import '../grid/grid.dart';
import '../stack/stack.dart';
import '../text/text.dart';
import '../box_decoration/box_decoration.dart';
import '../gesture_detector/gesture_detector.dart';
import '../icon/icon.dart';
import '../text_field/text_field.dart';
import '../dialog/dialog.dart';

Widget _listItem(
  BuildContext context,
  String title,
  String description,
  IconData icon,
  Widget page
){
  return ListTile(
    title: Text(title),
    subtitle: Text(description),
    leading: Icon(icon),
    iconColor: Colors.blue,
    onTap: (){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => page)
      );
    },
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Notes'),
        actions: const <Widget>[
          DebugLines()
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: ListTile.divideTiles(
        context: context,
        tiles: [

          // layouts

          _listItem(
            context,
            'Row',
            'Layout Widget',
            Icons.view_week_outlined,
            const RowPage()
          ),

          _listItem(
            context,
            'Column',
            'Layout Widget',
            Icons.table_rows_outlined,
            const ColumnPage()
          ),

          _listItem(
            context,
            'Grid',
            'Layout Widget',
            Icons.grid_view,
            const GridPage()
          ),

          _listItem(
            context,
            'Stack',
            'Layout Widget',
            Icons.filter_none,
            const StackPage()
          ),

          // Style, icons, text

          _listItem(
            context,
            'Text',
            'Text widget and decoration',
            Icons.font_download_outlined,
            const TextPage()
          ),

          _listItem(
            context,
            'Box Decoration',
            'Decoration',
            Icons.format_paint_outlined,
            const BoxDecorationPage()
          ),

          _listItem(
            context,
            'Icon',
            'Decoration',
            Icons.star_border_outlined,
            const IconPage()
          ),

          // gesture

          _listItem(
            context,
            'Gesture Detector',
            'Gesture',
            Icons.touch_app_outlined,
            const GestureDetectorPage()
          ),

          // state

          _listItem(
            context,
            'Stateful Widget',
            'Structure',
            Icons.move_up_outlined,
            const SfWidget()
          ),

          // widget

          _listItem(
            context,
            'Textfield',
            'Widget',
            Icons.input,
            const TextFieldPage()
          ),

          _listItem(
            context,
            'Dialog',
            'Widget',
            Icons.fit_screen_outlined,
            const DialogPage()
          ),

        ]).toList(),
      )
    );
  }
}
