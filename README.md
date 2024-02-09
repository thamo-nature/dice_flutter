# dice_flutter

<h5>Expanded Widget</h5>
Expands a child of a Row, Column, or Flex so that the child fills the available space.
If multiple children are expanded, the available space is divided among them according to the flex factor.
<pre>
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image(
                  color: Colors.red,
                  image: AssetImage('../images/dice6.png'),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Image(
                  color: Colors.green,
                  image: AssetImage('../images/dice1.png'),
                ),
              ),
            ],
          ),
</pre>

<h5>FlatButton[Depreciated], TextButton replacement widget</h5>
RaisedButton -> ElevatedButton, OutlineButton -> OutlinedButton.

<pre>
            child: TextButton(

                  onPressed: () {
                    print("Right");
                  },

                  child: const Image(
                    image: AssetImage('../images/dice1.png'),
                  ),
                ),
</pre>

<h5>Stateful(mutable) and Stateless Widgets(immutable)</h5>
<pre>
    stful - Enter

    creates two parts - widget and state

//widget

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

//change the widget name accordingly
===> class DicePage extends StatefulWidget {
    const DicePage({super.key});

    @override
    State<DicePage> createState() => _DicePageState();
}


//state

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

////change the widget name accordingly
====> class _DicePageState extends State<DicePage> {  
     Widget build(BuildContext context) {
         return MaterialApp();
     }
 }


</pre>

<h5>Setting State</h5>
<pre>
        child: TextButton(
            onPressed: () {

                setState(() {
                  leftDiceNumber = 3;
                  print('$leftDiceNumber');
                });

            },
                child: Image(
                    //state will be updated here in the UI
                    image: AssetImage('../images/dice$leftDiceNumber.png'),
                  ),
        ),
</pre>

<h5>Functioning the state of the widget</h5>
<pre>

  void diceState() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

    onPressed: () {                
        setState(() {
          diceState();
        });
      },


      or


  void diceState() {
    setState(() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

    onPressed: () {                
        diceState();            
    },          

</pre>