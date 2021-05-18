var app   = require('express')()
var http  = require('http').Server(app)
var io    = require('socket.io')(http)
var mysql = require('mysql')

var con = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  database : '48l',
  password : ''
})

var users = []

io.on('connection', function(socket) {


    socket.on('user_trying_to_fetch_his_data', function(data) {
        let user = users.find(user => user.user_id === data.id)
        if (user) {
            user.socket_id.push(socket.id)
        } else {
            users.push({user_id: data.id, socket_id: [socket.id]})
        }
        console.log(users)

        let sql = "SELECT * FROM users"
        con.query(sql, function (err, result) {
            if (err) throw err

            socket.emit('send_users_data', {users: result})
        })
    })

    socket.on('get_chat_with_user', function(data) {
        // my_id, user_id
        let sql = `SELECT * FROM messages WHERE user_id = ${data.my_id} AND r_id = ${data.user_id} OR user_id = ${data.user_id} AND r_id = ${data.my_id}`
        con.query(sql, function (err, result) {
            if (err) throw err

            socket.emit('send_chat_with_user', {messages: result})
        })
    })


    socket.on('send_message', function (data) {
        console.log(data.user_id)
        let user = users.find(user => user.user_id == data.user_id)
        let senderUser = users.find(user => user.socket_id == socket.id)
        console.log('user', user)
        if (user && senderUser) {
            user.socket_id.map(id => {
                if (io.sockets.sockets[id]) {
                    io.sockets.sockets[id].emit('recieve_message', {msg: data.msg, user_id: senderUser.user_id})
                }
            })
        }
        console.log('senderUser', senderUser)
    })




    // console.log('a user connected')
    // console.log(socket.id)


    socket.on('disconnect', function() {
        console.log('user disconnected')
    })

})

http.listen(3000, function(){
    console.log('listening on *:3000')
})
