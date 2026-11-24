import 'package:material_ui/material_ui.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const DetailCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFF455A64),
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color(0xFFFFFFFF),
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.volume_up, size: 30),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          right: 20,
          top: -32,
          child: SizedBox(
            width: 64,
            height: 64,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFF64B5A6),
              foregroundColor: Colors.black87,
              onPressed: () {},
              child: const Icon(Icons.pause, size: 30),
            ),
          ),
        ),
      ],
    );
  }
}
