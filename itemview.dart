import 'package:flutter/material.dart';
import '/model/itemlist.dart';
import '/model/items.dart';

class Itemview extends StatefulWidget {
  const Itemview({super.key});

  @override
  State<Itemview> createState() => _ItemviewState();
}

class _ItemviewState extends State<Itemview> {
  ItemList items = ItemList();

  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController ratingController = TextEditingController();
  TextEditingController soldController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  String? selectedImage;

  List<String> imagePaths = [
    'assets/img_plant_1.jpg',
    'assets/image_shop_1.jpg',
    'assets/image_shop_2.jpg',
    'assets/image_shop_3.jpg',
  ];

  showAddDialog(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(hintText: 'Input item title'),
              ),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(hintText: 'Input item price'),
              ),
              TextField(
                controller: ratingController,
                decoration: const InputDecoration(
                    hintText: 'Input item rating (1-5 stars)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: soldController,
                decoration:
                    const InputDecoration(hintText: 'Input sold quantity'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: locationController,
                decoration:
                    const InputDecoration(hintText: 'Input item location'),
              ),
              const SizedBox(height: 15),
              DropdownButton<String>(
                hint: const Text('Select an image'),
                value: selectedImage,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedImage = newValue;
                  });
                },
                items: imagePaths.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      children: [
                        Image.asset(value, width: 50, height: 50),
                        const SizedBox(width: 8),
                        Text(value.split('/').last),
                      ],
                    ),
                  );
                }).toList(),
              ),
              if (selectedImage != null)
                Text('Selected: ${selectedImage!.split('/').last}'),
              const SizedBox(height: 15),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('CANCEL'),
                  ),
                  TextButton(
                    onPressed: () {
                      addItem();
                    },
                    child: const Text('SAVE'),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  addItem() {
    if (selectedImage == null) {
      return;
    }

    Items newItem = Items(
      image: selectedImage!,
      title: titleController.text,
      rate: int.parse(ratingController.text),
      sold: soldController.text,
      location: locationController.text,
      price: priceController.text,
      liked: false,
    );

    setState(() {
      items.itemList.add(newItem);
      Navigator.pop(context);
      titleController.clear();
      priceController.clear();
      ratingController.clear();
      soldController.clear();
      locationController.clear();
      selectedImage = null;
    });
  }

  Widget listTile(Items item) => ListTile(
        leading: Image.asset(item.image),
        title: Text(item.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('₱${item.price}',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            ratingSold(item),
            Row(
              children: [
                const Icon(Icons.add_location, size: 15),
                Text('${item.location}'),
              ],
            ),
          ],
        ),
      );

  Widget ratingSold(Items item) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          starsYellow(item.rate),
          const SizedBox(width: 5),
          Text('${item.sold} sold'),
        ],
      );

  Widget starsYellow(int i) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int x = 0; x < i; x++)
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
          for (int y = 0; y < 5 - i; y++)
            const Icon(
              Icons.star,
              color: Colors.grey,
              size: 20,
            ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items List'),
        actions: [
          IconButton(
            onPressed: () {
              showAddDialog(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: items.itemList.map((item) {
            return listTile(item);
          }).toList(),
        ),
      ),
    );
  }
}
