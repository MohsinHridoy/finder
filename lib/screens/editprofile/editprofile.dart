

import 'dart:io';

import 'package:finder/widgets/my_text_field.dart';
import 'package:finder/widgets/my_text_field2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ImagePicker _picker=ImagePicker();
  List<XFile> _imageList=[];

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                height: 300,
                child: Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.3/0.3,

                        crossAxisCount: 3,crossAxisSpacing: 5.00,mainAxisSpacing: 5.00),
                    itemCount: _imageList.length,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                      //  height: 30.00,


                        clipBehavior: Clip.antiAlias,

                        decoration:BoxDecoration(
                          // borderRadius: BorderRadius.circular(20.0),

                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.2)),
                        child: Stack(
                          children: [
                             Image.file(
                              File(_imageList[index].path),
                              fit: BoxFit.cover,
                            ),

                           Positioned(
                              top:60,
                              left:92,
                              child: Container(

                                child: IconButton(
                                  onPressed: (){
                                    _imageList.removeAt(index);
                                    setState(() {

                                    });
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                              ),
                            )
                          ],

                        ),
                      );
                    },
                  ),
                ),
              ),

              FlatButton(
                  onPressed: (){
                    imageSelect();
                  },
                  color: Colors.purpleAccent,

                  child: Text("Add Media")
              ),

              SizedBox(
                height: 30.00,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Name",
                        //  style: kBodyText2,
                      ),

                      MyTextField2(
                        hintText: 'Enter your name',
                        inputType: TextInputType.text,
                      ),

                      Text(
                        "About me",
                        //  style: kBodyText2,
                      ),

                      MyTextField2(
                        hintText: 'about me',
                        inputType: TextInputType.text,
                      ),

                      Text(
                        "Passions",
                        //  style: kBodyText2,
                      ),

                      MyTextField2(
                        hintText: 'Photography,Art,Films,Travel',
                        inputType: TextInputType.text,
                      ),

                      Text(
                        "Job title",
                        //  style: kBodyText2,
                      ),

                      MyTextField2(
                        hintText: 'Add job title ',
                        inputType: TextInputType.text,
                      ),

                      Text(
                        "Company",
                        //  style: kBodyText2,
                      ),

                      MyTextField2(
                        hintText: 'Add job company',
                        inputType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );


  }
  void imageSelect() async{
    final XFile? selectedImage=await _picker.pickImage(source: ImageSource.gallery);
    //print(selectedImage!.path.toString());
    if(selectedImage!.path.isNotEmpty)
      {
        _imageList.add(selectedImage);
      }
  }
}












class ImageUploadModel {
  bool? isUploaded;
  bool? uploading;
  File? imageFile;
  String? imageUrl;

  ImageUploadModel({
    this.isUploaded,
    this.uploading,
    this.imageFile,
    this.imageUrl,
  });
}