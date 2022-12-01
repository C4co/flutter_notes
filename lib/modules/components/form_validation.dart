import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formkey = GlobalKey<FormState>();

  final _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[

          TextFormField(
            controller: _myController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Label'
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'please enter some text';
              }

              return null;
            },
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: (){
              if(_formkey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(_myController.text))
                );
              }
            },
            child: const Text('Submit'),
          )

        ],
      ),
    );
  }
}

class FormValidationPage extends StatelessWidget {
  const FormValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Validation')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: MyCustomForm(),
            ),
          ),
        ]
      )
    );
  }
}
