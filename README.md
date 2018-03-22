
## Getting Started

### iOS Code

Simply build and run the `iOSFortunes.xcodeproj` in the `iOSFortunes` directory. It should Just Work™️.

### React Native Code

In your terminal, `cd` to `ReactFortunes` and run either `npm install` or `yarn install`.
Then run `react-native run-ios` to start the app on the iOS simulator.

If you get the error `config.h not found`, run the following command from the `ReactFortunes` directory:

`cd node_modules/react-native/third-party/glog-* && ../../scripts/ios-configure-glog.sh;`

If you get an error like `configure: error: C compiler cannot create executables`, make sure you have the path to Xcode selected correctly using `xcode-select` and that the path to your Xcode does not have any spaces in it! Crazy stuff, huh?


After that completes, run `react-native run-ios` again.


[Presentation where I discuss and compare iOS and React Native implementations.](https://docs.google.com/presentation/d/1bkyl7WnIz6qJaL0rSMPZYXVDZdXm6yGncVLiLvHYAq8)
