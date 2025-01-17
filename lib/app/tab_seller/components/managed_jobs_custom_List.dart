import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_seller/domain/dummy_models/managed_job_models.dart';
import 'package:jobisto/utils/utils.dart';

class ManagedJobsCustomList extends StatefulWidget {
  const ManagedJobsCustomList({super.key});

  @override
  State<ManagedJobsCustomList> createState() => _ManagedJobsCustomListState();
}

class _ManagedJobsCustomListState extends State<ManagedJobsCustomList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 12.sp,bottom: 80.sp),
        itemCount: ManagedJobsClass.managedJobsListCard.length,
        itemBuilder: (context, index) {
          final managedJobList = ManagedJobsClass.managedJobsListCard[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 10.sp),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.sp,vertical: 12.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: kLightGrayColor.withOpacity(0.16)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(managedJobList.jobName ?? "",style: CustomTextStyle.regularFont18Style,),

                  SizedBox(height: 8.sp,),

                  Text(managedJobList.description ?? "",style: CustomTextStyle.lightFont14Style,),

                  SizedBox(height: 8.sp,),

                  Row(
                    children: [
                      Container(
                        height: 24.sp,
                        width: 24.sp,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          child: Image.asset("$dummyImgPath/${managedJobList.profilePic}"),
                        ),
                      ),

                      SizedBox(width: 8.sp,),

                      Text(managedJobList.name ?? "",style: CustomTextStyle.regularFont14Style,)
                    ],
                  ),

                  SizedBox(height: 8.sp,),

                  Row(
                    children: [

                      Expanded(
                        child: Row(
                          children: [
                            Text("\$ ${managedJobList.price}",style: CustomTextStyle.yellowSemiBoldFont14Style,),

                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.sp),
                              width: 1.sp,
                              height: 14.sp,
                              color: kSecondaryColor.withOpacity(0.25),
                            ),

                            SizedBox(
                              height: 16.sp,
                              width: 16.sp,
                              child: ImageUtil.iconImageClass.timeClockIcon,
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 6.sp),
                              child: Text("${managedJobList.days.toString()} days",style: CustomTextStyle.regularFont12Style,),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 24.sp,
                        width: 24.sp,
                        child: ImageUtil.iconImageClass.crossArrowIcon,
                      )
                    ],
                  )

                ],
              ),
            ),
          );
        },),
    );
  }
}
