
## Getting Started

Prerequisites:

* Node installed
* Ready to be patient :) 

First, you'll need to install [Create React Native App](https://github.com/react-community/create-react-native-app).

`npm install -g create-react-native-app`


# Create our app _Fortunes_:

`react-native init Fortunes` 

# Test it out - iOS

`> cd Fortunes`
`> react-native run-ios`

It should build and launch the simulator. After it loads the bundle, you should see a screen with "Welcome to React Native!" on it.


# Take a tour of App.js

With your editor, open `App.js`. Let's go through this file section by section.

## Imports

At the top of the file are the `import` statements. Pretty straightforward, these will bring the exports from other modules you will need into this file.
```
import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';
```
More about `import` and its syntax [here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import). 

For now, we're just importing exports from the `react` and `react-native` modules. The `react-native` module contains the building blocks needed to create native components from Javascript, while `react` contains the base classes used to compute the layout and build components. We'll be subclassing the React `Component` to make our UI.

The next block illustrates how you might do something that's platform-specific. In this case, the way you access the React Native dev menu on Android is different than on iOS, so the string value of `instructions` will be determined by which platform we're on.

```
const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});
```

Now we can get to the meat of our code, which will defines the UI and how we handle state changes.

```
type Props = {};
export default class App extends Component<Props> {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit App.js
        </Text>
        <Text style={styles.instructions}>
          {instructions}
        </Text>
      </View>
    );
  }
}
```






# Let's code!



# Create our app 


> Written with [StackEdit](https://stackedit.io/).