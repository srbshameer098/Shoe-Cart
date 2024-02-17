import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Add_Card extends StatefulWidget {
  const Add_Card({Key? key}) : super(key: key);

  @override
  State<Add_Card> createState() => _Add_CardState();
}

class _Add_CardState extends State<Add_Card> {

  bool isLightTheme = false;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  bool useFloatingAnimation = true;
  final OutlineInputBorder border = OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.grey.withOpacity(0.7),
  width: 2.0,
  ),
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      resizeToAvoidBottomInset: false,
      body: Builder(
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(
                  isLightTheme ? 'assets/bg-light.png' : 'assets/bg-dark.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    onPressed: () => setState(() {
                      isLightTheme = !isLightTheme;
                    }),
                    icon: Icon(
                      isLightTheme ? Icons.light_mode : Icons.dark_mode,
                    ),
                  ),
                  CreditCardWidget(
                    enableFloatingCard: useFloatingAnimation,
                    glassmorphismConfig: _getGlassmorphismConfig(),
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    bankName: 'Axis Bank',
                    frontCardBorder: useGlassMorphism
                        ? null
                        : Border.all(color: Colors.grey),
                    backCardBorder: useGlassMorphism
                        ? null
                        : Border.all(color: Colors.grey),
                    showBackView: isCvvFocused,
                    obscureCardNumber: true,
                    obscureCardCvv: true,
                    isHolderNameVisible: true,
                    cardBgColor: isLightTheme
                        ? Colors.redAccent
                        : Colors.blueAccent,
                    backgroundImage:
                    useBackgroundImage ? 'assets/card_bg.png' : null,
                    isSwipeGestureEnabled: true,
                    onCreditCardWidgetChange:
                        (CreditCardBrand creditCardBrand) {},
                    customCardTypeIcons: <CustomCardTypeIcon>[
                      CustomCardTypeIcon(
                        cardType: CardType.mastercard,
                        cardImage: Image.asset(
                          'assets/mastercard.png',
                          height: 48,
                          width: 48,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          CreditCardForm(
                            formKey: formKey,
                            obscureCvv: true,
                            obscureNumber: true,
                            cardNumber: cardNumber,
                            cvvCode: cvvCode,
                            isHolderNameVisible: true,
                            isCardNumberVisible: true,
                            isExpiryDateVisible: true,
                            cardHolderName: cardHolderName,
                            expiryDate: expiryDate,
                            inputConfiguration: const InputConfiguration(
                              cardNumberDecoration: InputDecoration(
                                labelText: 'Number',
                                hintText: 'XXXX XXXX XXXX XXXX',
                              ),
                              expiryDateDecoration: InputDecoration(
                                labelText: 'Expired Date',
                                hintText: 'XX/XX',
                              ),
                              cvvCodeDecoration: InputDecoration(
                                labelText: 'CVV',
                                hintText: 'XXX',
                              ),
                              cardHolderDecoration: InputDecoration(
                                labelText: 'Card Holder',
                              ),
                            ),
                            onCreditCardModelChange: onCreditCardModelChange,
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('Glassmorphism'),
                                const Spacer(),
                                Switch(
                                  value: useGlassMorphism,
                                  inactiveTrackColor: Colors.grey,
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.red,
                                  onChanged: (bool value) => setState(() {
                                    useGlassMorphism = value;
                                  }),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('Card Image'),
                                const Spacer(),
                                Switch(
                                  value: useBackgroundImage,
                                  inactiveTrackColor: Colors.grey,
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.blueAccent,
                                  onChanged: (bool value) => setState(() {
                                    useBackgroundImage = value;
                                  }),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('Floating Card'),
                                const Spacer(),
                                Switch(
                                  value: useFloatingAnimation,
                                  inactiveTrackColor: Colors.grey,
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.yellowAccent,
                                  onChanged: (bool value) => setState(() {
                                    useFloatingAnimation = value;
                                  }),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: _onValidate,
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xffe06f6f),
                                    Color(0xffda915d),
                                    Color(0xffe0b86f),
                                    Color(0xffb1e755),
                                    Color(0xff6fe09c),
                                    Color(0xff6fc2e0),
                                    Color(0xffa26fe0),
                                  ],
                                  begin: Alignment(-1, -4),
                                  end: Alignment(1, 4),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              padding:
                              const EdgeInsets.symmetric(vertical: 15),
                              alignment: Alignment.center,
                              child: const Text(
                                'Validate',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'halter',
                                  fontSize: 14,
                                  package: 'flutter_credit_card',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
   
  }

  void _onValidate() {
    if (formKey.currentState?.validate() ?? false) {
      print('valid!');
    } else {
      print('invalid!');
    }
  }

  Glassmorphism? _getGlassmorphismConfig() {
    if (!useGlassMorphism) {
      return null;
    }

    final LinearGradient gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[Colors.grey.withAlpha(50), Colors.grey.withAlpha(50)],
      stops: const <double>[0.3, 0],
    );

    return isLightTheme
        ? Glassmorphism(blurX: 8.0, blurY: 16.0, gradient: gradient)
        : Glassmorphism.defaultConfig();
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

}

// class AppColors {
// }