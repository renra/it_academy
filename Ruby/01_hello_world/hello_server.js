const http = require('http');

const server = http.createServer((request, response) => {
    console.log(request.method + ' ' + request.url);

    response.write('<!DOCTYPE html>');
    response.write('<html>');
    response.write('<head>');
    response.write('</head>');
    response.write('<body>');
    response.write('<h1>Hello World!</h1>');
    response.write('<div>' + new Date()  + '</div>');
    response.write('</body>');
    response.end('</html>');
}).listen(8000);
