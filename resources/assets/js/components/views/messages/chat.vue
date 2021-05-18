<template>
  <div v-if="showChat">
    <div>
      <div class="users-chat-container" v-if="closeChatList">
        <button
          @click="closeChatList = false"
          class="btn btn-primary btn-block close-chat-list"
        >
          Online Chat
        </button>
        <div style="height: 90%; background: #;margin-top: 0px;overflow:auto;">
          <div
            v-for="(user, index) in users"
            :key="index"
            class="users-chat"
            @click="openChatBox(user)"
          >
            <div style="width: 90%">
              {{ user.first_name + " " + user.last_name }}
            </div>
            <li class="online-icon" v-if="user.online === 1"></li>
          </div>
        </div>
      </div>
      <button
        v-if="closeChatList == false"
        @click="closeChatList = true"
        class="btn btn-primary open-chat-list"
      >
        Online<br />
        Chat
      </button>
    </div>

    <div class="opened-chats-container">
      <div class="opened-chat" v-for="(user, index) in chatBoxes" :key="index">
        <div class="btn btn-block close-chat-box">
          <span class="pull-left">{{
            user.first_name + " " + user.last_name
          }}</span>
          <span class="close btn" @click="closeChatBox(index)">x</span>
        </div>
        <div id="chat-messages" class="chat-messages" v-chat-scroll>
          <div
            v-for="(message, index) in user.messages"
            :key="index"
            v-if="userId != message.r_id"
          >
            <div class="message-right pull-right">
              <div class="pic">
                <div
                  :style="{ backgroundImage: 'url(' + userData.avatar + ')' }"
                ></div>
              </div>
              <div class="txt pull-right">
                {{ message.msg }}
              </div>
            </div>
          </div>
          <div v-else class="message-left pull-left">
            <div class="pic">
              <div
                :style="{ backgroundImage: 'url(' + user.avatar + ')' }"
              ></div>
            </div>
            <div class="txt">
              {{ message.msg }}
            </div>
          </div>
          <div
            v-if="user.typing"
            style="width: 50px; margin-top: 15px; margin-bottom: 5px"
          >
            <img src="/images/typingNow.gif" />
          </div>
        </div>
        <div class="input">
          <button type="button" @click="sendMessage(user)">
            <i class="fa fa-send-o" style="font-size:24px; color: #2779A9"></i>
          </button>
          <textarea
            type="textarea"
            placeholder="type a message..."
            @keypress.prevent.enter="sendMessage(user)"
            v-validate="'required'"
            @keyup="userWrite(user, userData, $event)"
            name="message"
            v-model="user.msg"
            autofocus
          ></textarea>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from "vuex";
import { mapMutations } from "vuex";
import { mapActions } from "vuex";
/* Socket Io */
// let io     = require('socket.io-client')
// let socket = io.connect('http://localhost:3000')

