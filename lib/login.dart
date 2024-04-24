// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordRController = TextEditingController();

  // Border color
  final Color _borderColor = Colors.blue;
  // Border width
  final double _borderWidth = 1.0;
  // Border radius
  final double _borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/diamond.png'),
            SizedBox(
              width: 8.0,
            ),
            Text("Shrine"),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Image.asset('assets/diamond.png'),
                  const SizedBox(height: 16.0),
                  const Text('Registrasi',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
                  const Text(
                      'Lorem ipsum dolar sit amet, consectetur adipiscing elit',
                      style: TextStyle(fontSize: 13.0)),
                ],
              ),
              const SizedBox(height: 100.0),
              // [Name]
              Text(
                'Masukkan Nama User',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              // TextField for Username
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                  // Applying border properties
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0), // Adjusted spacing
              // [Password]
              Text(
                'Masukkan Password',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              // TextField for Password
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                  // Applying border properties
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 12.0), // Adjusted spacing
              // [Password Repeat]
              Text(
                'Masukkan Kembali Password',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              // TextField for Password Repeat
              TextField(
                controller: _passwordRController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                  // Applying border properties
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30.0),
              // Buttons
              OverflowBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Hapus'),
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                      _passwordRController.clear();
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Daftar'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 12.0), // Adjusted spacing
              // Sign in Button and "Sudah punya akun?" text
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 8.0),
                    Text('Sudah punya akun?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text('Sign in'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
