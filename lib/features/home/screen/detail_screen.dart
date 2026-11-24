import 'package:material_ui/material_ui.dart';
import 'package:test_11/features/home/models/list_item.dart';
import 'package:test_11/features/home/widgets/detail_card.dart';

class DetailScreen extends StatefulWidget {
  final ListItem item;

  const DetailScreen({super.key, required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Image.network(widget.item.imageUrl, fit: BoxFit.cover),
            ),
          ),
          DetailCard(title: widget.item.title, subtitle: widget.item.subtitle),
        ],
      ),
    );
  }
}
