var xhr = new XMLHttpRequest();
var url = 'http://apis.data.go.kr/B552584/EvCharger/getChargerInfo'; /*URL*/
var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'mnUlBGGUwAhkbrePB0BjlD4C6IgJBf+nggDmp4B/75ZYKBpXRAEkpYE5PTjpa0I4SQ9Dks5/Jkyd56nSL75+0Q==
'; /*Service Key*/
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
queryParams += '&' + encodeURIComponent('period') + '=' + encodeURIComponent('5'); /**/
queryParams += '&' + encodeURIComponent('zcode') + '=' + encodeURIComponent('11'); /**/
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
    }
};

xhr.send('');