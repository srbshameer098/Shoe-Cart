import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../Widgets/Dailog_box.dart';
bool isLightTheme = false;
String cardNumber = '';
String expiryDate = '';
String cardHolderName = '';
String cvvCode = '';
bool isCvvFocused = false;
bool useGlassMorphism = false;
bool useBackgroundImage = true;
bool useFloatingAnimation = false;
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
List<Widget> cards = [
//  -------------  card 1  ----------------------  //

CreditCardWidget(
enableFloatingCard: useFloatingAnimation,

cardNumber: cardNumber,
expiryDate: expiryDate,
cardHolderName: cardHolderName,
cvvCode: cvvCode,
bankName: 'Credit Card',
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
?Color(0xffff0000)
: Color(0xff000000),
backgroundImage:
useBackgroundImage ? 'assets/cardlogo1.png' : null,
isSwipeGestureEnabled: false,
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

  //  -------------  card 2  ----------------------  //

  CreditCardWidget(
    enableFloatingCard: useFloatingAnimation,

    cardNumber: cardNumber,
    expiryDate: expiryDate,
    cardHolderName: cardHolderName,
    cvvCode: cvvCode,
    bankName: 'Credit Card',
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
        ?Color(0xffff0000)
        : Color(0xff000000),
    backgroundImage:
    useBackgroundImage ? 'assets/cardlogo2.png' : null,
    isSwipeGestureEnabled: false,
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

//  -------------  card 3  ----------------------  //
CreditCardWidget(
enableFloatingCard: useFloatingAnimation,

cardNumber: cardNumber,
expiryDate: expiryDate,
cardHolderName: cardHolderName,
cvvCode: cvvCode,
bankName: 'Debit Card',
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
?Color(0xffff0000)
: Color(0xff000000),
backgroundImage:
useBackgroundImage ? 'assets/cardlogo3.png' : null,
isSwipeGestureEnabled: false,
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

  //  -------------  card 4  ----------------------  //
  CreditCardWidget(
    enableFloatingCard: useFloatingAnimation,

    cardNumber: cardNumber,
    expiryDate: expiryDate,
    cardHolderName: cardHolderName,
    cvvCode: cvvCode,
    bankName: 'Debit Card',
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
        ?Color(0xffff0000)
        : Color(0xff000000),
    backgroundImage:
    useBackgroundImage ? 'assets/cardlogo4.png' : null,
    isSwipeGestureEnabled: false,
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

//  -------------  card 5  ----------------------  //
  CreditCardWidget(
    enableFloatingCard: useFloatingAnimation,

    cardNumber: cardNumber,
    expiryDate: expiryDate,
    cardHolderName: cardHolderName,
    cvvCode: cvvCode,
    bankName: 'Debit Card',
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
        ?Color(0xffff0000)
        : Color(0xff000000),
    backgroundImage:
    useBackgroundImage ? 'assets/cardlogo5.png' : null,
    isSwipeGestureEnabled: false,
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



];
class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('cards'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          child: Column(
            children: [
        
              Center(
                child: Container(
                  width: 400,
                  height: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                // border: Border.all(
                //     width: 1, color: Colors.grey.shade900),
               ),
                  child: Swiper(
        
                    itemBuilder: (context, index) => cards[index],
                    itemCount: cards.length,scrollDirection: Axis.vertical,
                    layout: SwiperLayout.STACK,itemHeight: 225,itemWidth: 400,
                  ),
                ),
              ),
        
        
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
               child: Row(
                 children: [
                   Column(children: [

                     SizedBox(width: 280.w,
                       child: TextFormField(
                         decoration: const InputDecoration(


                           labelText: 'Number *',
                         ),
                         onSaved: (String? value) {
                           // This optional block of code can be used to run
                           // code when the user saves the form.
                         },
                         validator: (String? value) {
                           return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                         },
                       ),
                     )

                   ],)
                 ],
               ),
             ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                child: Row(
                children: [
                  SizedBox(width: 130.w,
                    child: TextFormField(
                      decoration: const InputDecoration(


                        labelText: 'Expairy Date *',
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                      },
                    ),
                  ),
                  SizedBox(width: 30.h,),
                  SizedBox(width: 100.w,
                    child: TextFormField(
                      decoration: const InputDecoration(


                        labelText: 'CCV *',
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                      },
                    ),
                  ),
                ]

                ),
              ),
        
              SizedBox(height: 70.h,),
        
              TextButton(onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder)=>CustomDialog()  ));
              },
                child: Container(
                    width: 320.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                            width: 1, color: Colors.grey.shade900),
                        color: Color(0xfd000000)),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 79.w),
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              'Confirm Payment',
                              style: TextStyle(color: Colors.white,fontSize: 20.sp),
                            ),
                          ),
                        ],
                      ),
                    )),)
            ],
          ),
        ),
      ),
    );
  }
}
