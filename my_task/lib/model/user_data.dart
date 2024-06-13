import 'package:my_task/model/user_model.dart';

class UserData {
  final List<User> _userList = [
    User(
        id: 1,
        name: 'Alice Johnson',
        phone: '9033000001',
        city: 'New York',
        image: 'https://randomuser.me/api/portraits/women/1.jpg',
        rupee: 65),
    User(
        id: 2,
        name: 'Alice Smith',
        phone: '9033000002',
        city: 'Los Angeles',
        image: 'https://randomuser.me/api/portraits/women/2.jpg',
        rupee: 40),
    User(
        id: 3,
        name: 'Carol White',
        phone: '9033000003',
        city: 'Chicago',
        image: 'https://randomuser.me/api/portraits/women/3.jpg',
        rupee: 85),
    User(
        id: 4,
        name: 'David Brown',
        phone: '9033000004',
        city: 'Houston',
        image: 'https://randomuser.me/api/portraits/men/1.jpg',
        rupee: 55),
    User(
        id: 5,
        name: 'Eve Davis',
        phone: '9033000005',
        city: 'Phoenix',
        image: 'https://randomuser.me/api/portraits/women/4.jpg',
        rupee: 20),
    User(
        id: 6,
        name: 'Frank Moore',
        phone: '9033000006',
        city: 'Philadelphia',
        image: 'https://randomuser.me/api/portraits/men/2.jpg',
        rupee: 70),
    User(
        id: 7,
        name: 'Grace Wilson',
        phone: '9033000007',
        city: 'San Antonio',
        image: 'https://randomuser.me/api/portraits/women/5.jpg',
        rupee: 35),
    User(
        id: 8,
        name: 'Hank Taylor',
        phone: '9033000008',
        city: 'San Diego',
        image: 'https://randomuser.me/api/portraits/men/3.jpg',
        rupee: 95),
    User(
        id: 9,
        name: 'Ivy Anderson',
        phone: '9033000009',
        city: 'Dallas',
        image: 'https://randomuser.me/api/portraits/women/6.jpg',
        rupee: 45),
    User(
        id: 10,
        name: 'Jack Thomas',
        phone: '9033000010',
        city: 'San Jose',
        image: 'https://randomuser.me/api/portraits/men/4.jpg',
        rupee: 10),
    User(
        id: 11,
        name: 'Karen Jackson',
        phone: '9033000011',
        city: 'Austin',
        image: 'https://randomuser.me/api/portraits/women/7.jpg',
        rupee: 75),
    User(
        id: 12,
        name: 'Leo Martin',
        phone: '9033000012',
        city: 'Jacksonville',
        image: 'https://randomuser.me/api/portraits/men/5.jpg',
        rupee: 60),
    User(
        id: 13,
        name: 'Mia Lee',
        phone: '9033000013',
        city: 'Fort Worth',
        image: 'https://randomuser.me/api/portraits/women/8.jpg',
        rupee: 30),
    User(
        id: 14,
        name: 'Noah Harris',
        phone: '9033000014',
        city: 'Columbus',
        image: 'https://randomuser.me/api/portraits/men/6.jpg',
        rupee: 50),
    User(
        id: 15,
        name: 'Olivia Martinez',
        phone: '9033000015',
        city: 'Charlotte',
        image: 'https://randomuser.me/api/portraits/women/9.jpg',
        rupee: 25),
    User(
        id: 16,
        name: 'Paul Robinson',
        phone: '9033000016',
        city: 'San Francisco',
        image: 'https://randomuser.me/api/portraits/men/7.jpg',
        rupee: 80),
    User(
        id: 17,
        name: 'Quinn Clark',
        phone: '9033000017',
        city: 'Indianapolis',
        image: 'https://randomuser.me/api/portraits/men/8.jpg',
        rupee: 15),
    User(
        id: 18,
        name: 'Ryan Rodriguez',
        phone: '9033000018',
        city: 'Seattle',
        image: 'https://randomuser.me/api/portraits/men/9.jpg',
        rupee: 100),
    User(
        id: 19,
        name: 'Sara Lewis',
        phone: '9033000019',
        city: 'Denver',
        image: 'https://randomuser.me/api/portraits/women/10.jpg',
        rupee: 5),
    User(
        id: 20,
        name: 'Tom Walker',
        phone: '9033000020',
        city: 'Washington',
        image: 'https://randomuser.me/api/portraits/men/10.jpg',
        rupee: 90),
    User(
        id: 21,
        name: 'Uma Hall',
        phone: '9033000021',
        city: 'Boston',
        image: 'https://randomuser.me/api/portraits/women/11.jpg',
        rupee: 55),
    User(
        id: 22,
        name: 'Victor Allen',
        phone: '9033000022',
        city: 'El Paso',
        image: 'https://randomuser.me/api/portraits/men/11.jpg',
        rupee: 35),
    User(
        id: 23,
        name: 'Wendy Young',
        phone: '9033000023',
        city: 'Nashville',
        image: 'https://randomuser.me/api/portraits/women/12.jpg',
        rupee: 65),
    User(
        id: 24,
        name: 'Xander King',
        phone: '9033000024',
        city: 'Detroit',
        image: 'https://randomuser.me/api/portraits/men/12.jpg',
        rupee: 40),
    User(
        id: 25,
        name: 'Yara Scott',
        phone: '9033000025',
        city: 'Memphis',
        image: 'https://randomuser.me/api/portraits/women/13.jpg',
        rupee: 70),
    User(
        id: 26,
        name: 'Zane Green',
        phone: '9033000026',
        city: 'Portland',
        image: 'https://randomuser.me/api/portraits/men/13.jpg',
        rupee: 50),
    User(
        id: 27,
        name: 'Ava Adams',
        phone: '9033000027',
        city: 'Oklahoma',
        image: 'https://randomuser.me/api/portraits/women/14.jpg',
        rupee: 45),
    User(
        id: 28,
        name: 'Blake Baker',
        phone: '9033000028',
        city: 'Las Vegas',
        image: 'https://randomuser.me/api/portraits/men/14.jpg',
        rupee: 60),
    User(
        id: 29,
        name: 'Chloe Gonzalez',
        phone: '9033000029',
        city: 'Baltimore',
        image: 'https://randomuser.me/api/portraits/women/15.jpg',
        rupee: 20),
    User(
        id: 30,
        name: 'Dylan Perez',
        phone: '9033000030',
        city: 'Louisville',
        image: 'https://randomuser.me/api/portraits/men/15.jpg',
        rupee: 85),
    User(
        id: 31,
        name: 'Ella Cooper',
        phone: '9033000031',
        city: 'Milwaukee',
        image: 'https://randomuser.me/api/portraits/women/16.jpg',
        rupee: 35),
    User(
        id: 32,
        name: 'Finn Turner',
        phone: '9033000032',
        city: 'Albuquerque',
        image: 'https://randomuser.me/api/portraits/men/16.jpg',
        rupee: 95),
    User(
        id: 33,
        name: 'Grace Parker',
        phone: '9033000033',
        city: 'Tucson',
        image: 'https://randomuser.me/api/portraits/women/17.jpg',
        rupee: 25),
    User(
        id: 34,
        name: 'Henry Evans',
        phone: '9033000034',
        city: 'Fresno',
        image: 'https://randomuser.me/api/portraits/men/17.jpg',
        rupee: 75),
    User(
        id: 35,
        name: 'Isla Collins',
        phone: '9033000035',
        city: 'Sacramento',
        image: 'https://randomuser.me/api/portraits/women/18.jpg',
        rupee: 10),
    User(
        id: 36,
        name: 'Jake Stewart',
        phone: '9033000036',
        city: 'Kansas City',
        image: 'https://randomuser.me/api/portraits/men/18.jpg',
        rupee: 80),
    User(
        id: 37,
        name: 'Kylie Morris',
        phone: '9033000037',
        city: 'Mesa',
        image: 'https://randomuser.me/api/portraits/women/19.jpg',
        rupee: 15),
    User(
        id: 38,
        name: 'Liam Murphy',
        phone: '9033000038',
        city: 'Atlanta',
        image: 'https://randomuser.me/api/portraits/men/19.jpg',
        rupee: 100),
    User(
        id: 39,
        name: 'Mia Sanchez',
        phone: '9033000039',
        city: 'Omaha',
        image: 'https://randomuser.me/api/portraits/women/20.jpg',
        rupee: 55),
    User(
        id: 40,
        name: 'Nolan Rivera',
        phone: '9033000040',
        city: 'Colorado',
        image: 'https://randomuser.me/api/portraits/men/20.jpg',
        rupee: 30),
    User(
        id: 41,
        name: 'Olivia Price',
        phone: '9033000041',
        city: 'Raleigh',
        image: 'https://randomuser.me/api/portraits/women/21.jpg',
        rupee: 50),
    User(
        id: 42,
        name: 'Parker Bennett',
        phone: '9033000042',
        city: 'Miami',
        image: 'https://randomuser.me/api/portraits/men/21.jpg',
        rupee: 40),
    User(
        id: 43,
        name: 'Quinn Campbell',
        phone: '9033000043',
        city: 'Virginia',
        image: 'https://randomuser.me/api/portraits/women/22.jpg',
        rupee: 65),
  ];

  String getUserName(int index) {
    return _userList[index].name;
  }

  int getUserPhone(int index) {
    return int.parse(_userList[index].phone);
  }

  int getUserId(int index) {
    return _userList[index].id;
  }

  String getUserCity(int index) {
    return _userList[index].city;
  }

  String getUserImage(int index) {
    return _userList[index].image;
  }

  int getRupee(int index) {
    return _userList[index].rupee;
  }

  int getListLength() {
    return _userList.length;
  }

  List<User> getUserList() {
    return _userList;
  }

  void updateRupee(int index, int newValue) {
    print(_userList[index].rupee);
    _userList[index].rupee = newValue;
    print(_userList[index].rupee);
  }
}
