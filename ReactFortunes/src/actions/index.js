
// @flow
function fetchFortune(callback) {

    fetch('https://fortune.sashimiblade.com/')
        .then((response) => response.json())
        .then((fortune) => {
            callback(fortune);
        })
};

module.exports = {
    fetchFortune,
};
