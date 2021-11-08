import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  final User user;

  CreatePage(this.user);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final ImagePicker _picker = ImagePicker();
  var textEditingController = TextEditingController();

  PickedFile _image;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('새 게시물'),
        actions: [
          IconButton(
            onPressed: () async {
              final firebaseStorageRef = FirebaseStorage.instance
                  .ref()
                  .child('post')
                  .child('${DateTime.now().millisecondsSinceEpoch}.png');

              final UploadTask task = firebaseStorageRef.putFile(
                  File(_image.path),
                  SettableMetadata(contentType: 'image/png'));

              Future<String> url;

              await task.whenComplete(() async {
                url = task.snapshot.ref.getDownloadURL();

                url.then((uri) {
                  var doc = FirebaseFirestore.instance.collection('post').doc();
                  doc.set({
                    'id': doc.id,
                    'photoUrl': uri.toString(),
                    'contents': textEditingController.text,
                    'email': widget.user.email,
                    'displayName': widget.user.displayName,
                    'userPhotoUrl': widget.user.photoURL,
                  }).then((value) {
                    Navigator.pop(context);
                  });
                });
              });
            },
            icon: Icon(Icons.send),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: _getImage,
        child: Icon(Icons.add_a_photo),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _image == null
                ? Text(
                    'No Image',
                    style: TextStyle(fontSize: 20),
                  )
                : Image.file(File(_image.path)),
            TextField(
              decoration: InputDecoration(hintText: '내용을 입력하세요.'),
              controller: textEditingController,
            )
          ],
        ),
      ),
    );
  }

  Future<void> _getImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = pickedFile;
    });
  }
}
