import 'package:flutter/material.dart';
import 'package:flutter_notes/modules/components/form_validation.dart';
import '../../widgets/list_item.dart';

import 'dialog.dart';
import 'icon.dart';
import 'image.dart';
import 'text.dart';
import 'text_field.dart';

class ComponentsPage extends StatelessWidget {
  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Components')),
      body: (
        ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [

              listItem(
                context,
                'Text',
                'Text widget and decoration',
                Icons.font_download_outlined,
                const TextPage()
              ),

              listItem(
                context,
                'Icon',
                'Decoration',
                Icons.star_border_outlined,
                const IconPage()
              ),

              listItem(
                context,
                'Textfield',
                'Widget',
                Icons.input,
                const TextFieldPage()
              ),

              listItem(
                context,
                'Dialog',
                'Widget',
                Icons.fit_screen_outlined,
                const DialogPage()
              ),

              listItem(
                context,
                'Image',
                'Widget',
                Icons.image_outlined,
                const ImagePage()
              ),

              listItem(
                context,
                'Form Validation',
                'Widget',
                Icons.checklist_rtl,
                const FormValidationPage()
              ),

            ]
          ).toList()
        )
      )
    );
  }
}
