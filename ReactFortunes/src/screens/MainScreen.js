import React, { Component } from 'react';
import {
    Platform,
    StyleSheet,
    Text,
    View,
    Button
} from 'react-native';

import GetFortuneButton from '../components/GetFortuneButton';
import FortuneView from '../components/FortuneView';
import { fetchFortune } from '../actions';

export default class MainScreen extends Component {


    constructor(props) {
        super(props)

        this.state = {
            currentFortune: undefined
        }
    } 

    fetchFortuneButtonPressed() {
        fetchFortune(this.setFortune.bind(this));
    }

    setFortune(fortune) {
        this.setState({
            currentFortune: fortune
        });
    }

    render() {
        return (

            <View style={{flex: 1, flexDirection: 'column', backgroundColor: 'green' }} accessibilityLabel={'Main Screen'}>
                <View style={styles.titleView}>
                    <Text style={styles.titleViewText}>React Fortunes</Text>
                </View>
                {this.state.currentFortune && 
                    <FortuneView myFortune={this.state.currentFortune}/>
                }
                <GetFortuneButton style={styles.getFortuneButton} onPress={this.fetchFortuneButtonPressed.bind(this)}/>
            </View>
        )
    }

}

const styles = StyleSheet.create({
    titleView: {
        top: 10,
        alignContent: 'center',
        margin: 10,
    }, 
    titleViewText: {
        marginTop: 30,
        margin: 10,
        fontSize: 48,
        color: '#CC0000',
        textAlign: 'center',
        fontFamily: 'karate'
    },
    getFortuneButton: {
        padding: 50,
        borderWidth: 2
    }
});
