import 'package:flutter/material.dart';

class SugarCalculatorInfo extends StatelessWidget {
  const SugarCalculatorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          Text(
            'Informacje o zastosowaniach obliczeń w piwowarstwie lub winiarstwie:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'W piwowarstwie i winiarstwie kontrolowanie zawartości cukru w mieszance jest kluczowe dla osiągnięcia pożądanej zawartości alkoholu oraz smaku. Nie zawsze jednak musisz używać cukru do dosładzania. Znając zawartość cukru np. w syropie lub w suszonych owocach możesz użyć dowolnego produktu.',
          ),
          SizedBox(height: 8.0),
          Text(
            'Dla piwowarów:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'Możesz użyć tego kalkulatora, aby pomóc w obliczeniu ilości surowca potrzebnego do dodania do refermantacji, aby osiągnąć pożądaną zawartość gazu w piwie.',
          ),
          SizedBox(height: 8.0),
          Text(
            'Dla winiarzy:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'Ten kalkulator może pomóc Ci obliczyć ilość np. syropu potrzebnego do dodania do moszczu przed fermentacją, aby uzyskać pożądaną zawartość alkoholu w winie.',
          ),
        ],
      ),
    );
  }
}
