
// @flow
function fetchFortune(callback) {

    fetch('https://2p7pqcehh3.execute-api.eu-central-1.amazonaws.com/production')
        .then((response) => response.json())
        .then((fortune) => {
            callback(fortune);
        })
};

module.exports = {
    fetchFortune,
};
