import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class MyApploadPage extends StatefulWidget {
  const MyApploadPage({super.key});
static final String id = "MyApploadPage";
  @override
  State<MyApploadPage> createState() => _MyApploadPageState();
}

class _MyApploadPageState extends State<MyApploadPage> {

  bool isLoading = false;
  var captionController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? _image;
  _imageFromGalery() async{
    XFile? image = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _image = File(image!.path);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Upload", style: TextStyle(color: Colors.black, ),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
               Icons.drive_folder_upload,
                color: Colors.black,
              ))
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                GestureDetector(
                  onTap: (){
                    _imageFromGalery();
                  },
                  child:   Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width,
                    color: Colors.grey.withOpacity(0.4),
                    child: _image == null ?  Center(
                      child: Icon(Icons.add_a_photo,size: 50, color: Colors.grey,),
                    ): Stack(
                      children: [
                        Image.file(_image!,width: double.infinity, height: double.infinity,
                        fit: BoxFit.cover,),
                      Container(
                        width: double.infinity,
                        color: Colors.black12,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.highlight_remove
                            ))
                          ],
                        ),
                      )
                      ],
                    ),
                  ),
                ),

                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextField(
                      controller: captionController,
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLength: 5,
                      decoration: InputDecoration(
                        hintText: "Caption",
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black38),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
