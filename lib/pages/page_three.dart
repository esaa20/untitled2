
import 'dart:io';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';


class home_are extends StatefulWidget {
  String? email;
  home_are({this.email});


  @override
  _home_areState createState() => _home_areState(email: email);
}

class _home_areState extends State<home_are> {

  List<Pictures> mPictures = [
    Pictures (
      imageUral: 'https://cdn-icons-png.flaticon.com/512/147/147144.png' ,
      Likes: 0 ,
      click: true,
      icolor: Colors.black
    ),
    Pictures (
        imageUral:'https://cdn-icons-png.flaticon.com/512/147/147144.png'  ,
        Likes: 0 ,
        click: true,
        icolor: Colors.black
    ),
    Pictures (
        imageUral: 'https://cdn-icons-png.flaticon.com/512/147/147144.png' ,
        Likes: 0 ,
        click: true,
        icolor: Colors.black
    ),
    Pictures (
        imageUral: 'https://cdn-icons-png.flaticon.com/512/147/147144.png' ,
        Likes: 0 ,
        click: true,
        icolor: Colors.black
    ),
    Pictures (
        imageUral: 'https://cdn-icons-png.flaticon.com/512/147/147144.png' ,
        Likes: 0 ,
        click: true,
        icolor: Colors.black
    ),
    Pictures (
        imageUral: 'https://cdn-icons-png.flaticon.com/512/147/147144.png' ,
        Likes: 0 ,
        click: true,
        icolor: Colors.black
    ),
    Pictures (
        imageUral: 'https://cdn-icons-png.flaticon.com/512/147/147144.png' ,
        Likes: 0 ,
        click: true,
        icolor: Colors.black
    ),
    Pictures (
        imageUral: 'https://cdn-icons-png.flaticon.com/512/147/147144.png' ,
        Likes: 0 ,
        click: true,
        icolor: Colors.black
    ),
  ];

  String? Imagee  ;

  List ImageArray = [] ;
  File? image;

  Future pickImage() async {
   try {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

   // final imageTemporary = File(image.path);
    final imagePermanet = await saveImagePermanenty(image.path);
    ImageArray.add(image);
    setState(() => this.image = imagePermanet);
  } on PlatformException catch (e){
     print('Failed to pick image: $e') ;
   }

  }
  Future<File>saveImagePermanenty (String imagePath) async {
    final dirctory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${dirctory.path}/$name');
    return File(imagePath).copy(image.path);
  }
 /* List <Pictures> imageArray = [
    Pictures (
        imageUral: 'https://cdn-icons-png.flaticon.com/512/147/147144.png' ,
        Likes: 0 ,
        click: true,
        icolor: Colors.black
    ),
  ] ;*/
  /*_openGallery() async{
    Imagee = await ImagePicker.pickImage(source: ImageSource.gallery);
    imageArray.add(Imagee);

    setState(() {
      imageArray;
    });
  }*/

  //
  String? email;
  _home_areState({this.email});


 /* bool click = true ;
  Color? icolor ;*/

  Widget buildButton(String buttonText, double buttonHigh, Color buttonColor) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.1 * buttonHigh,
        width: double.infinity,
        color: buttonColor,
        child: ElevatedButton(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 38),
          ),
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("${email}"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/147/147144.png'),
              ),
            ),
          ],
        ),
       /* drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.deepOrange,
                  Colors.red,
                ])),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/147/147144.png'),
                  ),
                ),
              ),

              // here icons
              ListTile(
                title: Row(

                  children: [
                    Container (child: IconButton(onPressed: (){}, icon: Icon(Icons.person), padding: EdgeInsets.fromLTRB(0, 0, 10, 0),),
                        ),
                    Text("Isaa")
                  ],
                ),

              ),
            ],
          ),
        ),*/ //drwer
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.red.shade300 , Colors.white]
              ),
            ),
            child: ImageArray.isEmpty ? Text("No Image ") :
            GridView.count(
              mainAxisSpacing: 20,
              childAspectRatio: 2 / 3,
              crossAxisCount: 1 ,
            children: List.generate(ImageArray.length, (index) {
              var img = ImageArray[index];
              return Image.file(image!);
            }),
            )
            ,
          ),
        ),
        /*Container(
          child: imageArray.isEmpty ? Center(child: Text("No Image")) :
          GridView.count(crossAxisCount: 2 ,
          children: List.generate(imageArray.length, (index) {
            var img = imageArray[index];
            return Imagee.file(img);
          }),
          )
        ),*/

      /*  GridView.builder(
          itemCount: mPictures.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (cx,i) => Container(
              margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                child: Column(children: [
                  Image(
                      image: NetworkImage(
                          mPictures[i].imageUral!)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Container( padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 8)  ,child: IconButton(
                        iconSize: 28,
                        onPressed: (){
                          setState(() {
                            mPictures[i] .click = !(mPictures[i].click!);
                            if(mPictures[i].click == true)
                            {
                              mPictures[i].icolor = Colors.black ;
                              mPictures[i].Likes = (mPictures[i].Likes!)-1 ;
                            }
                            else
                            {
                              mPictures[i].icolor = Colors.red ;
                              mPictures[i].Likes = (mPictures[i].Likes!)+1 ;
                            }
                          });
                        },
                        icon: Icon((mPictures[i].click == true) ? Icons.favorite_border_outlined : Icons.favorite), color: mPictures[i].icolor ,)
                      ),

                      Container(padding: EdgeInsets.symmetric(horizontal: 2) , child: Text("${mPictures[i].Likes} Likes", style: TextStyle(fontSize: 18),)),
                    ] ,
                  )

                ])
            )
        ), */ //grid

         floatingActionButton: FloatingActionButton(
        onPressed: () => pickImage(),
          child: Icon(Icons.add), backgroundColor: Colors.red,),

    );
  }

}

basename(String imagePath) {
}


class Pictures {
  File? imgeq;
  int? Likes;
  String? imageUral;
  bool? click ;
  Color? icolor ;

  Pictures({
  @required this.imgeq,
    @required this.Likes,
    @required this.imageUral,
    @required this.click,
    @required this.icolor
});
}
