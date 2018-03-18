import React, { Component } from 'react';
import {
    StyleSheet,
    Text,
    View,
    Button,
    Platform
} from 'react-native';



type Props = {
    myFortune: Object
}

const font = Platform.select({
  ios: 'American Typewriter',
  android: 'serif',
});

export default class FortuneView extends Component {

    render() {
        console.log(this.props.myFortune)
        return (
            <View style={styles.mainView}>
                <Text style={styles.fortuneText}>☺{this.props.myFortune.fortune_text}☺</Text>
                <Text style={styles.fortuneLuckyNumbers}>Lucky numbers: {this.props.myFortune.lucky_numbers}</Text>
            </View>
        )
    }
}


const styles = StyleSheet.create({
    mainView: {
        borderColor: '#AB0003',
        borderWidth: 1,
        padding: 10,
        margin: 10,
    },
    fortuneText: {
        fontSize: 18,
        fontFamily: font,
        padding: 5,
        color: '#AB0003',
        alignContent: 'center'
    },
    fortuneLuckyNumbers: {
        fontSize: 12,
        fontFamily: font,
        color: '#AB0003'
    },
});
