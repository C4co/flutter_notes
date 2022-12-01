import 'package:flutter/material.dart';
import '../../widgets/list_item.dart';
import 'box_decoration.dart';

class StyledPage extends StatelessWidget {
  const StyledPage({super.key});

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
                'Box Decoration',
                'Decoration',
                Icons.format_paint_outlined,
                const BoxDecorationPage()
              ),

            ]
          ).toList()
        )
      )
    );
  }
}
