import 'package:flutter/material.dart';


//The QuotesDaily App is starting from here

class QuotesDaily extends StatefulWidget {
  const QuotesDaily({Key? key}) : super(key: key);

  @override
  State<QuotesDaily> createState() => _QuotesDailyState();
}

class _QuotesDailyState extends State<QuotesDaily> {
  int _index = 0;

  List quotes = [

    "When you have a dream, you've got to grab it and never let go. — Carol Burnett",
    "Nothing is impossible. The word itself says 'I'm possible!' — Audrey Hepburn",
    "There is nothing impossible to they who will try. — Alexander the Great",
    "The bad news is time flies. The good news is you're the pilot. — Michael Altshuler",
    "Life has got all those twists and turns. You've got to hold on tight and off you go. — Nicole Kidman",
    "Keep your face always toward the sunshine, and shadows will fall behind you. — Walt Whitman",
    "Be courageous. Challenge orthodoxy. Stand up for what you believe in. When you are in your rocking chair talking to your grandchildren many years from now, be sure you have a good story to tell. — Amal Clooney",
    "You make a choice: continue living your life feeling muddled in this abyss of self-misunderstanding, or you find your identity independent of it. You draw your own box.  — Duchess Meghan",
    "Success is not final, failure is not fatal: it is the courage to continue that counts. - Winston Churchill",
    "You are never too old to set another goal or to dream a new dream. — Malala Yousafzai"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QuotesDaily",style: TextStyle(
            color: Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.greenAccent.shade200,
        ),
        body: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Container(
                width: 350,
                height: 200,
                margin: const EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.greenAccent.shade100,
                    borderRadius: BorderRadius.circular(14.5)),
                child: Center(
                    child: Text(
                  quotes[_index % quotes.length],
                  style: const TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.6),
                ))),
          ),
        ),
        // ignore: deprecated_member_use

        const Divider(
          thickness: 1.3,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          // ignore: deprecated_member_use
          child: FlatButton.icon(
              onPressed: _showQuote,
              color: Colors.greenAccent.shade700,
              icon: const Icon(Icons.wb_sunny),
              label: const Text(
                "Inspire Me!",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18.8,
                    color: Colors.white),
              )),
        ),
        const Spacer()
      ],
    )));
  }

  void _showQuote() {
    //increment our index/counter by 1 each time
    setState(() {
      _index += 1;
    });
  }
}
// End of QuotesDaily App







//Start of Business Card App
class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BizCard"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[Container_getCard(), Container_getAvatar()],
          )),
    );
  }

  Container_getCard() {
    return Container(
        width: 350,
        height: 200,
        margin: const EdgeInsets.all(70.0),
        decoration: BoxDecoration(
            color: Colors.blue.shade700,
            borderRadius: BorderRadius.circular(14.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Bhavyansh S Ameta",
              style: TextStyle(
                  fontSize: 20.7,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const Text(
              "Software Developer And Learner",
              style: TextStyle(fontStyle: FontStyle.normal),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.email),
                Text("bhavyanshameta@gmail.com")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.person_add),
                Text("GitHub: @bhavya0327")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.accessibility),
                Text("LinkedIn: @BhavyanshSAmeta")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.phone_android_sharp),
                Text("8290747359")
              ],
            )
          ],
        ));
  }

  Container_getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.tealAccent, width: 1.2),
          image: const DecorationImage(
              image: NetworkImage("https://picsum.photos/300/300"),
              fit: BoxFit.cover)),
    );
  }
}
// End of Business Card App







//This down here is an idea on how to start working with Scaffold

class ScaffoldExample extends StatelessWidget {
  _tappedButton() {
    debugPrint("Tapped Button!");
  }

  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
        centerTitle: true, // if false then center to the right
        backgroundColor: Colors.indigoAccent.shade700,
        actions: <Widget>[
          // states that we can input any widgets we want
          IconButton(
              onPressed: () => debugPrint("Email Tapped!"),
              icon: const Icon(Icons.email)),
          IconButton(
              onPressed: _tappedButton, icon: const Icon(Icons.access_alarms))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.call_missed),
        onPressed: () => debugPrint("Calling Back"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "Balance"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility), label: "Customer")
        ],
        onTap: (int index) => debugPrint("Tapped item: $index"),
      ),
      backgroundColor: Colors.tealAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CustomButton()

            // InkWell(
            //   child: Text("Tap Me!",
            //   style: TextStyle(fontSize: 23.4),),           
            //
            //   onTap: () => debugPrint("tapping...."),
            // )
          ],
        ),
      ),
    );
  }
}






// This down here is an idea of how to create an customButton through Stateless class

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: const Text("Hello Again!"),
          backgroundColor: Colors.amberAccent.shade700,
        );

        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(8.0)),
        child: const Text("Button"),
      ),
    );
  }
}




//This down here is an idea of how to start doing basic operations

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.blue,
      child: Center(
          child: Text(
        "Hello Bhavyansh",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 23.4,
            fontStyle: FontStyle.italic),
      )),
    );

    // return Center(
    //   child: Text("Hello Flutter!", textDirection: TextDirection.rtl,style: TextStyle(color: Colors.blue)),
    // );
  }
}