export default {
  data() {
    return {
      users: [],
      openedChats: [],
      closeChatList: false,
      openedBoxs: [],
      userId: "",
      messages: [],
      message: {},
      msgTyping: "",
      showChat: true
    };
  },

  computed: {
    ...mapState(["inboxMessages", "chatBoxes", "userData"]),

    id() {
      return this.$route.params.id;
    },

    popUp() {
      return new Audio("/../sounds/new-message-pop.mp3");
    }
  },

  methods: {
    ...mapActions(["userDataAction", "inboxMessagesAction"]),

    openChatBox(user) {
      this.$store.dispatch("openChatBoxAction", user);
    },

    closeChatBox(index) {
      this.$store.dispatch("closeChatBoxAction", index);
    },

    sendMessage(user) {
      if (user.msg !== "" && user.msg !== " ") {
        this.message.s_id = this.userId;
        this.message.r_id = user.id;
        this.message.msg = user.msg;
        this.message.created_at = moment().format();
        console.log(this.message.created_at);
        user.messages.push(JSON.parse(JSON.stringify(this.message)));
        //   socket.emit('send_message', this.message)
        this.$forceUpdate();
        var user = this.chatBoxes.find(chat => chat.id === user.id);
        // this.inboxMessagesAction()
        this.$forceUpdate();
        console.log(this.message);
        this.$nextTick(() => {
          socket.emit("get_chat_with_user", {
            user: user,
            userId: this.userId
          });
          user.msg = "";
          this.$forceUpdate();
        });
      }
    },

    userWrite(Ruser, Authuser, event) {
      var code = event.code;
      //  socket.emit('user_write', {Authuser:Authuser, Ruser: Ruser, code: code})
    },

    showChatMethod() {
      if (this.$route.path == "/messages/view/" + this.id) {
        this.showChat = false;
        console.log("hello there");
      } else {
        this.showChat = true;
      }
    }

    // sockets: {
    //    connect() {
    //      // Fired when the socket connects.
    //      this.isConnected = true;
    //    },

    //    disconnect() {
    //      this.isConnected = false;
    //    },

    //    // Fired when the server sends something on the "messageChannel" channel.
    //    messageChannel(data) {
    //      this.socketMessage = data
    //    }
    //  },
  },

  beforeMount() {
    // this.$store.dispatch('usersDataAction')
    axios.get("/api/userData").then(res => {
      this.userId = res.data.id;
      // socket.emit('get_users_data', {userId : this.userId})
      // socket.on('return_users_data', (data) => {
      // 	  this.users = data.users
      // 	  this.$forceUpdate()
      // 	  this.users.map(user => {
      // 	  user.messages = []
      // 	  user.typing   = ''
      // 	  user.msg      = ''
      // user.online   = true
      // })
      // })
    });
  },

  mounted() {
    //       /* receive message */
    // socket.on('recieve_message', (data) => {
    //     let user = this.users.find(user => user.id == data.s_id)
    //     if (user) {
    //         let openedChat = this.chatBoxes.find(user => user.id == data.s_id)
    //         if (!openedChat) {
    //             this.chatBoxes.push(user)
    //         }
    //         // this.inboxMessagesAction()
    //         socket.emit('get_chat_with_user', {user: user, userId: this.userId})
    //         this.$forceUpdate()
    //         this.popUp.play()
    //         user.messages.push(data)
    //         this.$forceUpdate()
    //           console.log(data)
    //     }
    // })
    //      /* get user messages */
    // socket.on('return_chat_with_user', (data) => {
    // 	var user = this.users.find(user => user.id == data.r_id)
    // 	if (user) {
    //     	user.messages = data.msgs
    //     	this.$forceUpdate()
    // 	}
    // })
    // socket.on('write_message_in_chat_box', (data) => {
    // 	let openedChat = this.chatBoxes.find(user => user.id == data.Authuser.id)
    //     if (openedChat || this.$route.path == '/messages/view/'+data.Ruser.id) {
    //     	var user = this.users.find(user => user.id == data.Authuser.id)
    //     	if (data.Ruser.msg !== '' && (data.code != 'Delete' || data.code != 'Backspace' || data.code == 'Enter')) {
    //         	user.typing = true
    //       // console.log('u Write Now')
    //         	this.$forceUpdate()
    //     	} else {
    //           user.typing = ''
    //         	    this.$forceUpdate()
    //     	}
    //     }
    //     // if (this.$route.path == '/messages/view/2') {
    //     //       console.log('u Write Now 2')
    //     //       this.userData.typing = true
    //     //     if (data.Ruser.msg !== '' && (data.code != 'Delete' || data.code != 'Backspace' || data.code == 'Enter')) {
    //     //       // data.Authuser.first_name + ' typing now'
    //     //       this.$forceUpdate()
    //     //     } else {
    //     //         this.userData.typing = ''
    //     //         this.$forceUpdate()
    //     }
    //     // }
    // })
    //       /* notify user by apply or bookmark .... */
    // socket.on('notify', (data) => {
    //   var link = data.jobLink
    //   console.log(data.jobLink)
    //   this.$notify({
    //     title: data.from,
    //     dangerouslyUseHTMLString: true,
    //     type : 'success',
    //     // onClick() {return this.$router.push('/job/view/5')},
    //     message: data.notificationName + ' <a href="'+data.jobLink+'">Your Job</a>',
    //     position: 'bottom-left'
    //   });
    // })
  },

  created() {
    this.userData;
    this.showChatMethod();
  },

  watch: {
    closeChatBox() {
      this.chatBoxes;
    },
    $route() {
      this.showChatMethod();
      // socket.emit('disconnect')
    }
  }
};
</script>

