import Vue from "vue";
import Vuex from "vuex";
Vue.use(Vuex);

let user = { name: "sarah", email: "dwfkdjf" };
let { name, email } = user;
console.log(name);

// let io     = require('socket.io-client')
// let socket = io.connect('http://localhost:3000')

export const store = new Vuex.Store({
  state: {
    isLoggedIn: false,
    userData: [],
    inboxMessages: [],
    chatBoxes: []
    // error_alert   : false,
    // success_alert : false,
  },

  getters: {},

  mutations: {
    check(state) {
      var token = localStorage.getItem("token");
      if (token) {
        state.isLoggedIn = true;
      } else {
        state.isLoggedIn = false;
      }
    },

    userData(state) {
      var token = localStorage.getItem("token");
      if (token) {
        axios.defaults.headers.common["Accept"] = "application/json";
        axios.defaults.headers.common["Authorization"] =
          "Bearer " + Vue.auth.getToken();
        axios.get("/api/userData").then(res => {
          state.userData = res.data;
        });
      } else {
        ("You Are Not Authianticated");
      }
    },

    usersDataMutaion(state) {
      axios.get("/api/userData").then(res => {
        state.userId = res.data.id;
        console.log(state.userId);
        // socket.emit('get_users_data', {userId : state.userId})
        // socket.on('return_users_data', (data) => {
        //     state.users = data.users
        //     // this.$forceUpdate()
        //     if (state.users) {
        //       console.log(state.users)
        //     } else {
        //        return 'Empty'
        //     }
        //     state.users.map(user => {
        //       user.messages = []
        //       user.typing   = ''
        //       user.msg      = ''
        //       user.online   = true
        //     })
        //   })
      });
    },

    inboxMessagesMutation(state) {
      if (state.isLoggedIn) {
        // socket.emit("get_inboxMessages", state.userData);
        // socket.on("return_inboxMessages", data => {
        //   state.inboxMessages = data;
        //   // console.log(data)
        //   // console.log('Good')
        // });
      }
    },

    insertMessageMutation(state, payload) {
      state.inboxMessages.push(payload);
    },

    openChatBoxMutation(state, payload) {
      // socket.emit("get_chat_with_user", {
      //   user: payload,
      //   userId: state.userData.id
      // });
      // Vue.$forceUpdate()
      var chatBox = state.chatBoxes.find(chat => chat.id == payload.id);
      if (!chatBox) {
        state.chatBoxes.push(payload);
      }
    },

    closeChatBoxMutation(state, payload) {
      state.chatBoxes.splice(payload, 1);
    }
  },

  actions: {
    checkAction(context) {
      context.commit("check");
    },

    userDataAction(context) {
      context.commit("userData");
    },

    inboxMessagesAction(context) {
      context.commit("inboxMessagesMutation");
    },

    insertMessageAction(context, payload) {
      context.commit("insertMessageMutation", payload);
    },

    usersDataAction(context) {
      context.commit("usersDataMutaion");
    },

    openChatBoxAction(context, payload) {
      context.commit("openChatBoxMutation", payload);
    },

    closeChatBoxAction(context, payload) {
      context.commit("closeChatBoxMutation", payload);
    }
  }
});
