import 'package:material_ui/material_ui.dart';
import 'package:test_11/features/home/data/dummy.dart';
import 'package:test_11/features/home/models/list_item.dart';
import 'package:test_11/features/home/screen/detail_screen.dart';
import 'package:test_11/features/home/widgets/grid_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ListItem> _items = dummyList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: GridView.builder(
        itemCount: _items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.78,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          final item = _items[index];
          return GridCard(
            item: item,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailScreen(item: item)),
              );
            },
            onFavoriteTap: () {
              setState(() {
                item.isFavorite = !item.isFavorite;
              });
            },
          );
        },
      ),
    );
  }
}
