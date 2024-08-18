import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/components/buttons/buttons/gradient_asset_button.dart';
import 'package:pocket/components/containers/Map_Screen.dart';
import 'package:pocket/pages/my_events.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/store/app_store.dart';
import 'package:pocket/store/place_store.dart';
import 'package:pocket/theme/theme_constants.dart';

@RoutePage()
class PlaceDetailPage extends StatelessWidget {
  const PlaceDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placeStore = GetIt.I.get<PlaceStore>();
    final appStore = GetIt.I.get<AppStore>();
    final theme = Theme.of(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Observer(
                  builder: (_) {
                    if (placeStore.title == null) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              placeStore.imageUrl!,
                              height: 400,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 16,
                              left: 16,
                              child: Text(
                                placeStore.title!,
                                style: theme.textTheme.displayLarge?.copyWith(
                                  color: AppColors.White,
                                  fontSize: 28,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              backgroundBlendMode: BlendMode.colorDodge,
                              color: AppColors.White,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  placeStore.task!,
                                  style: theme.textTheme.displayMedium,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  placeStore.description!,
                                  style: theme.textTheme.bodyMedium,
                                ),
                                SizedBox(height: 8),
                                Container(
                                  decoration: BoxDecoration(color: Colors.white),
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                                  child: Text(
                                    'Даты проведения: ${placeStore.startDate} - ${placeStore.endDate}',
                                    style: theme.textTheme.bodySmall?.copyWith(color: AppColors.Purple, backgroundColor: AppColors.White),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Color.fromRGBO(190, 112, 244, 1),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        '${placeStore.startTime} - ${placeStore.endTime}',
                                        style: theme.textTheme.bodySmall?.copyWith(color: AppColors.Purple, backgroundColor: AppColors.White),
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Icon(Icons.location_on, color: AppColors.Purple, size: 16),
                                    SizedBox(width: 4),
                                    Expanded(
                                      child: Text(
                                        placeStore.address!,
                                        style: theme.textTheme.bodySmall?.copyWith(color: AppColors.Purple, backgroundColor: AppColors.White),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Телефон для справок: ${placeStore.phoneNumber}',
                                  style: theme.textTheme.bodySmall?.copyWith(color: AppColors.Purple, backgroundColor: AppColors.White),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: double.infinity,
                                  child: GradientAssetButton(
                                    onPressed: () => _showDialog(context,appStore),
                                    text: 'Начать',
                                  ),
                                ),
                                SizedBox(height: 24),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showDialog(BuildContext context,AppStore appStore) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Предложение добавлено в личный кабинет'),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GradientAssetButton(
                    width: 110.0,
                                    onPressed: () => {
                                      appStore.changeColor(Colors.black),
                                      Navigator.of(context).pop(),
                                      context.navigateTo(The1Route())
                                    },
                                    text: 'На карту',
                                  ),
                OutlinedButton(
              
              onPressed: () =>{
                appStore.changeColor(Colors.black),
                Navigator.of(context).pop(),
                context.navigateTo(MyOffersRoute())
              },
              child: const Text('Мои события')),
              ],
            ),
          ],
        );
      },
    );
  }
}
