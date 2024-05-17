import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sounds_Music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'Sounds_Music'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Sounds_Music',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Categoria'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Producto'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Fabricante'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ManufacturerPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Ventas'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SalesPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Usuario'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categoria'),
      ),
      body: SingleChildScrollView(
        // Agrega SingleChildScrollView
        child: Center(
          child: CategoryForm(),
        ),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Producto'),
      ),
      body: SingleChildScrollView(
        // Agrega SingleChildScrollView
        child: Center(
          child: ProductForm(),
        ),
      ),
    );
  }
}

class ManufacturerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fabricante'),
      ),
      body: SingleChildScrollView(
        // Agrega SingleChildScrollView
        child: Center(
          child: ManufacturerForm(),
        ),
      ),
    );
  }
}

class SalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventas'),
      ),
      body: SingleChildScrollView(
        // Agrega SingleChildScrollView
        child: Center(
          child: SalesForm(),
        ),
      ),
    );
  }
}

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuario'),
      ),
      body: SingleChildScrollView(
        // Agrega SingleChildScrollView
        child: Center(
          child: UserForm(),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final String labelText;
  final IconData prefixIcon;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Color borderColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.labelText,
          prefixIcon: Icon(widget.prefixIcon),
        ),
        onTap: () {
          setState(() {
            borderColor = Colors.green;
          });
        },
        onChanged: (value) {
          setState(() {
            borderColor = Colors.blue;
          });
        },
      ),
    );
  }
}

class CategoryForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          CustomTextField(
            labelText: 'ID de la categoria',
            prefixIcon: Icons.category,
          ),

          CustomTextField(
            labelText: 'Nombre de la categoría',
            prefixIcon: Icons.category,
          ),
          CustomTextField(
            labelText: 'Descripción',
            prefixIcon: Icons.description,
          ),
          CustomTextField(
            labelText: 'Fecha de creación',
            prefixIcon: Icons.calendar_today,
          ),
          CustomTextField(
            labelText: 'Nombre del producto',
            prefixIcon: Icons.shopping_bag,
          ),
          CustomTextField(
            labelText: 'Costos promedios',
            prefixIcon: Icons.attach_money,
          ),
          CustomTextField(
            labelText: 'Img',
            prefixIcon: Icons.image,
          ),
          CustomTextField(
            labelText: 'Nombre del fabricante',
            prefixIcon: Icons.business,
          ),
          // Agrega más campos según sea necesario
          SizedBox(height: 16), // Espacio entre los campos y el botón
          ElevatedButton(
            onPressed: () {
              // Lógica para enviar el formulario
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}

class ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          CustomTextField(
            labelText: 'ID del producto',
            prefixIcon: Icons.category,
          ),
          CustomTextField(
            labelText: 'Nombre del producto',
            prefixIcon: Icons.shopping_bag,
          ),
          CustomTextField(
            labelText: 'Descripción',
            prefixIcon: Icons.description,
          ),
          CustomTextField(
            labelText: 'Precio',
            prefixIcon: Icons.attach_money,
          ),
          CustomTextField(
            labelText: 'Dimensiones',
            prefixIcon: Icons.straighten,
          ),
          CustomTextField(
            labelText: 'Marca',
            prefixIcon: Icons.branding_watermark,
          ),
          CustomTextField(
            labelText: 'Numero de serie',
            prefixIcon: Icons.confirmation_number,
          ),
          CustomTextField(
            labelText: 'Lugar de creación',
            prefixIcon: Icons.place,
          ),
          CustomTextField(
            labelText: 'ID del fabricante',
            prefixIcon: Icons.category,
          ),
          CustomTextField(
            labelText: 'ID de la categoria',
            prefixIcon: Icons.category,
          ),
          // Agrega más campos según sea necesario
          SizedBox(height: 16), // Espacio entre los campos y el botón
          ElevatedButton(
            onPressed: () {
              // Lógica para enviar el formulario
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}

class ManufacturerForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          CustomTextField(
            labelText: 'ID del fabricante',
            prefixIcon: Icons.category,
          ),
          CustomTextField(
            labelText: 'Nombre del fabricante',
            prefixIcon: Icons.business,
          ),
          CustomTextField(
            labelText: 'Apellidos',
            prefixIcon: Icons.person,
          ),
          CustomTextField(
            labelText: 'Direccion',
            prefixIcon: Icons.location_on,
          ),
          CustomTextField(
            labelText: 'Piezas vendidas',
            prefixIcon: Icons.shopping_cart,
          ),
          CustomTextField(
            labelText: 'Telefono',
            prefixIcon: Icons.phone,
          ),
          CustomTextField(
            labelText: 'Instrumento fabricado',
            prefixIcon: Icons.build,
          ),
          CustomTextField(
            labelText: 'Sucursal donde trabaja',
            prefixIcon: Icons.store,
          ),
          CustomTextField(
            labelText: 'ID del producto',
            prefixIcon: Icons.category,
          ),
          CustomTextField(
            labelText: 'ID de la categoria',
            prefixIcon: Icons.category,
          ),
          // Agrega más campos según sea necesario
          SizedBox(height: 16), // Espacio entre los campos y el botón
          ElevatedButton(
            onPressed: () {
              // Lógica para enviar el formulario
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}

class SalesForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          CustomTextField(
            labelText: 'ID de ventas',
            prefixIcon: Icons.category,
          ),
          CustomTextField(
            labelText: 'Folio',
            prefixIcon: Icons.confirmation_number,
          ),
          CustomTextField(
            labelText: 'Direccion',
            prefixIcon: Icons.location_on,
          ),
          CustomTextField(
            labelText: 'Nombre completo',
            prefixIcon: Icons.person,
          ),
          CustomTextField(
            labelText: 'Pais',
            prefixIcon: Icons.public,
          ),
          CustomTextField(
            labelText: 'Estado',
            prefixIcon: Icons.location_city,
          ),
          CustomTextField(
            labelText: 'Ciudad',
            prefixIcon: Icons.location_city,
          ),
          CustomTextField(
            labelText: 'Codigo postal',
            prefixIcon: Icons.mail,
          ),
          CustomTextField(
            labelText: 'ID del producto',
            prefixIcon: Icons.category,
          ),
          CustomTextField(
            labelText: 'ID del usuario',
            prefixIcon: Icons.category,
          ),
          // Agrega más campos según sea necesario
          SizedBox(height: 16), // Espacio entre los campos y el botón
          ElevatedButton(
            onPressed: () {
              // Lógica para enviar el formulario
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}

class UserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          CustomTextField(
            labelText: 'ID del usuario',
            prefixIcon: Icons.category,
          ),
          CustomTextField(
            labelText: 'Nombre completo',
            prefixIcon: Icons.person,
          ),
          CustomTextField(
            labelText: 'Nombre de usuario',
            prefixIcon: Icons.account_circle,
          ),
          CustomTextField(
            labelText: 'Teléfono',
            prefixIcon: Icons.phone,
          ),
          CustomTextField(
            labelText: 'Email',
            prefixIcon: Icons.email,
          ),
          CustomTextField(
            labelText: 'Fecha de nacimiento',
            prefixIcon: Icons.cake,
          ),
          CustomTextField(
            labelText: 'Dirección',
            prefixIcon: Icons.location_on,
          ),
          CustomTextField(
            labelText: 'Género',
            prefixIcon: Icons.people,
          ),
          // Agrega más campos según sea necesario
          SizedBox(height: 16), // Espacio entre los campos y el botón
          ElevatedButton(
            onPressed: () {
              // Lógica para enviar el formulario
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}
