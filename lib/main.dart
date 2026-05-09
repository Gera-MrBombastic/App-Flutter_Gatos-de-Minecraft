import 'package:flutter/material.dart';

// Placeholder image path (local asset)
const String _kPlaceholderImageUrl = 'assets/images/placeholder.png';

// Map of item labels to their image paths (for grid buttons)
const Map<String, String> _itemImages = {
  'Negro': 'assets/images/negro.png',
  'Siamés': 'assets/images/siames.png',
  'Persa': 'assets/images/persa.png',
  'Calicó': 'assets/images/calico.png',
  'Ragdoll': 'assets/images/ragdoll.png',
  'Naranja': 'assets/images/naranja.png',
  'Jellie': 'assets/images/jellie.png',
  'Esmoquin': 'assets/images/esmoquin.png',
  'Británico de pelo corto': 'assets/images/brita.png',
  'Blanco': 'assets/images/blanco.png',
  'Atigrado': 'assets/images/atigrado.png',
};

// Map of item labels to their top display image paths (different from grid)
const Map<String, String> _topImages = {
  'Negro': 'assets/images/negro_top.jpg',
  'Siamés': 'assets/images/siames_top.png',
  'Persa': 'assets/images/persa_top.jpg',
  'Calicó': 'assets/images/calico_top.png',
  'Ragdoll': 'assets/images/ragdoll_top.png',
  'Naranja': 'assets/images/naranja_top.jpg',
  'Jellie': 'assets/images/jellie_top.png',
  'Esmoquin': 'assets/images/esmoquin_top.jpg',
  'Británico de pelo corto': 'assets/images/brita_top2.jpg',
  'Blanco': 'assets/images/blanco_top.jpg',
  'Atigrado': 'assets/images/atigrado_top.jpg',
};

// Map of item labels to their descriptions
const Map<String, String> _itemDescriptions = {
  'Negro': 'Encontrado en chozas de bruja y aldeas, el gato Negro (Black) es el clásico michi oscuro de ojos naranjas con vibra mística europea. Es el único que aparece junto a las brujas y con razón, es oscuro como los void cats y tierno como la gatita Jinx con sus ojazos. Queda súper bien como el guardián oficial de tu sala de pociones.',
  'Siamés': 'Encontrado en aldeas, el Siamés (Siamese) llama la atención con su pelaje claro, patitas oscuras y ojos celestes. Vienen de Tailandia, son pioneros del juego, y les encanta el drama gritando a sus dueños de madrugada. Por su vibra exótica, se ven increíbles viviendo en tus templos de la jungla.',
  'Persa': 'Encontrado en aldeas, el Persa (Persian) es un felino color crema, muy esponjoso y con un modelo de cara plana exclusivo en el juego. Solían ser la realeza de Irán, pero hoy en día viven con su cara de juzgones o enojones todo el tiempo. Como merecen lo mejor, constrúyeles una camita de lujo en tu mansión de cuarzo.',
  'Calicó': 'Encontrado en aldeas, el Calicó (Calico) es un gatete tricolor originario de Asia, donde se le considera un imán de buena suerte. Aunque en la vida real casi todas son hembras, hoy en día destacan por ser las reinas indiscutibles de TikTok. Ponla a descansar sobre una alfombrita en tus bases de madera, ¡se verá súper tierna!',
  'Ragdoll': 'Encontrado en aldeas, el Ragdoll (Ragdoll) resalta con su cuerpo claro, carita oscura y ojazos azules. Vienen de EE. UU. y se "desarman" al alzarlos, de ahí su nombre de muñeca de trapo. Datito, Benjamin Button, el  gatito de Taylor Swift, es de esta raza. Son muy pacíficos, ideales para dejarlos cuidando tus huertos.',
  'Naranja': 'Encontrado en aldeas, el gato Naranja (Red o Orange Tabby) es nuestro querido michi atigrado de siempre y una de las texturas originales. Estos pobres felinos comparten una sola neurona (o eso parece) y son el querido prota del juego Stray. Déjalo acurrucarse junto a tu horno o chimenea para darle un toque súper hogareño a la base.',
  'Jellie': 'Encontrado en aldeas, Jellie (Jellie) es puro amor con su pelaje gris y pecho blanco. Lo más bonito de su historia es que la comunidad la votó para inmortalizar a la mascota real del youtuber GoodTimesWithScar. Es la mejor compañera de stream o de juego que puedes tener al lado mientras te avientas una granja de oro bien insana',
  'Esmoquin': 'Encontrado en aldeas, el gato Esmoquin (Tuxedo) viste su elegante traje blanco y negro que antes salía muchísimo por pura estadística. El modelo es idéntico al icónico meme del Gato Maxwell (el michi que gira con musiquita). Tanta elegancia lo hace el candidato perfecto para custodiar tu sala de encantamientos.',
  'Británico de pelo corto': 'Encontrado en aldeas, el gato Británico de pelo corto (British Shorthair) es un gordito gris azulado de carita redonda que viene directo de Inglaterra. Siempre lleva una expresión serena y estóica, se nota de dónde viene. Con ese porte tan serio, es el vigilante perfecto para darle estilo a tus fortalezas de piedra.',
  'Blanco': 'Encontrado en aldeas, el gato Blanco (White) luce un pelaje inmaculado y heterocromía (ojos de distinto color). En la vida real suelen ser sordos, pero en Minecraft detectan cualquier peligro. Son leyendas absolutas de los memes, ¡como Smudge (al que le gritan en la mesa)! Con esa vibra tan cool, son los habitantes definitivos para tus refugios de nieve o hielo.',
  'Atigrado': 'Encontrado en aldeas, el Atigrado (Tabby) es tu michi rayado color tierra de toda la vida. Llevan el camuflaje salvaje y la "M" en la frente de sus ancestros. Aunque no lo creas, ¡de esta raza es el gato gordo que dice "Huh?"! Al camuflarse tan bien, es el compañero de aventuras definitivo para explorar la taiga.',
};

