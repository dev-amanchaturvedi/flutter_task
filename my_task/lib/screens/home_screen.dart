import 'package:flutter/material.dart';
import 'package:my_task/model/user_data.dart';
import 'package:my_task/model/user_model.dart';
import 'package:my_task/reusable_widget/reusable_listtile.dart';
import 'package:my_task/reusable_widget/reusable_snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserData userObj = UserData();
  List<User> filteredList = [];

  final ScrollController scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();
  final TextEditingController updateRupeeController = TextEditingController();

  int currentPage = 0;
  final int pageSize = 20;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    filteredList = userObj.getUserList().take(pageSize).toList();
    scrollController.addListener(onScroll);
  }

  void onScroll() {
    if (!isLoading &&
        scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
      loadMoreData();
    }
  }

  Future<void> loadMoreData() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      currentPage++;
      filteredList.addAll(userObj
          .getUserList()
          .skip(currentPage * pageSize)
          .take(pageSize)
          .toList());
      isLoading = false;
    });
  }

  void findFilteredList() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: TextField(
            controller: searchController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 3),
              ),
              fillColor: Colors.white,
              hintText: 'Search by name, phone, or city',
              suffixIcon: const Icon(Icons.search),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  filteredList = userObj.getUserList().take(pageSize).toList();
                  currentPage = 0;
                });
                searchController.clear();
                Navigator.of(context).pop();
              },
              child: const Text('Clear'),
            ),
            TextButton(
              onPressed: () {
                String filters = searchController.text;
                if (filters.isNotEmpty) {
                  setState(() {
                    filteredList = userObj.getUserList().where((user) {
                      return user.name
                              .toLowerCase()
                              .contains(filters.trim().toLowerCase()) ||
                          user.phone.contains(filters) ||
                          user.city
                              .toLowerCase()
                              .contains(filters.trim().toLowerCase());
                    }).toList();
                  });
                }
                Navigator.of(context).pop();
              },
              child: const Text('Search'),
            )
          ],
        );
      },
    );
  }

  void updateRupeeData(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: TextField(
            controller: updateRupeeController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 3),
              ),
              fillColor: Colors.white,
              hintText: 'Enter updated rupee',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                String updateRupee = updateRupeeController.text.trim();
                if (updateRupee.isNotEmpty &&
                    int.tryParse(updateRupee) != null &&
                    (int.parse(updateRupeeController.text.trim()) >= 0 &&
                        int.parse(updateRupeeController.text.trim()) <= 100)) {
                  setState(() {
                    userObj.updateRupee(
                        index, int.parse(updateRupeeController.text));
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                      ReusableSnackBar.give(
                          color: Colors.green,
                          text: 'rupee updated successfully'));
                  updateRupeeController.clear();
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      ReusableSnackBar.give(
                          color: Colors.red,
                          text: 'Enter the valid rupee between 0-100'));
                }
              },
              child: const Text('Update'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'User List',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontFamily: 'PTSerif'),
        ),
        centerTitle: true,
      ),
      body: filteredList.isEmpty
          ? const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('☹️',
                        style: TextStyle(
                          fontSize: 50,
                        )),
                    Text(
                      'No Data Found',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'PTSerif'),
                    ),
                  ],
                ),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemBuilder: (context, index) {
                      if (index == filteredList.length) {
                        // This is the additional item for the loading indicator
                        return isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : const SizedBox.shrink();
                      }

                      return InkWell(
                        onTap: () {
                          updateRupeeData(context, index);
                          setState(() {});
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                height: 45,
                                width: 45,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                        filteredList[index].image)),
                              ),
                              title: Text(
                                filteredList[index].name,
                                style: const TextStyle(
                                    fontSize: 20, fontFamily: 'PTSerif'),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ResuableTileData.giveTile(
                                      data: filteredList[index].city,
                                      icon: const Icon(
                                        Icons.location_city,
                                        size: 18,
                                      )),
                                  const SizedBox(height: 5),
                                  ResuableTileData.giveTile(
                                      data: filteredList[index].phone,
                                      icon: const Icon(
                                        Icons.phone,
                                        size: 18,
                                      )),
                                ],
                              ),
                              trailing: Container(
                                height: 45,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.blue,
                                    )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      filteredList[index].rupee.toString(),
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const Icon(Icons.currency_rupee, size: 16),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      (filteredList[index].rupee >= 50)
                                          ? Icons.arrow_upward_outlined
                                          : Icons.arrow_downward_outlined,
                                      color: (filteredList[index].rupee >= 50)
                                          ? Colors.green
                                          : Colors.red,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: filteredList.length + (isLoading ? 1 : 0),
                  ),
                ),
                if (isLoading)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: findFilteredList,
        child: const Icon(Icons.search, color: Colors.blue),
      ),
    );
  }
}
