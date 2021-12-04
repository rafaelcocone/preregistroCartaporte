import app from './app'

//Starting the server
app.listen(app.get('port'))
console.log("server on port: ",app.get('port'))
