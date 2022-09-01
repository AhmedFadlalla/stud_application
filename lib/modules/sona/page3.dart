import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(' الآيات القرآنية')),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 30, bottom: 10),
          child: Center(
            child: Column(
                children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 1,
                          left: 1,
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
                                      " وَأَعِدُّوا لَهُمْ مَا اسْتَطَعْتُمْ مِنْ قُوَّةٍ وَمِنْ رِبَاطِ الْخَيْلِ",
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
                          "  ايه (1) ﴿٦٠ الأنفال﴾",
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
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.only(
                          right: 1,
                          left: 1,
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
                                      " زُيِّنَ لِلنَّاسِ حُبُّ الشَّهَوَاتِ مِنَ النِّسَاءِ وَالْبَنِينَ وَالْقَنَاطِيرِ الْمُقَنْطَرَةِ مِنَ الذَّهَبِ وَالْفِضَّةِ وَالْخَيْلِ الْمُسَوَّمَةِ   ",
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
                          " ايه (2)  ﴿١٤ آل عمران﴾",
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

              SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Padding(
                            padding: const EdgeInsets.only(
                              right: 1,
                              left: 1,
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
                                          "  إِنَّ اللَّهَ لَا يُحِبُّ مَنْ كَانَ مُخْتَالًا فَخُورًا ",
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
                              "  ايه (3)    ﴿٣٦ النساء﴾",
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Padding(
                            padding: const EdgeInsets.only(
                              right: 1,
                              left: 1,
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
                                          "  وَالْخَيْلَ وَالْبِغَالَ وَالْحَمِيرَ لِتَرْكَبُوهَا وَزِينَةً وَيَخْلُقُ مَا لَا تَعْلَمُونَ  ",
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
                              " ايه (4)     ﴿٨ النحل﴾",
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
                height: 10,
              ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Padding(
                            padding: const EdgeInsets.only(
                              right: 1,
                              left: 1,
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
                                          "  وَاسْتَفْزِزْ مَنِ اسْتَطَعْتَ مِنْهُمْ بِصَوْتِكَ وَأَجْلِبْ عَلَيْهِمْ بِخَيْلِكَ وَرَجِلِكَ ",
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
                              "  ايه (5)     ﴿٦٤ الإسراء﴾",
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
                  SizedBox(height: 10.0,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Padding(
                            padding: const EdgeInsets.only(
                              right: 1,
                              left: 1,
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
                                          "  فَإِذَا حِبَالُهُمْ وَعِصِيُّهُمْ يُخَيَّلُ إِلَيْهِ مِنْ سِحْرِهِمْ أَنَّهَا تَسْعَىٰ   ",
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
                              " ايه (6)    ﴿٦٦ طه﴾",
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
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Padding(
                            padding: const EdgeInsets.only(
                              right: 1,
                              left: 1,
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
                                          "   إِنَّ اللَّهَ لَا يُحِبُّ كُلَّ مُخْتَالٍ فَخُورٍ  ",
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
                              "  ايه (7)       ﴿٢٣ الحديد﴾",
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
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Padding(
                            padding: const EdgeInsets.only(
                              right: 1,
                              left: 1,
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
                                          "   وَمَا أَفَاءَ اللَّهُ عَلَىٰ رَسُولِهِ مِنْهُمْ فَمَا أَوْجَفْتُمْ عَلَيْهِ مِنْ خَيْلٍ وَلَا رِكَابٍ  ",
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
                              " ايه (8)        ﴿٦ الحشر﴾",
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

              SizedBox(height: 10.0,),

            ]),
          ),
        ),
      ),
    );
  }
}
