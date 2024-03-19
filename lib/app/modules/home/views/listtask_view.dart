part of 'index_view.dart';

class ListTaskView extends GetView<HomeController> {
  const ListTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const TaskWidget();
        },
      ),
    );
  }
}
