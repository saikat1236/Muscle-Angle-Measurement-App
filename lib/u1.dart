import 'package:flutter/material.dart';
import 'package:mediapipe/CameraHomeScreen.dart';
class u1 extends StatelessWidget {
    TextEditingController _fullnameController = TextEditingController();
      TextEditingController _numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:  Color.fromRGBO(15,88,107,1.0),
          appBar: PreferredSize(
            
         preferredSize: Size.fromHeight(35),
         
                child: AppBar(
                  toolbarHeight: 60,
            title: Text(
            
              "App Name",
            style: TextStyle(fontSize: 30,)),
            // ClipPath(
            //   clipper: WaveClipperOne(flip: true)),

            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),) ,
             centerTitle: true,
             elevation: 0.0,
              backgroundColor: Color.fromRGBO(15,88,107,1.0),
              automaticallyImplyLeading: true,
              leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => BookHistry1()),
                // );
              }
              ),
           
          ),
       ),
    
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
          ),
            child: Center(
              child: Column(
                children: [

                  SizedBox(height: 30.0), 
        Text(
          'Full Name',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
              fontSize: 20,
            ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueAccent
                                      ),
                                      width: 380,
          height: 60.0,
          child: TextFormField(
            controller: _fullnameController,
            validator: (val) {
              if (val.isEmpty) return "Fullname can't be empty";
              return null;
            },
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: 'Enter your Fullname',
              // hintStyle: kHintTextStyle,
            ),
          ),
        ),
        SizedBox(height: 10.0),
 Text(
          'Age',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'OpenSans',
            ),
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueAccent
                                      ),
                                      width: 380,
          height: 60.0,
          child: TextFormField(
            controller: _numberController,
            validator: (val) {
              if (val.isEmpty) return "Age can't be empty";
              return null;
            },
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.phone_android,
                color: Colors.white,
              ),
              hintText: 'Enter your Age',
              // hintStyle: kHintTextStyle,
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          width: 400,
                            height: 300,
                             decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(10),
                                      color: Colors.black38
                                      ),
        ),

                  SizedBox(height: 20),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CameraHomeScreen()));
                            },
                            child: Card(
                              color:  Color.fromRGBO(15,88,107,1.0),
                              child: Container(
                                width: 190,
                                height: 60,
                                child: Center(
                                  child: Text(
                                    'Capture Video',
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                         Card(
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            // onTap: () {
                            //   Navigator.push(context, MaterialPageRoute(builder: (context) => Onlinebooking()));
                            // },
                            child: Card(
                              color:  Color.fromRGBO(15,88,107,1.0),
                              child: Container(
                                width: 180,
                                height: 60,
                                child: Center(
                                  child: Text(
                                    'Next',
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Container(
                  //   child: Card(
                  //     child: InkWell(
                  //       splashColor: Colors.black.withAlpha(30),
                  //       onTap: () {
                  //         //Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
                  //       },
                  //       child: Card(
                  //         color: Color.fromRGBO(205,166,2,1.0),
                  //         child: Container(
                  //           width: 350,
                  //           height: 60,
                  //           child: Center(
                  //             child: Text(
                  //               'Upload Video',
                  //               textAlign: TextAlign.center,
                  //               style: new TextStyle(
                  //                 fontSize: 25.0,
                  //                 color: Colors.black,
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
