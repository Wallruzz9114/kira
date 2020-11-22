import 'package:flutter/material.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({this.goTo});

  final Function(int) goTo;

  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r'[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+');
  String _email = '';

  @override
  SafeArea build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: 'everyone has\n'.toUpperCase(),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 30.0),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'knowledge\n'.toUpperCase(),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: 'to share'.toUpperCase()),
                      ],
                    ),
                  ),
                  const Text(
                    'It all starts here',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 50.0),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text('Enter your email'),
                        const SizedBox(height: 10.0),
                        TextFormField(
                          onChanged: (String value) =>
                              setState(() => _email = value),
                          validator: (String value) =>
                              value.isEmpty || !emailRegex.hasMatch(value)
                                  ? 'Please enter a valid email'
                                  : null,
                          decoration: InputDecoration(
                            hintText: 'Ex. john.doe@domain.com',
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
                          onPressed: !emailRegex.hasMatch(_email)
                              ? null
                              : () {
                                  if (_formKey.currentState.validate()) {
                                    widget.goTo(1);
                                  }
                                },
                          child: Text(
                            'continue'.toUpperCase(),
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