/// Data model to manage the selected value state.
class NumberSelectionData extends ChangeNotifier {
  String? _selectedValue;

  NumberSelectionData({String? initialValue}) : _selectedValue = initialValue;

  String? get selectedValue => _selectedValue;

  set selectedValue(String? newValue) {
    if (_selectedValue != newValue) {
      _selectedValue = newValue;
      notifyListeners();
    }
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gatos de Minecraft',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const NumberSelectionScreen(),
    );
  }
}

class NumberSelectionScreen extends StatefulWidget {
  const NumberSelectionScreen({super.key});

  @override
  State<NumberSelectionScreen> createState() => _NumberSelectionScreenState();
}

class _NumberSelectionScreenState extends State<NumberSelectionScreen> {
  String? _selectedValue;

  void _onValueSelected(String value) {
    setState(() {
      _selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gatos en Minecraft'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Display Area for the Selected Number and its Image
            SizedBox(
              height: 450, // Increased height to accommodate content
              child: NumberDisplay(selectedValue: _selectedValue),
            ),
            const Divider(height: 2, thickness: 2), // Separator
            // The Selection Grid
            NumberSelectionGrid(
              selectedValue: _selectedValue,
              onValueSelected: _onValueSelected,
            ),
          ],
        ),
      ),
    );
  }
}

class NumberDisplay extends StatelessWidget {
  final String? selectedValue;

  const NumberDisplay({super.key, required this.selectedValue});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity, // Take full width
      padding: const EdgeInsets.all(20.0),
      color: Theme.of(context)
          .primaryColor
          .withAlpha((255 * 0.1).round()), // Light background
      child: Column(
        mainAxisSize: MainAxisSize.min, // Wrap content height
        children: <Widget>[
          const Text(
            'Conoce más sobre las razas de gato presentes en Minecraft',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 8),
          Text(
            selectedValue != null
                ? 'Gato $selectedValue'
                : 'Selecciona una raza para saber más',
            style: TextStyle(
              fontSize: selectedValue != null ? 48 : 24,
              fontWeight: FontWeight.bold,
              color: selectedValue != null
                  ? Colors.blue.shade800
                  : Colors.grey.shade700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          // Image and description display area
          selectedValue != null
              ? SizedBox(
                  height: 260,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            _topImages[selectedValue] ?? _kPlaceholderImageUrl,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) => Center(
                              child: Icon(
                                Icons.broken_image,
                                color: Colors.grey[400],
                                size: 60,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 100.0),
                          child: Text(
                            _itemDescriptions[selectedValue] ?? '',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  height: 260,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      _kPlaceholderImageUrl,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Icon(
                          Icons.broken_image,
                          color: Colors.grey[400],
                          size: 60,
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class NumberSelectionGrid extends StatelessWidget {
  final String? selectedValue;
  final ValueChanged<String> onValueSelected;

  const NumberSelectionGrid({
    super.key,
    required this.selectedValue,
    required this.onValueSelected,
  });

  // Labels to display in the grid
  static const List<String> _items = <String>[
    'Negro',
    'Británico de pelo corto',
    'Calicó',
    'Jellie',
    'Persa',
    'Ragdoll',
    'Naranja',
    'Siamés',
    'Atigrado',
    'Esmoquin',
    'Blanco',
  ];

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Four columns
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio:
            0.75, // Adjust as needed to prevent overflow with text and image
      ),
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        final String value = _items[index];
        final bool isSelected = selectedValue == value;
        final String imagePath = _itemImages[value] ?? _kPlaceholderImageUrl;

        return NumberGridItem(
          label: value,
          imagePath: imagePath,
          isSelected: isSelected,
          onTap: () {
            onValueSelected(value);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Selected: $value'),
                duration: const Duration(milliseconds: 700),
              ),
            );
          },
        );
      },
    );
  }
}

class NumberGridItem extends StatelessWidget {
  final String label;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const NumberGridItem({
    super.key,
    required this.label,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isSelected ? 8 : 2,
      color: isSelected ? Colors.blue.shade50 : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? BorderSide(color: Colors.blue.shade700, width: 2)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.grid_on, // Generic icon for grid item
                color: isSelected ? Colors.blue.shade700 : Colors.grey,
                size: 18,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? Colors.blue.shade900 : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 10 / 6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.asset(
                      imagePath, // Use the specific image for each item
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Icon(
                          Icons.broken_image,
                          color: Colors.grey[300],
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}