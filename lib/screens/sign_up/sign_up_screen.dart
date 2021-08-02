import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override _OnSignUpScreensState createState() => _OnSignUpScreensState();
}

class _OnSignUpScreensState extends State<SignUpScreen> {
  final introKey        = GlobalKey<IntroductionScreenState>();
  final _keySignUpPage1 = GlobalKey<FormState>();
  final _keySignUpPage2 = GlobalKey<FormState>();
  final _keySignUpPage3 = GlobalKey<FormState>();
  final _keySignUpPage4 = GlobalKey<FormState>();
  final _keySignUpPage5 = GlobalKey<FormState>();


  void _onIntroEnd(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (_) => HomePage()),
    // );
  }


  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const _textStyle = TextStyle(fontSize: 19);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    final page1 = PageViewModel(
      title: 'Привет!',
      bodyWidget: Form(
        key: _keySignUpPage1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>
          [ const Text( 'Для регистрации введи свой номер телефона', style: _textStyle),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '+7 (000) 000 00 00',
              ),
              validator: (value) {
                // TODO(Eugen): implement tel number validation
                if (value == null || value.isEmpty) {
                  return 'введи свой номер телефона';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if the form is invalid.
                  if (_keySignUpPage1.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: const Text('Next', style: _textStyle), // TODO(Eugen): clarify how to enable key only after validation succeeded
              ),
            ),
          ],
        )
      )
      //image: _buildImage('img1.jpg'),
      //decoration: pageDecoration,
    );

    final page2 = PageViewModel(
      title: 'Код',
      bodyWidget: Form(
          key: _keySignUpPage2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [ const Text( 'Введи код из СМС сообщения', style: _textStyle),
              TextFormField(
                decoration: const InputDecoration(
                  // TODO(Eugen): clarify how to make input field with 4 single input fields with 1 character each
                  hintText: '0000',
                ),
                validator: (value) {
                  // TODO(Eugen): implement code validation (only numbers?, capital/normal characters)
                  if (value == null || value.isEmpty) {
                    return 'Введи код';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if // the form is invalid.
                    if (_keySignUpPage2.currentState!.validate()) {
                      // Process data.
                    }
                  },
                  child: const Text('Next', style: _textStyle),// TODO(Eugen): clarify how to enable key only after validation succeeded
                ),
              ),
            ],
          )
      ),

      //image: _buildImage('img2.jpg'),
      decoration: pageDecoration,
    );
    final page3 = PageViewModel(
      title: 'Давай знакомиться!',
      bodyWidget: Form(
          key: _keySignUpPage3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [ const Text( 'Скажи как тебя зовут', style: _textStyle),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Имя',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // TODO(Eugen): disable next button
                    return 'Имя';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Фамилия',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Фамилия';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if the form is invalid.
                    if (_keySignUpPage3.currentState!.validate()) {
                      // Process data.
                    }
                  },
                  child: const Text('Next', style: _textStyle), // TODO(Eugen): clarify how to enable key only after validation succeeded
                ),
              ),
            ],
          )
      ),
      //image: _buildImage('img3.jpg'),
      decoration: pageDecoration,
    );

    final page4 = PageViewModel(
      title: 'Дата рождения',
      bodyWidget: Form(
          key: _keySignUpPage4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [ TextFormField(
                decoration: const InputDecoration(
                  hintText: '00.00.0000',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '00.00.0000';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_keySignUpPage4.currentState!.validate()) {
                      // Process data.
                    }
                  },
                  child: const Text('Next', style: _textStyle), // TODO(Eugen): clarify how to enable key only after validation succeeded
                ),
              ),
            ],
          )
      ),
      decoration: pageDecoration,
    );

    final page5 = PageViewModel(
      title: 'Придумай ник',
      bodyWidget: Form(
          key: _keySignUpPage5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [ const Text('Ты сможешь использовать ник как логин или как иникальное имя в сервисе', style: _textStyle),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: '@nickname',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'ник';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_keySignUpPage5.currentState!.validate()) {
                      // Process data.
                    }
                  },
                  child: const Text('Next', style: _textStyle), // TODO(Eugen): clarify how to enable key only after validation succeeded
                ),
              ),
            ],
          )
      ),
      decoration: pageDecoration,
    );

    // TODO(Eugen): clarify how to access to gallery and add photo
    final page6 = PageViewModel(
      title: 'Добавь фото',
      bodyWidget : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>
        [ const Text('Можешь добавть фото сейчас, а можешь потом в настройках профиля', style: _textStyle),
        ]
      ),
    );

    final introductionScreen = IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      // globalHeader: const Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: EdgeInsets.only(top: 16, right: 16),
      //       //child: _buildImage('flutter.png', 100),
      //     ),
      //   ),
      // ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Регистрация!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [page1, page2, page3, page4, page5, page6],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      //showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      //controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(32.0, 32.0),
        //color: Color(0xFFBDBDBD),
        //color: Color(0xFFFF005C),
        color: Colors.black,
        activeColor : Colors.black,
        activeSize: Size(32 * 3, 32.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        //color: Colors.black87,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          //borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );

    return introductionScreen;
  }
}

// return const Scaffold(
//   body: SafeArea(
//     child: introductionScreen,
//     ),
//   ),
// );
