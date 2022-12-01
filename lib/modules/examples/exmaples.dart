import 'package:flutter/material.dart';
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

            ]
          ).toList()
        )
      )
    );
  }

}
