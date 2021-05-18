<template>
  <div>
    <div v-if="isLoggedIn">
      <v-navigation-drawer v-model="sidebar" app class="sidebar">
        <v-list>
          <v-list-tile
            v-for="item in menuItems"
            :key="item.title"
            :to="item.path"
          >
            <v-list-tile-action>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-tile-action>
            <v-list-tile-content>{{ item.title }}</v-list-tile-content>
          </v-list-tile>
        </v-list>
      </v-navigation-drawer>

      <v-toolbar app>
        <span class="hidden-sm-and-up">
          <v-toolbar-side-icon @click="sidebar = !sidebar">
          </v-toolbar-side-icon>
        </span>
        <v-toolbar-title>
          <router-link to="/" tag="span" style="cursor: pointer">
            {{ appTitle }}
          </router-link>
        </v-toolbar-title>
        <v-spacer></v-spacer>
        <v-toolbar-items class="hidden-xs-only">
          <v-btn
            flat
            v-for="item in menuItems"
            :key="item.title"
            :to="item.path"
          >
            <v-icon left dark>{{ item.icon }}</v-icon>
            {{ item.title }}
          </v-btn>
        </v-toolbar-items>
        <v-menu open-on-hover offset-y>
          <template v-slot:activator="{ on }">
            <v-list-tile
              v-on="on"
              :to="{ path: '/profile/view/' + userData.id }"
            >
              <span class="profile-name">{{ userData.fullName }}</span>
              <div class="profile-pic">
                <div
                  :style="{ backgroundImage: 'url(' + userData.avatar + ')' }"
                ></div>
              </div>
            </v-list-tile>
          </template>

          <v-list>
            <v-list-tile
              v-for="(item, index) in dropdownitems"
              :key="index"
              @click=""
              :to="item.path"
            >
              <v-list-tile-title>{{ item.title }}</v-list-tile-title>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-tile>
          </v-list>
        </v-menu>
      </v-toolbar>
    </div>
    <div v-else>
      <v-navigation-drawer v-model="sidebar" app class="sidebar">
        <v-list>
          <v-list-tile
            v-for="item in signItems"
            :key="item.title"
            :to="item.path"
          >
            <v-list-tile-action>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-tile-action>
            <v-list-tile-content>{{ item.title }}</v-list-tile-content>
          </v-list-tile>
        </v-list>
      </v-navigation-drawer>

      <v-toolbar app>
        <span class="hidden-sm-and-up">
          <v-toolbar-side-icon @click="sidebar = !sidebar">
          </v-toolbar-side-icon>
        </span>
        <v-toolbar-title>
          <router-link to="/home" tag="span" style="cursor: pointer">
            {{ appTitle }}
          </router-link>
        </v-toolbar-title>
        <v-spacer></v-spacer>
        <v-toolbar-items class="hidden-xs-only">
          <v-btn
            flat
            v-for="item in signItems"
            :key="item.title"
            :to="item.path"
          >
            <v-icon left dark>{{ item.icon }}</v-icon>
            {{ item.title }}
          </v-btn>
        </v-toolbar-items>
      </v-toolbar>
    </div>
  </div>
</template>

<script>
import { mapState, mapMutations, mapActions } from "vuex";
// let io     = require('socket.io-client')
// let socket = io.connect('http://localhost:3000')
export default {
  data() {
    return {
      user: [],
      messagesBox: false,
      fav: true,
      menu: false,
      message: false,
      hints: true,
      appTitle: "Wuzzufny",
      sidebar: false,
      menuItems: [
        { title: "Home", path: "/home", icon: "home" },
        { title: "Jobs", path: "/jobs", icon: "fa fa-qrcode" },
        { title: "Create Job", path: "/job/create", icon: "fa fa-plus" }
      ],
      signItems: [
        { title: "Home", path: "/home", icon: "home" },
        { title: "Jobs", path: "/jobs", icon: "fa fa-qrcode" },
        { title: "Log In", path: "/login", icon: "home" },
        { title: "Register", path: "/register", icon: "fa fa-qrcode" }
      ],
      dropdownitems: [
        { title: "Edit profile", path: "/profile/edit", icon: "fa fa-edit" },
        { title: "My Jobs", path: "/profile/view/jobs", icon: "fa fa-qrcode" },
        { title: "Log Out", path: "/logout", icon: "lock_open" }
      ]
    };
  },
  computed: {
    ...mapState(["inboxMessages", "isLoggedIn", "userData"]),

    ...mapActions([
      "userDataAction",
      "checkAction"
      // 'inboxMessagesAction'
    ])
  },

  methods: {},

  mounted() {
    this.checkAction;
    this.userDataAction;
    // this.inboxMessagesAction
    // socket.on('return_inboxMessages', (data) => {
    //      console.log(data)
    //      this.$forceUpdate()
    //      console.log('Good')
    //      this.$forceUpdate()
    // })
  },
  created() {},
  watch: {
    $route() {
      this.userDataAction;
    }
  }
};
</script>
<style>
nav {
  background: #fff !important;
}

.v-menu__content .v-list__tile__title {
  margin-right: 10px !important;
}

.sidebar {
  display: none !important;
}

@media screen and (max-width: 776px) {
  .sidebar {
    display: block !important;
  }
}
</style>
