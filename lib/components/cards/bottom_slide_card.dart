import 'package:flutter/material.dart';
import 'package:pocket/theme/theme_constants.dart';
import 'package:pocket/utils/header_levels.dart';

class BottomSlideCard extends StatelessWidget {
const BottomSlideCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var theme = Theme.of(context);
    const imageSize = 106.0;
    return Card(
            color: AppColors.White,
            elevation: 5,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 450 ,
                   height: MediaQuery.of(context).size.height*0.15,  
                  child: ListView(
                    padding: EdgeInsets.only(left: 8),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset('assets/images/mock_image.png', width: imageSize, height: imageSize,),
                      Image.asset('assets/images/mock_image.png', width: imageSize, height: imageSize,),
                      Image.asset('assets/images/mock_image.png', width: imageSize, height: imageSize,),
                      Image.asset('assets/images/mock_image.png', width: imageSize, height: imageSize,),
                      Image.asset('assets/images/mock_image.png', width: imageSize, height: imageSize,),
                      Image.asset('assets/images/mock_image.png', width: imageSize, height: imageSize,),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(child: Text('Мятный трюфель', textAlign: TextAlign.left, style: theme.textTheme.displayLarge?.copyWith(fontSize: HeaderLevel.h2),)),
                          Container(child: Text('Бизнес-ланч за победу в квизе', style: theme.textTheme.displayMedium?.copyWith(fontSize: HeaderLevel.h3, fontWeight: FontWeight.w400, color: AppColors.DarkPurple))),
                           Container(child: Text('Ломоносова, 23', style: theme.textTheme.displaySmall?.copyWith(color: AppColors.LightBlue)))
                        ],
                      ),
                    )
                  ],
                )
              ],
            
            ),

            
          );
  }
}