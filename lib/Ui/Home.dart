import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:untitled9/Bloc/book_bloc.dart';
import 'package:untitled9/Repository/Model_Class/Book_Model.dart';
import 'package:untitled9/Ui/Second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<BookBloc>(context).add(FetchBook());
  }

  late List<BookModel> Book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Book ',
                        style: GoogleFonts.playfairDisplay(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Playfair Display',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'Junction',
                        style: GoogleFonts.playfairDisplay(
                          textStyle: TextStyle(
                            color: Color(0xFFD1618A),
                            fontSize: 18.sp,
                            fontFamily: 'Playfair Display',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 25.sp,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Container(
              width: 320.w,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20.sp,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    size: 20.sp,
                  ),
                  labelText: 'Search for books',
                  labelStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 12.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Container(
                  height: 31.h,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1.w, color: Color(0xFF929292)),
                          borderRadius: BorderRadius.circular(15.r))),
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Text(
                        'All',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF929292),
                            fontSize: 12.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 31.h,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1.w, color: Color(0xFF929292)),
                          borderRadius: BorderRadius.circular(15.r))),
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Text(
                        'Romance',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF929292),
                            fontSize: 12.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                    height: 31.h,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.w, color: Color(0xFF929292)),
                            borderRadius: BorderRadius.circular(15.r))),
                    child: Center(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                        child: Text(
                          'Sci-Fi',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Color(0xFF929292),
                              fontSize: 12.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  height: 31.h,
                  decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1.w, color: Color(0xFF929292)),
                          borderRadius: BorderRadius.circular(15.r))),
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Text(
                        'Fantasy',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 31.h,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1.w, color: Color(0xFF929292)),
                          borderRadius: BorderRadius.circular(15.r))),
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Text(
                        'Classics',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF929292),
                            fontSize: 12.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              'Continue Reading',
              style: GoogleFonts.playfairDisplay(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily: 'Playfair Display',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 130.h,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: BlocBuilder<BookBloc, BookState>(
                builder: (context, state) {
                  if (state is BookLoading) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (state is BookError) {
                    return RefreshIndicator(
                        child: Center(child: Text("Somehting Went Wrong")),
                        onRefresh: () async {
                          BlocProvider.of<BookBloc>(context).add(FetchBook());
                        });
                  }
                  if (state is BookLoaded) {
                    Book = BlocProvider.of<BookBloc>(context).bookModel;
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: Book.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Container(
                            width: 290.w,
                            height: 144.h,
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r))),
                            child: Row(
                              children: [
                                Container(
                                    width: 100.w,
                                    height: 144.h,
                                    decoration:
                                        // BoxDecoration(
                                        // color: Color(0xFFCBF5FF),
                                        // image: DecorationImage(
                                        //     image: AssetImage("assets/1.png"),fit: BoxFit.cover))
                                        ShapeDecoration(
                                            color: Color(0xFFCBF5FF),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10.r),
                                              topLeft: Radius.circular(10.r),
                                            ))),
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(Book[index]
                                                    .cover
                                                    .toString()),
                                                fit: BoxFit.cover)),
                                        //child: Image.asset("assets/1.png",fit: BoxFit.cover,),
                                      ),
                                    )),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.w, top: 1.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 40.h,
                                        width: 180.w,
                                        child: Text(
                                          Book[index].name.toString(),
                                          style: GoogleFonts.playfairDisplay(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontFamily: 'Playfair Display',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Samantha Shannon',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                            color: Color(0xFF505050),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                        width: 150.w,
                                        child: LinearProgressBar(
                                          maxSteps: 6,
                                          progressType: LinearProgressBar
                                              .progressTypeLinear,
                                          minHeight: 19,
                                          // Use Linear progress
                                          currentStep: 2,
                                          progressColor: Colors.red,
                                          backgroundColor: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 135.w),
                                        child: Text(
                                          '30%',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Container(
                                        width: 109.w,
                                        height: 29.h,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFF404066)),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Update Progress",
                                            style: TextStyle(
                                              color: Color(0xFF404066),
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 10.w,
                        );
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text('Best Sellers',
                style: GoogleFonts.playfairDisplay(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontFamily: 'Playfair Display',
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: BlocBuilder<BookBloc, BookState>(
                builder: (context, state) {
                  if (state is BookLoading) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (state is BookError) {
                    return RefreshIndicator(
                        child: Text("Something went wronng"),
                        onRefresh: () async {
                          BlocProvider.of<BookBloc>(context).add(FetchBook());
                        });
                  }
                  if (state is BookLoaded) {
                    Book = BlocProvider.of<BookBloc>(context).bookModel;
                    return GridView.count(
                      childAspectRatio: 199 / 400,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      children: List.generate(
                        10,
                        (index) {
                          return Padding(
                              padding: EdgeInsets.all(1.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (_) => Second(id:Book[index].bookId.toString(),index: index,
                                            )),
                                  );
                                },
                                child: Container(
                                  height: 130.h,
                                  decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.r),
                                        ),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          blurRadius: 60.r,
                                          offset: Offset(0, 26),
                                        )
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 145.h,
                                        width: 200.w,
                                        decoration: ShapeDecoration(
                                            color: Colors.white12,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10.r),
                                                    topLeft: Radius.circular(
                                                        10.r)))),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Center(
                                              child: Container(
                                                height: 140.h,
                                                width: 200.w,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          Book[index]
                                                              .cover
                                                              .toString()),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.w),
                                        child: SizedBox(
                                          height: 50.h,
                                          child: Text(
                                            Book[index].name.toString(),
                                            style: GoogleFonts.playfairDisplay(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.sp,
                                                fontFamily: 'Playfair Display',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.w),
                                        child: Text(
                                          'Holly Black',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Color(0xFF505050),
                                              fontSize: 12.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.w),
                                        child: Text(
                                          '\$9.99',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        },
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
          ),
        ])));
  }
}
