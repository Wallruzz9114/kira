import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({this.goTo});

  final Function(int) goTo;

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSecret = true;
  String _password = '';

  @override
  SafeArea build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            titleSpacing: 0.0,
            elevation: 0.0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () => widget.goTo(0),
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'password'.toUpperCase(),
                    style: const TextStyle(fontSize: 30.0),
                  ),
                  const SizedBox(height: 50.0),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text('Enter your password'),
                        const SizedBox(height: 10.0),
                        TextFormField(
                          onChanged: (String value) =>
                              setState(() => _password = value),
                          validator: (String value) => value.length < 6
                              ? 'Password must be at least 6 characters long'
                              : null,
                          obscureText: _isSecret,
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _isSecret = !_isSecret,
                              ),
                              child: Icon(
                                !_isSecret
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            hintText: 'Ex. vsb3456!SKJ_@',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Theme.of(context).primaryColor,
                          elevation: 0.0,
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          onPressed: _password.length < 6
                              ? null
                              : () {
                                  if (_formKey.currentState.validate()) {
                                    print(_password);
                                  }
                                },
                          child: Text(
                            'login'.toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
