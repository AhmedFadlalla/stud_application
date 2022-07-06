import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(child: Text('الاحاديث'),),

      ) ,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 30, bottom: 10),
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن أبي هريرة عن النبي صلي الله عليه وسلم قال (ليس في الخيل والرقيق زكاة الا زكاة الفطر في الرقيق)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  1409- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن علي عليه السلام قال قال رسول الله صلي الله عليه وسلم قال (قد عفوت عن الخيل والرقيق فهاتو صدقة الرقة من كل أربعين درهما درهما وليس في تسعين ومائة شىء فاذا بلغت مائتين ففيها خمسة درهم)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  1392- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن  ابن عباس قال أفاض  رسول الله صلي الله عليه وسلم من عرفة وعليه السكينة ورديفة أسامة ( وقال أيها الناس عليكم بالسكينة فان البر ليس بايجاف الخيل ةالابل قال فما رايتها رافعة يديها عادية حتي أتي جمعا ثم أردف الفضل بن العباس وقال أيها الناس ان البر ليس بايجاف الخيل والابل فغليكم بالسكينة)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  1689- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن عتبة بن عبد السلمي: أنه سمع رسول الله صلي الله عليه وسلم يقول ( لا تقصا نواصي الخيل ولا معارفها ولا أذنابها فان أذنابها مذابها ومعارفها دفاؤها ونواصيها معقود فيها الخير)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2217- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن ابن عباس قال قال رسول الله صلي الله عليه وسلم   ( يمن الخيل في شقرها)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2218- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن أبي هريرة أن رسول الله صلي الله عليه وسلم  (كان يسمي الانثي من الخيل فرسا)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2219- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن أبي هريرة قال (كان النبي صلي الله عليه وسلم يكره الشكال من الخيل والشكال يكون الفرس في رجله اليمني بياض وفي يده اليسري بياض أو في يدخ اليمني وفي رجله اليسري)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2220- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن أبي وهب الجشمي وكانت له صحبة قال ( قال رسول الله صلي الله عليه وسلم ارتبطو الخيل وامسحو بنواصيها وأعجازها أو قال أكفالها وقلدوها ولا تقلدوها الاوتار)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2226- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن علي بن أبي طالب رضي الله عنه   ( قال أهديت لرسول الله صلي الله عليه وسلم بغلة فركبها فقال علي لو حملنا الحمير علي الخيل فكانت لنا مثل هذه قال رسول الله صلي الله عليه وسلم انما يفعل ذلك الذين لا يعلمون)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2236- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن عبدالله بن عمر أن رسول الله صلي الله عليه وسلم    ( سابق بين الخيل التي قد ضمرت من الحفياء وكان أمدها ثنية الوداع وسابق بين الخيل التي لم تضمر من الثنية الي مسجد بني زريق وان عبدالله كان ممن سابق بها)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2245- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن ابن عمر أن نبي الله صلي الله عليه وسلم   ( كان يضمر الخيل يسابق بها)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2246- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                          left: 50,
                        ),
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Center(
                                    child: Text(
                                      "عن ابن عمر أن نبي الله صلي الله عليه وسلم   ( سبق بين الخيل وفضل القرح في الغاية)   ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                        child: Text(
                          "  2247- (صحيح)أبي داود",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                ),
              ),

            ]),
          ),
        ),
      ),
    );
  }
}