<style>
.btnIo {
  position: absolute;
  bottom: 20px;
  background: #333;
  right: 200px;
  padding: 20px;
  color: #fff;
  z-index: 100;
}
/* users list */
.users-chat-container {
  position: fixed;
  right: 10px;
  bottom: 0;
  width: 200px;
  height: 500px;
  background: #fff;
  z-index: 2;
  overflow: hidden;
}
/* Chat Boxes */
.users-chat-container .users-chat {
  padding: 10px 15px;
  text-align: left;
  cursor: pointer;
  position: relative;
}
.users-chat-container .users-chat:hover {
  background: #ddd;
}
.online-icon {
  position: absolute;
  right: 0px;
  top: 10px;
  font-size: 21px;
}
.close-chat-box {
  height: 10%;
  padding: 5px;
  position: relative;
  background: #1274a5;
  color: #fff;
}
.close-chat-box:hover {
  color: #fff;
}
.close-chat-box span.close {
  position: absolute !important;
  top: 0;
  right: 0;
  opacity: 1;
  color: #fff;
}
.open-chat-list {
  position: fixed;
  bottom: 5px;
  right: 10px;
  height: 70px;
  width: 70px;
  border-radius: 50%;
  z-index: 100;
}
.opened-chat .chat-messages {
  height: 77%;
  overflow-y: scroll;
}
#chat-messages {
  position: relative;
  bottom: 0;
}
.chat-messages .message-left {
  margin-bottom: -21px;
  width: 100%;
}
.chat-messages .message-right {
  margin-bottom: 5px;
  width: 100%;
}
.chat-messages .message-left .pic,
.chat-messages .message-right .pic {
  width: 30px;
  height: 30px;
  margin: 10px;
}
.chat-messages .message-left .pic div,
.chat-messages .message-right .pic div {
  height: 100%;
  width: 100%;
  background-size: cover !important;
  border-radius: 50%;
}
.chat-messages .message-left .txt {
  position: relative;
  top: -37px;
  left: 50px;
  max-width: 70%;
  background: #eee;
  padding: 5px;
  border-radius: 5px;
  display: inline-block !important;
}
.chat-messages .message-right .pic {
  float: right;
  position: relative;
  top: -12px;
}
.chat-messages .message-right .txt {
  position: relative;
  max-width: 70%;
  background: #eee;
  padding: 5px;
  border-radius: 5px;
  display: inline-block !important;
}
.opened-chat .input {
  background: #;
  height: 12%;
  position: relative;
  bottom: 0;
  width: 100%;
  border: 1px solid #ccc;
  /*padding: 5px;*/
  /*margin-bottom: 2%*/
}
.opened-chat .input textarea {
  height: 100%;
  width: 100%;
  padding: 5px;
}
.opened-chat .input button {
  position: absolute;
  right: 4px;
  bottom: 0px;
}
.opened-chats-container {
  position: fixed;
  bottom: 0;
  right: 210px;
  height: 400px;
  max-width: 80%;
  z-index: 1;
  overflow-y: hidden;
}
.opened-chats-container .opened-chat {
  width: 300px;
  height: 100%;
  background: #fff;
  float: right;
  color: #333;
  margin-right: 10px;
}

/* online status */
.icon-green {
  color: green;
  background: #485;
}
</style>
