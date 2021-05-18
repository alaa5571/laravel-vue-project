var app   = require('express')()
var http  = require('http').Server(app)
var io    = require('socket.io')(http)
var mysql = require('mysql')
var escape = require('sql-escape');
/* Moment */
var moment = require('moment');
moment().format();

var con = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  database : '48l',
  password : ''
})

var users  = []
authUSer   = ''

io.on('connection', function(socket) {
                 /* Get Users Data */
    socket.on('get_users_data', function(data) {       
                /* Push Socket.id IN USers */
        var user = users.find(user => user.user_id === data.userId)
        if (user) {
            user.socket_id.push(socket.id)
        } else {
            users.push({user_id: data.userId, socket_id: [socket.id]})
        }          
                /* Get USers IN Chat List */ 
       let sqlSelect = `SELECT * FROM users WHERE id != ${data.userId}`
       con.query(sqlSelect, function (err, result) {
          if (err) throw err
          socket.emit('return_users_data', {users: result})
        })

    })  

                /* Get Chat With USer */
    socket.on('get_chat_with_user', function(data) {
        // my_id, user_id
        let sql = `SELECT * FROM messages WHERE user_id = ${data.userId} AND r_id = ${data.user.id} OR user_id = ${data.user.id} AND r_id = ${data.userId}`
        con.query(sql, function (err, result) {
            if (err) throw err
            socket.emit('return_chat_with_user', {msgs: result, r_id: data.user.id})
        // console.log(result)
        })
    })

                /*send message */
    socket.on('send_message', function(data) {
        var msg    = escape(data.msg)
                 /*date*/
        var d      = new Date()
        var day    = d.getDate()
        var year   = d.getFullYear()
        var months = ["January","February","March","April","May","June","July","August","September","October","November","December"];
        var month  = months[d.getMonth()]
        var time   = d.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true })
        var date       = new Date(year, 1, day)
        var created_at = month +' '+ day +', '+ year +' at '+ time
        console.log(created_at)

                        /* insert message in database */
        let sql    = `INSERT INTO messages (msg, r_id, user_id, created_at) VALUES ('${msg}', ${data.r_id}, ${data.s_id}, '${created_at}')`
        con.query(sql, function (err, result) {
            if (err) throw err;
                /* look for user if he conncted or not*/
            let Ruser       = users.find(user => user.user_id   === data.r_id)
            if (Ruser) {
                Ruser.socket_id.map(id => {
                    if (io.sockets.sockets[id]) {
                         io.sockets.sockets[id].emit('recieve_message', data)
                    }
                })
            }
        });
    })

    socket.on('user_write', function(data) {
        let Ruser       = users.find(user => user.user_id   == data.Ruser.id)
                    // console.log(data.code)
        if (Ruser) {
            Ruser.socket_id.map(id => {
                if (io.sockets.sockets[id]) {
                    io.sockets.sockets[id].emit('write_message_in_chat_box', data)
                }
            })
        }
        // console.log('user number '+ data.Authuser.id +' Write Now')
    })

        /* Get Inbox Messages */
    socket.on('get_inboxMessages', function(data) {
       // console.log('user number '+ data.id)
       let sql = `SELECT users.*,
                ( SELECT msg FROM messages WHERE (user_id = users.id AND r_id = ${data.id}) OR (user_id = ${data.id} AND r_id = users.id) ORDER BY id DESC LIMIT 1 ) msg, 
                ( SELECT created_at FROM messages WHERE (user_id = users.id AND r_id = ${data.id}) OR (user_id = ${data.id} AND r_id = users.id) ORDER BY id DESC LIMIT 1 ) created_at
                              FROM users LIMIT 10`
       // , (SELECT read FROM messages WHERE read = 0) seen
        if (true) {}
        con.query(sql, function (err, result) {
            if (err) throw err
            socket.emit('return_inboxMessages', result)              
 
            // console.log(result)
        })
    })

    
     socket.on('applyNotify', function(data) {
        let Ruser       = users.find(user => user.user_id   == data.to)
        // let senderUser  = users.find(user => user.socket_id == socket.id)
            // console.log(senderUser)
        if (Ruser) {
            Ruser.socket_id.map(id => {
                if (io.sockets.sockets[id]) {
                    io.sockets.sockets[id].emit('notify', data)
                    console.log('hello')
                }
            })
        }
    })
 
                      /*Notification */
    // socket.on('applyNotify', function(data) {
    //             /* look for user if he conncted or not*/
    //     let Rusers       = users.find(user => user.user_id   === data.creator_id)
    //     console.log(Rusers)
    //     if (Rusers) {
    //         Rusers.socket_id.map(id => {
    //             if (io.sockets.sockets[id]) {
    //                 io.to(id).emit('notified', data)
    //                 console.log(id)
    //                 console.log('applied')
    //             }
    //         })
    //     }
    // })
 
    socket.on('disconnect', function() {
          console.log('disconnect')
    })

    // console.log('a user connected')
    // console.log(socket.id)


   
})

http.listen(3000, function(){
    console.log('listening on *:3000')
})
