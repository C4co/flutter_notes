import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();

  final _emailController  = TextEditingController();
  final _passwordController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextFormField(
              controller:  _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email'
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "enter a valid email";
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: _passwordController,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password'
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "enter your password";
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            // submit here!
            FractionallySizedBox(
              widthFactor: 1.0,
              child: ElevatedButton(
                onPressed: (){
                  if(_formkey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('do login'))
                    );
                  }
                },
                child: const SizedBox(
                  height: 40,
                  child: Center(child: Text('Submit'))
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.grey.shade200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.rocket, size: 60, color: Colors.blue),

                  SizedBox(height: 10),

                  Text('Login screen', style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400
                  )),
                ],
              ),
            ),
          ),

          const LoginForm()

        ],
      ),
    );
  }
}