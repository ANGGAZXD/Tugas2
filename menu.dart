import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _counterMocha = 0;
  int hargaMocha = 2;

  int _counterAmerica = 0;
  int hargaAmerica = 2;

  int _counterIce = 0;
  int hargaIce = 2;

  int _counterChocolate = 0;
  int hargaChocolate = 2;

  int _counterCrispy = 0;
  int hargaCrispy = 2;

  int _counterChicken = 0;
  int hargaChicken = 2;

  void _incrementCounterMocha() {
    setState(() {
      _counterMocha++;
    });
  }

  void _decrementCounterMocha() {
    setState(() {
      _counterMocha--;
    });
  }

  void _incrementCounterAmerica() {
    setState(() {
      _counterAmerica++;
    });
  }

  void _decrementCounterAmerica() {
    setState(() {
      _counterAmerica--;
    });
  }

  void _incrementCounterIce() {
    setState(() {
      _counterIce++;
    });
  }

  void _decrementCounterIce() {
    setState(() {
      _counterIce--;
    });
  }

  void _incrementCounterChocolate() {
    setState(() {
      _counterChocolate++;
    });
  }

  void _decrementCounterChocolate() {
    setState(() {
      _counterChocolate--;
    });
  }

  void _incrementCounterCrispy() {
    setState(() {
      _counterCrispy++;
    });
  }

  void _decrementCounterCrispy() {
    setState(() {
      _counterCrispy--;
    });
  }

  void _incrementCounterChicken() {
    setState(() {
      _counterChicken++;
    });
  }

  void _decrementCounterChicken() {
    setState(() {
      _counterChicken--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        titleTextStyle: const TextStyle(color: Colors.black),
        title: const Text("Keranjang belanja"),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Pemesanan",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      backgroundColor: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey,
                  ),
                  child: const Text(
                    "catatan",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.brown),
                    color: Colors.brown,
                  ),
                  child: const Text(
                    "Daftar Pesanan",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 25,
                      backgroundColor: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          Card(
            color: Colors.brown,
            child: ListTile(
              leading: Image.asset('1.png'),
              isThreeLine: true,
              title: const Text('Mocha Latte'),
              trailing: const Icon(Icons.delete),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      Text(
                        hargaMocha.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _decrementCounterMocha,
                              icon: const Icon(Icons.remove),
                            ),
                          ),
                          TextSpan(
                            text: _counterMocha.toString(),
                            style: const TextStyle(fontSize: 20),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _incrementCounterMocha,
                              icon: const Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.brown,
            child: ListTile(
              leading: Image.asset('2.png'),
              isThreeLine: true,
              title: const Text('Americano Hot'),
              trailing: const Icon(Icons.delete),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      Text(
                        hargaMocha.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _decrementCounterAmerica,
                              icon: const Icon(Icons.remove),
                            ),
                          ),
                          TextSpan(
                            text: _counterAmerica.toString(),
                            style: const TextStyle(fontSize: 20),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _incrementCounterAmerica,
                              icon: const Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.brown,
            child: ListTile(
              leading: Image.asset('3.png'),
              isThreeLine: true,
              title: const Text('Ice Coffe Latte'),
              trailing: const Icon(Icons.delete),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      Text(
                        hargaIce.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _decrementCounterIce,
                              icon: const Icon(Icons.remove),
                            ),
                          ),
                          TextSpan(
                            text: _counterIce.toString(),
                            style: const TextStyle(fontSize: 20),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _incrementCounterIce,
                              icon: const Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.brown,
            child: ListTile(
              leading: Image.asset('4.png'),
              isThreeLine: true,
              title: const Text('Chocolate Croissant'),
              trailing: const Icon(Icons.delete),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      Text(
                        hargaChocolate.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _decrementCounterChocolate,
                              icon: const Icon(Icons.remove),
                            ),
                          ),
                          TextSpan(
                            text: _counterChocolate.toString(),
                            style: const TextStyle(fontSize: 20),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _incrementCounterChocolate,
                              icon: const Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.brown,
            child: ListTile(
              leading: Image.asset('5.png'),
              isThreeLine: true,
              title: const Text('Crispy Chicken Burger'),
              trailing: const Icon(Icons.delete),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      Text(
                        hargaCrispy.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _decrementCounterCrispy,
                              icon: const Icon(Icons.remove),
                            ),
                          ),
                          TextSpan(
                            text: _counterCrispy.toString(),
                            style: const TextStyle(fontSize: 20),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              onPressed: _incrementCounterCrispy,
                              icon: const Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.brown,
            child: ListTile(
              leading: Image.asset('6.png'),
              isThreeLine: true,
              title: const Text('Chicken Burger'),
              trailing: const Icon(Icons.delete),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      Text(
                        hargaChicken.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: IconButton(
                            onPressed: _decrementCounterChicken,
                            icon: const Icon(Icons.remove),
                          ),
                        ),
                        TextSpan(
                          text: _counterChicken.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                        WidgetSpan(
                            child: IconButton(
                          onPressed: _incrementCounterChicken,
                          icon: const Icon(Icons.add),
                        )),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
