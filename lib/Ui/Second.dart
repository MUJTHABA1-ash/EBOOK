import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled9/Bloc/details_bloc.dart';
import 'package:untitled9/Repository/Model_Class/Details_Model.dart';

class Second extends StatefulWidget {
  final String id;
  final int index;

  const Second({
    super.key,
    required this.id,
    required this.index,
  });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<DetailsBloc>(context).add(FetchDetails(id: widget.id));
  }

  late DetailsModel details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<DetailsBloc, DetailsState>(
            builder: (context, state) {
              if (state is DetailsLoading) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is DetailsError) {
                return Center(
                  child: RefreshIndicator(
                      child: Center(
                        child: Text(
                          "Something went wrong",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      onRefresh: () async {
                        BlocProvider.of<DetailsBloc>(context)
                            .add(FetchDetails(id: widget.id));
                      }),
                );
              }
              if (state is DetailsLoaded) {
                details = BlocProvider.of<DetailsBloc>(context).detailsModel;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 25.sp,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 250.w,
                            child: Text(
                              details.name.toString(),
                              style: GoogleFonts.playfairDisplay(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontFamily: 'Playfair Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        )
                      ],
                    ),
                    Center(
                      child: Text(
                        'Rachel Gillig',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF686868),
                            fontSize: 14.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity.w,
                          height: 305.h,
                          color: Colors.white,
                          child: Center(
                              child: Image.network(
                            details.cover.toString(),
                            height: 300.h,
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 260.h),
                          child: Center(
                            child: Container(
                              height: 54.h,
                              width: 295.w,
                              decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 60,
                                      offset: Offset(0, 26),
                                      spreadRadius: 0,
                                    )
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.only(left: 20.w),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20.h,
                                      width: 49.5.w,
                                      decoration: ShapeDecoration(
                                          color: Color(0xFFFFF8DF),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.r))),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text(
                                              details.rating.toString(),
                                              style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 32.w,
                                    ),
                                    Container(
                                      height: 23.h,
                                      width: 66.w,
                                      decoration: ShapeDecoration(
                                          color: Color(0xFFE2FBFA),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.r))),
                                      child: Center(
                                        child: Text(
                                          'Fantasy',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 32.w,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: details.pages.toString(),
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' ',
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Pages',
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Text('Synopsis',
                          style: GoogleFonts.playfairDisplay(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'Playfair Display',
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),

                        child: Text(
                          details.synopsis.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                  ],
                );
              } else {
                return SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
