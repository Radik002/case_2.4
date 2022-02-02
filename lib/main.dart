import 'package:case_24_theme/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

void showInSnackBar(BuildContext context, String value) {
  final snackBar = SnackBar(
    content: Text(value),
    duration: Duration(milliseconds: 300),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter test",
      theme: globalTheme(),
      home: widget(),
    );
  }
}

class widget extends StatelessWidget {
  const widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: Colors.black12, width: 3));

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Демо',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                )),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Регистрация',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Nunito',
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 20,
              ),
              const Text(
                'Чтобы зарегистрироваться\n введите свой номер телефона и почту',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 14),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Телефон',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '+7',
                    filled: true,
                    fillColor: Colors.black12,
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 14, bottom: 10.0),
                child: Text(
                  'Почта',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Вам придет четырехзначный код,\n который будет вашим паролем',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Изменить пароль можно\n будет в личном кабинете после\n регистрации',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 31,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Отправить код',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
