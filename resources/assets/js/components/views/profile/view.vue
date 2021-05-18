<template>
  <div>
    <app-loader class="loader" v-if="loading"></app-loader>
    <div class="container" v-else>
      <div>
        <v-btn
          v-if="isProfile"
          to="/profile/edit"
          class="pull-right"
          fab
          dark
          color="cyan"
        >
          <i class="fa fa-edit"></i>
        </v-btn>
        <!-- <v-btn v-else :to='{path: "/messages/view/"+id}' class="pull-right" fab dark color="cyan">
          <i class="fa fa-send-o"></i>
        </v-btn> -->
      </div>
      <div class="jumbotron row" style="background: #fff">
        <h2 class="text-center user_name">
          {{ user.first_name }} {{ user.last_name }}
        </h2>
        <div class="col-md-5 col-xs-12 profile-view">
          <div class="pic">
            <div class="img">
              <div
                :style="{ backgroundImage: 'url(' + user.avatar + ')' }"
              ></div>
            </div>
          </div>
          <p class="keywords">
            <span href="#" @click.prevent v-for="skill in user.skills">{{
              skill.name
            }}</span>
          </p>
        </div>
        <div class="col-md-7 col-xs-12 right-section">
          <ul>
            <li>
              <p>
                <span class="glyphicon glyphicon-envelope one"></span>
                <span class="txt">{{ user.email }}</span>
              </p>
            </li>
            <li>
              <p>
                <span class="glyphicon glyphicon-earphone one"></span>
                <span class="txt">{{ user.phone }}</span>
              </p>
            </li>
            <li>
              <p>
                <span class="glyphicon glyphicon-map-marker one"></span>
                <span class="txt">{{ user.country }}</span>
              </p>
            </li>
            <li>
              <p>
                <span class="fa fa-briefcase one"></span>
                <span class="txt">{{ user.job }}</span>
              </p>
            </li>
            <li>
              <p>
                <span class="fas fa-neuter one"></span>
                <span class="txt">{{ user.gender }}</span>
              </p>
            </li>
            <li>
              <p class="about">
                <span class="fa fa-info-circle one"></span>
                <span class="txt user-info">{{ user.about }}</span>
              </p>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// import io from 'socket.io-client';
import { mapState } from "vuex";

export default {
  data() {
    return {
      user: [],
      loading: true
    };
  },

  computed: {
    id() {
      return this.$route.params.id;
    },
    isProfile() {
      if (this.user.id === this.userData.id) {
        return true;
      }
    },
    ...mapState(["check", "userData"])
  },

  methods: {
    getData() {
      axios.get("/api/profile/view/" + this.id).then(res => {
        this.user = res.data;
        this.loading = false;
      });
    },
    download(user) {
      axios.get("/profile/download/" + user.id).then(res => {
        console.log("success");
      });
    }
  },

  mounted() {
    this.getData();
  },

  created() {
    // this.userData
    // var socket = io('http://localhost:3000');
    //   socket.on('connect', function () {
    //     socket.emit('hi');
    //     socket.on('message', function (msg) {
    //       console.log(msg)
    //     });
    //   });
  },

  watch: {
    $route() {
      this.getData();
    }
  }
};
</script>

<style scoped>
body {
  background: #eee;
}
.name {
  text-align: center !important;
  font-size: 30px;
  text-transform: capitalize;
  font-weight: bold;
}

.txt {
  margin-top: 0 !important;
}
.prag,
.head {
  height: 35px;
}

.right-section {
  margin-top: 30px;
}

.loader {
  position: relative;
  top: 120px;
}

p.about {
  position: relative;
}

.user-info {
  margin-left: 32px;
  word-wrap: break-word;
}

.fa-info-circle {
  position: absolute;
  top: 15px;
}

.fa-neuter {
  position: relative;
  left: 4px;
}

ul {
  padding: 0;
  margin: 0;
}

ul li p {
  box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.14),
    0 1px 5px 0 rgba(0, 0, 0, 0.12);
  padding: 10px;
}

ul li p span.one {
  width: 30px !important;
  display: inline-block;
}

ul li p span.txt {
  width: calc(100% - 50px) !important;
  display: inline-block;
}

.keywords span {
  padding: 10px;
  margin: 5px;
  border-radius: 10px;
  display: inline-block;
  box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.14),
    0 1px 5px 0 rgba(0, 0, 0, 0.12);
}

.profile-view .pic {
  margin-bottom: 10px;
}

@media screen and (max-width: 991px) and (min-width: 776px) {
  .profile-view .pic {
    margin-left: 25%;
    margin-bottom: 20px;
  }
}

@media screen and (max-width: 756px) {
  .right-section {
    margin-top: 20px;
  }
  ul li p {
    padding: 10px 0;
  }
  .user_name {
    margin-top: 48px;
  }
}
</style>
