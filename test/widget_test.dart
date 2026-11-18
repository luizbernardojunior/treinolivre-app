import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:treino_livre/main.dart';

void main() {
  testWidgets('Tela inicial do Treino Livre', (WidgetTester tester) async {
    await tester.pumpWidget(const TreinoLivreApp());

    expect(find.text('Treino Livre'), findsOneWidget);
    expect(find.text('Seus exercícios'), findsOneWidget);
    expect(
      find.text('Nenhum exercício cadastrado ainda.'),
      findsOneWidget,
    );
    expect(find.byIcon(Icons.fitness_center), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
