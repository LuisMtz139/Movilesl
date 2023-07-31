import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(
    home: RestaurantRegistrationView(),
  ));
}

class RestaurantRegistrationView extends StatefulWidget {
  @override
  _RestaurantRegistrationViewState createState() =>
      _RestaurantRegistrationViewState();
}

class _RestaurantRegistrationViewState
    extends State<RestaurantRegistrationView> {
  final _formKey = GlobalKey<FormState>();
  final _imagePicker = ImagePicker();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameRestaurantController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _direccionController = TextEditingController();
  File? _selectedImage;

  void _registerRestaurant() async {
    if (_formKey.currentState!.validate()) {
      final url =
          'https://mobil-back-upbu-production.up.railway.app/register/restaurant';
      final name = _nameController.text;
      final email = _emailController.text;
      final password = _passwordController.text;
      final nameRestaurant = _nameRestaurantController.text;
      final description = _descriptionController.text;
      final direccion = _direccionController.text;

      if (_selectedImage == null) {
        // Handle error, image is required
        return;
      }

      // Convert the image to bytes
      List<int> imageBytes = await _selectedImage!.readAsBytes();
      String imageName = _selectedImage!.path.split('/').last;

      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields['name'] = name;
      request.fields['email'] = email;
      request.fields['password'] = password;
      request.fields['name_restaurant'] = nameRestaurant;
      request.fields['description'] = description;
      request.fields['direccion'] = direccion;
      request.files.add(http.MultipartFile(
        'image',
        http.ByteStream.fromBytes(imageBytes),
        imageBytes.length,
        filename: imageName,
      ));

      var response = await request.send();
      if (response.statusCode == 200) {
        // Successful registration, handle the response here
        print('Restaurant registered successfully');
      } else {
        // Error in registration, handle the error here
        print('Error in restaurant registration');
      }
    }
  }

  Future<void> _getImage() async {
    final pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Restaurant'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nameRestaurantController,
                decoration: InputDecoration(labelText: 'Restaurant Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a restaurant name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _direccionController,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _getImage,
                child: Text('Select Image'),
              ),
              if (_selectedImage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.file(_selectedImage!),
                ),
              ElevatedButton(
                onPressed: _registerRestaurant,
                child: Text('Register Restaurant'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
