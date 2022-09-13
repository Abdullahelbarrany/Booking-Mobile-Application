import 'package:flutter/material.dart';
import 'package:flutter_app3/buttons.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();


}

class _MyAppState extends State<MyApp> {
  String s = '0';
  int s2=0;
  int sum=0;
  int flag=0;
  int f2=0;

  @override
  Widget build(BuildContext context) {

   return (Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          actions: [
            IconButton(
              color: Colors.amber,
              icon: Icon(Icons.calculate),
              onPressed: (){print('pressed');},

            ),
          ],

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(s,style: TextStyle(color: Colors.black38)),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button1(
                  text: '1',
                  function: (){

                      setState(() {
                        if(s=='0')
                        {s='1';}
                        else
                        {
                          s+='1';
                        }

                    });
                  }
              ),
                  button1(
                      text: '2',
                      function: (){

                        setState(() {
                          if(s=='0')
                          {s='2';}
                          else
                          {
                            s+='2';
                          }

                        });
                      }
                  ),
                  button1(
                      text: '3',
                      function: (){

                        setState(() {
                          if(s=='0')
                          {s='3';}
                          else
                          {
                            s+='3';
                          }

                        });
                      }
                  ),


                ],

              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button1(
                      text: '4',
                      function: (){

                        setState(() {
                          if(s=='0')
                          {s='4';}
                          else
                          {
                            s+='4';
                          }

                        });
                      }
                  ),
                  button1(
                      text: '5',
                      function: (){

                        setState(() {
                          if(s=='0')
                          {s='5';}
                          else
                          {
                            s+='5';
                          }

                        });
                      }
                  ),
                  button1(
                      text: '6',
                      function: (){

                        setState(() {
                          if(s=='0')
                          {s='6';}
                          else
                          {
                            s+='6';
                          }

                        });
                      }
                  ),


                ],

              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button1(
                  text: '7',
                  function: (){

                    setState(() {
                      if(s=='0')
                      {s='7';}
                      else
                      {
                        s+='7';
                      }

                    });
                  }
              ),
                  button1(
                      text: '8',
                      function: (){

                        setState(() {
                          if(s=='0')
                          {s='8';}
                          else
                          {
                            s+='8';
                          }

                        });
                      }
                  ),
                  button1(
                      text: '9',
                      function: (){

                        setState(() {
                          if(s=='0')
                          {s='9';}
                          else
                          {
                            s+='9';
                          }

                        });
                      }
                  ),


                ],

              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  MaterialButton(
                    child: Text(' + '),
                    color: Colors.yellow,
                    onPressed: (){
                      setState(() {
                        if(flag!=0)
                          {
                            f2=1;
                            if(flag==1)
                              {
                                sum = int.parse(s);
                                sum = sum+s2;
                                s='0';
                              }
                            else if(flag==2)
                              {
                                sum = int.parse(s);
                                sum = s2- sum;
                                s='0';
                              }
                            else if(flag==3)
                              {
                                sum = int.parse(s);
                                sum = sum*s2;
                                s='0';
                              }
                              else if(flag==4)
                                {
                                  sum = int.parse(s);
                                  double ss = (s2/sum);
                                  sum = ss.round();
                                  s='0';
                                }
                            flag=1;


                          }
                        else
                          {s2 = int.parse(s);
                          s='0';
                          flag=1;

                          }

                      });


                    },
                  ),
                  MaterialButton(
                    child: Text(' - '),
                    color: Colors.yellow,
                    onPressed: (){
                      setState(() {
                        if(flag!=0)
                        {
                          f2=1;
                          if(flag==1)
                          {
                            sum = int.parse(s);
                            sum = sum+s2;
                            s='0';
                          }
                          else if(flag==2)
                          {
                            sum = int.parse(s);
                            sum = s2- sum;
                            s='0';
                          }
                          else if(flag==3)
                          {
                            sum = int.parse(s);
                            sum = sum*s2;
                            s='0';
                          }
                          else if(flag==4)
                          {
                            sum = int.parse(s);
                            double ss = (s2/sum);
                            sum = ss.round();
                            s='0';
                          }
                          flag=2;


                        }
                       else
                         {
                           s2 = int.parse(s);
                           s='0';
                           flag=2;
                         }

                      });


                    },
                  ),
                  MaterialButton(
                    child: Text(' x '),
                    color: Colors.yellow,
                    onPressed: (){
                      setState(() {
                        if(flag!=0)
                        {
                          f2=1;
                          if(flag==1)
                          {
                            sum = int.parse(s);
                            sum = sum+s2;
                            s='0';
                          }
                          else if(flag==2)
                          {
                            sum = int.parse(s);
                            sum = s2- sum;
                            s='0';
                          }
                          else if(flag==3)
                          {
                            sum = int.parse(s);
                            sum = sum*s2;
                            s='0';
                          }
                          else if(flag==4)
                          {
                            sum = int.parse(s);
                            double ss = (s2/sum);
                            sum = ss.round();
                            s='0';
                          }
                          flag=3;


                        }
                        else
                        {s2 = int.parse(s);
                        s='0';
                        flag=3;
                        }
                      });


                    },
                  ), MaterialButton(
                    child: Text(' / '),
                    color: Colors.yellow,
                    onPressed: (){
                      setState(() {
                        if(flag!=0)
                        {f2=1;
                          if(flag==1)
                          {
                            sum = int.parse(s);
                            sum = sum+s2;
                            s='0';
                          }
                          else if(flag==2)
                          {
                            sum = int.parse(s);
                            sum = s2- sum;
                            s='0';
                          }
                          else if(flag==3)
                          {
                            sum = int.parse(s);
                            sum = sum*s2;
                            s='0';
                          }
                          else if(flag==4)
                          {
                            sum = int.parse(s);
                            double ss = (s2/sum);
                            sum = ss.round();
                            s='0';
                          }

                        flag=4;
                        }
                        else{
                          s2 = int.parse(s);
                          s='0';
                          flag=4;
                        }

                      });


                    },
                  ),




                ],

              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    child: Text('='),
                    color: Colors.green,
                    onPressed: (){
                      setState(() {
                        if (f2 == 0) {
                          if (flag == 1) {
                            sum = int.parse(s);
                            sum = sum + s2;
                            s = ' ${sum}';
                          }
                          else if (flag == 2) {
                            sum = int.parse(s);
                            sum = s2 - sum;
                            s = '${sum}';
                          }
                          else if (flag == 3) {
                            sum = int.parse(s);
                            sum = sum * s2;
                            s = '${sum}';
                          }
                          else if (flag == 4) {
                            sum = int.parse(s);
                            double sum2 = double.parse(s);
                            sum2 = sum / s2;
                            s = '${sum2}';
                          }
                        }
                        else{
                          if (flag == 1) {
                            int s3 = int.parse(s);
                            sum = sum + s3;
                            s = ' ${sum}';
                          }
                          else if (flag == 2) {
                            int s3 = int.parse(s);
                            sum =  sum - s3;
                            s = '${sum}';
                          }
                          else if (flag == 3) {
                            int s3 = int.parse(s);
                            sum = sum * s3;
                            s = '${sum}';
                          }
                          else if (flag == 4) {
                            int s3 = int.parse(s);
                            double sum2 = 0;
                            sum2 = sum / s3;
                            s = '${sum2}';

                          }

                        }
                      }


                      );


                    },
                  ), MaterialButton(
                    child: Text(' Clear '),
                    color: Colors.redAccent,
                    onPressed: (){
                      setState(() {
                        sum = 0;
                        f2=0;
                        flag=0;
                        s='0';
                      });


                    },
                  ),



                ],

              ),
            ),
          ],

        ),

    )
   );


  }
}
