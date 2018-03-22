import React, { Component } from 'react';
import {
    Platform,
    StyleSheet,
    Text,
    View,
    TouchableOpacity
} from 'react-native';


type Props = {
    onPress: Function
}
export default class GetFortuneButton extends Component<Props> {

    render() {
        return (
            <TouchableOpacity onPress={this.props.onPress}>
                <View style={styles.container} accessibilityLabel={'Get Fortune Button'}>
                        <Text style={styles.buttonText}>New Fortune</Text>
                </View>
            </TouchableOpacity>
        )
    }

}

const styles = StyleSheet.create({
    container: {
        backgroundColor: '#ECAE24',
        height: 55,
        justifyContent: 'center',
    },
    buttonText: {
        fontFamily: 'karate',
        textAlign: 'center',
        fontSize: 32,
        color: 'white',
    } 
});
