## Getting Started

Prerequisites:

* Node installed
* Ready to be patient :) 

First, you'll need to install [Create React Native App](https://github.com/react-community/create-react-native-app).

`npm install -g create-react-native-app`


# Create our app `ReactFortunes`:

`react-native init ReactFortunes` 

# Test it out - iOS

`> cd ReactFortunes`
`> react-native run-ios`

It should build and launch the simulator. After it loads the bundle, you should see a screen with "Welcome to React Native!" on it.


# Take a tour of App.js

With your editor, open `App.js`. Let's go through this file section by section.

## Imports

At the top of the file are the `import` statements. Pretty straightforward, these will bring the exports from other modules you will need into this file.

More about `import` and its syntax [here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import). 

```
import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';
```

For now, we're just importing exports from the `react` and `react-native` modules. The `react-native` module contains the building blocks needed to create native components from Javascript, while `react` contains the base classes used to compute the layout and build components. We'll be subclassing the React `Component` to make our UI.

```
const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

```





# Let's code!



# Create our app 
