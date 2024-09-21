import 'package:flutter/material.dart';
import 'package:flutter_application_tripole_task1/model/itemlist.dart';
import 'package:flutter_application_tripole_task1/model/items.dart';

class GridViewSample extends StatefulWidget {
  const GridViewSample({super.key});

  @override
  State<GridViewSample> createState() => _GridViewSampleState();
}

String? selectedImage;

TextEditingController titleController = TextEditingController();
TextEditingController priceController = TextEditingController();
TextEditingController ratingController = TextEditingController();
TextEditingController soldController = TextEditingController();
TextEditingController locationController = TextEditingController();

class _GridViewSampleState extends State<GridViewSample> {
  //
  ItemList items = ItemList();
  //
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

  Widget location(Items item) => Row(
        children: [
          const Icon(
            Icons.add_location,
            size: 18,
          ),
          Expanded(
            child: Text(
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              item.location,
            ),
          )
        ],
      );

  Widget ratingSold(Items item) =>
      Row(mainAxisSize: MainAxisSize.min, children: [
        starsYellow(item.rate),
        const SizedBox(
          width: 5,
        ),
        Text(
          '${item.sold}',
        )
      ]);

  Widget starsYellow(i) => Row(
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

  Widget buttonLike(Items item) => TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.thumb_up_sharp,
          color: Colors.grey,
        ),
        label: const Text(
          'LIKE',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      );

  Widget buttonAddToCart(Items item) => TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.remove_red_eye,
        color: Colors.grey,
      ),
      label: const Text(
        'VIEW',
        style: TextStyle(color: Colors.grey),
      ));

  Widget buttons(Items item) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonLike(item),
          buttonAddToCart(item),
        ],
      );

  Widget listCard(Items item) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                item.image,
                width: MediaQuery.of(context).size.width,
                height: 220,
              ),
              Text(
                item.title,
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 15),
              ),
              Text(
                'P${item.price}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ratingSold(item),
              location(item),
              buttons(item),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          actions: [
            IconButton(
              onPressed: () {
                showAddDialog(context);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 360,
          ),
          itemCount: items.itemList.length,
          itemBuilder: (BuildContext ctx, index) {
            return listCard(items.itemList[index]);
          },
        ));
  }
}
