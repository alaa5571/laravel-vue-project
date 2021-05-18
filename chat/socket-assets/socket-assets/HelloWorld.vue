<template>
    <div>
        <div class="users-chat-container">
            <div v-for="(user, index) in users" :key="index" class="users-chat" @click="openChat(user)">
                <div>{{user.name}}</div>
            </div>
        </div>

        <div class="opened-chats-container">
            <div class="opened-chat" v-for="user in openedChats">
                {{user.name}}
                <button class="btn btn-primary" @click="sendMessage(user)">Send Messsage</button>
                <div>{{user.messages}}</div>
            </div>
        </div>
    </div>
</template>

<script>

let io = require('socket.io-client')
let socket = io.connect('http://localhost:3000')

export default {
    data () {
        return {
            loading: false,
            users: [],
            openedChats: []
        }
    },
    methods: {
        openChat (user) {
            socket.emit('get_chat_with_user', {my_id: this.id, user_id: user.id})
            user.messages = []
            this.openedChats.push(user)
        },
        sendMessage (user) {
            socket.emit('send_message', {
                msg: 'hello there how are you!!!',
                user_id: user.id
            })
        }
    },
    mounted () {
        socket.emit('user_trying_to_fetch_his_data', {id: this.id})

        socket.on('send_users_data', (data) => {
            console.log('send_users_data')
            this.users = data.users.map(user => {
                user.messages = []
                return user
            })
        })
        
        socket.on('send_chat_with_user', (data) => {
            console.log('send_chat_with_user')
            console.log(data)
        })

        socket.on('recieve_message', (data) => {
            let user = this.users.find(user => user.id == data.user_id)
            if (user) {
                let openedChat = this.openedChats.find(user => user.id == data.user_id)
                if (!openedChat) {
                    this.openedChats.push(user)
                }
                user.messages.push(data.msg)
                this.$forceUpdate()
            }
            console.log('recieve_message')
            console.log(data)
        })

    },
    computed: {
        id () {
            return this.$route.params.id
        }
    }
}
</script>

<style>
.users-chat-container {
    position: fixed;
    right: 0;
    top: 0;
    width: 200px;
    height: 100%;
    background: #eee;
    overflow-y: scroll;
    z-index: 2;
}
.users-chat-container .users-chat {
    padding: 10px 15px;
    text-align: left;
    cursor: pointer;
}
.users-chat-container .users-chat:hover {
    background: #ddd;
}
.opened-chats-container {
    position: fixed;
    bottom: 0;
    right: 210px;
    height: 400px;
    background: #aaa;
    width: 100%;
    z-index: 1;
}
.opened-chats-container .opened-chat {
    width: 300px;
    height: 100%;
    background: red;
    float: right;
}
</style>