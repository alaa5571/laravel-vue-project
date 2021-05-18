<template >
    <div>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div v-if='isLoggedIn'>                    
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                        <!-- <router-link class="navbar-brand" :to='{path:"/home"}'><b>ITOValley</b></router-link> -->
                    </div>

                    <div class="collapse navbar-collapse" id="myNavbar">

                        <ul class="nav navbar-nav">
                            <li><router-link :to='{path:"/home"}'>Home</router-link></li>
                            <li><router-link :to='{path:"/search"}'>Search</router-link></li>
                            <li><router-link :to='{path:"/job/create"}'>Create Job</router-link></li>
                            <li>
                               <el-dropdown class='dropdownJobs'>
                                  <span class="el-dropdown-link">
                                    Jobs
                                  </span><br><br>
                                  <el-dropdown-menu slot="dropdown">
                                    <el-dropdown-item><span>Jobs By Location</span></el-dropdown-item>
                                  </el-dropdown-menu>
                                </el-dropdown>
                            </li>

                        </ul>
                       
                        <ul class="nav navbar-nav navbar-right">
                            <li  class='inbox-icon'>
                              <i @click='messagesBox = !messagesBox' id="inbox-icon" class='far fa-envelope' style='font-size:24px'></i>
                            </li>
                            <li>
                                <router-link :to="{path: '/profile/view/'+userData.id}">
                                   <span style="display: inline-block;float: left; margin-right: 5px; font-weight: bold;position: relative;top: 2px">{{userData.fullName}}</span> 
                                   <div class='profile-pic' style="position:relative; top:px; display: inline-block;">
                                     <div :style="{ backgroundImage: 'url(' + userData.avatar + ')' }"></div>
                                   </div>
                                </router-link>
                            </li>
                            <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-caret-down pull-right" style="position: relative;top: -8px; font-size: 20px; left: -2px"></span></a>
                              <ul class="dropdown-menu">
                                <li><router-link :to="{path:'/profile/edit/'+userData.id}">Edit Profile<span class="glyphicon glyphicon-cog pull-right"></span></router-link></li>
                                <li class="divider"></li>
                                <li><a href="#">User stats <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                                <li class="divider"></li>
                                <li><a href="#">Messages <span class="badge pull-right"> 42 </span></a></li>
                                <li class="divider"></li>
                                <li><a href="#">Favourites Snippets <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
                                <li class="divider"></li>
                                <li><router-link :to="{path:'/logout'}"><span class="fa fa-power-off"></span> Log Out <span class="glyphicon glyphicon-log-out pull-right"></span></router-link></li>
                              </ul>
                            </li>
                        </ul>
                    </div>   
                </div>   
                <div v-else> 
                    <ul class="nav navbar-nav navbar-right">
                        <li><router-link :to='{path:"/login"}'>Login</router-link></li>
                    </ul>
                </div>
            </div>
        </nav>  
                <!-- inbox messages --> 
        <div id="messages-box" v-if='messagesBox && check' class="messages-box container" style="background: #857">        
            <div class="arrow"></div> 
            <div id="inbox" class='inbox'>
               <div v-for='message in inboxMessages' v-if='message.msg !== null'>
                   <div class="message">
                     <div class="pic">
                           <div class='pic-container'>
                                <div :style="{ backgroundImage: 'url(' + message.avatar + ')' }"></div>
                           </div>
                       </div>
                       <div class="txt">
                           <div class="txts">
                               <div class="name pull-left">
                                   {{message.first_name + ' ' + message.last_name}}
                               </div>
                               <div class="created_at">
                                   {{message.created_at}}
                               </div>
                           </div>
                           <div class="msg">
                              {{message.msg}}
                           </div>
                       </div>
                   </div> 
               </div> 
            </div>    
        </div>   
        <!-- <div class="text-xs-center" style="position: absolute; top: 200px">
          <v-menu
            v-model="menu"
            :close-on-content-click="false"
            :nudge-width="200"
            offset-x
          >
            <v-btn
              slot="activator"
              

            >
              Menu as Popover
            </v-btn>

            <v-card>
              <v-list>
                <v-list-tile avatar>
                  <v-list-tile-avatar>
                    <img src="https://cdn.vuetifyjs.com/images/john.jpg" alt="John">
                  </v-list-tile-avatar>

                  <v-list-tile-content>
                    <v-list-tile-title>John Leider</v-list-tile-title>
                    <v-list-tile-sub-title>Founder of Vuetify.js</v-list-tile-sub-title>
                  </v-list-tile-content>

                  <v-list-tile-action>
                    <v-btn
                      :class="fav ? 'red--text' : ''"
                      icon
                      @click="fav = !fav"
                    >
                      <v-icon>favorite</v-icon>
                    </v-btn>
                  </v-list-tile-action>
                </v-list-tile>
              </v-list>

              <v-divider></v-divider>

              <v-list>
                <v-list-tile>
                  <v-list-tile-action>
                    <v-switch v-model="message" color="purple"></v-switch>
                  </v-list-tile-action>
                  <v-list-tile-title>Enable messages</v-list-tile-title>
                </v-list-tile>

                <v-list-tile>
                  <v-list-tile-action>
                    <v-switch v-model="hints" color="purple"></v-switch>
                  </v-list-tile-action>
                  <v-list-tile-title>Enable hints</v-list-tile-title>
                </v-list-tile>
              </v-list>

              <v-card-actions>
                <v-spacer></v-spacer>

                <v-btn flat @click="menu = false">Cancel</v-btn>
                <v-btn color="primary" flat @click="menu = false">Save</v-btn>
              </v-card-actions>
            </v-card>
          </v-menu>
        </div>  -->
    </div>
</template>

<script>

    import { mapState     } from 'vuex'
    import { mapMutations } from 'vuex'
    import { mapActions   } from 'vuex'
    // let io     = require('socket.io-client')
    // let socket = io.connect('http://localhost:3000')
    export default {

       data () {
            return {
              user        : [],   
              messagesBox : false,
              fav: true,
              menu: false,
              message: false,
              hints: true
            }
        },
        computed: {
            ...mapState([
                'inboxMessages',
                'isLoggedIn',
                'userData'
            ]),
            
            ...mapActions([
                'userDataAction',
                'checkAction',
                // 'inboxMessagesAction'
            ]),
        },
        
        methods: {
            
         },

         mounted() {
            this.checkAction
            this.userDataAction
            // this.inboxMessagesAction
            // socket.on('return_inboxMessages', (data) => { 
            //      console.log(data)
            //      this.$forceUpdate()
            //      console.log('Good')
            //      this.$forceUpdate()
            // })
         },
         created() {
         },
         watch: {
            $route() {
              this.userDataAction      
            }
         }
        
    }
   
</script>


<style scoped>  
.nav>li>a:hover, .nav>li>a:focus, .nav .open>a, .nav .open>a:hover, .nav .open>a:focus {
    background:#fff;
}
.dropdown {
    background:#fff;
    border:1px solid #ccc;
    border-radius:4px;
    position: relative;
    margin-top: 8.5px !important
}
.dropdown-menu>li>a {
    color:#428bca;
}
.dropdown ul.dropdown-menu {
    border-radius:4px;
    box-shadow:none;
    margin-top:20px;
    width:300px;
}
.dropdown ul.dropdown-menu:before {
    content: "";
    border-bottom: 10px solid #fff;
    border-right: 10px solid transparent;
    border-left: 10px solid transparent;
    position: absolute;
    top: -10px;
    right: 16px;
    z-index: 10;
}
.dropdown ul.dropdown-menu:after {
    content: "";
    border-bottom: 12px solid #ccc;
    border-right: 12px solid transparent;
    border-left: 12px solid transparent;
    position: absolute;
    top: -12px;
    right: 14px;
    z-index: 9;
}
#messages-box{
    position: relative;
}
.inbox {
    max-height: 300px;
    min-height: 50px;
    width: 400px;
    background: #fff;
    overflow: auto;
    position: absolute;
    top: 70px;
    right: 10px;
    border-radius: 5px;
    z-index: 10;
    border: .1px solid #ccc;
    box-shadow: 0px 2px 27px rgba(0,0,0,.4)
}
.inbox .message {
   height: 60px;
   width: 100%;
   background: #fff;
   position: relative;
   border-bottom: .1px solid #ccc
}
.inbox .message:hover {
    background: #f5f5f5;
    cursor: pointer;
}
.inbox .message .pic {
    width: 20%;
    height: 100%;
    position: relative;
    display: inline-block;
}
.inbox .message .pic .pic-container {
    height: 50px;
    width: 50px;
    border-radius: 50%;
    overflow: hidden;
    object-fit: contain;
    position: absolute;
    left: 12px;
    top: 4px;
}
.inbox .message .pic .pic-container div {
    height: 100%;
    width: 100%;
    background-size: cover !important;
}
.inbox .message .txt {
    display: inline-block;
    width: 80%;
    height: 60px;
    position: relative;
    float: right;
    top: 3px
}
.inbox .message .txt .txts {
    height: 35%;
    overflow: hidden;
    padding: 5px;
    position: relative;
    top: 2px
}
.inbox .message .txt .txts .name, .inbox .message .txt .txts .created_at {
    width: 40%;
    display: inline-block;
}
.inbox .message .txt .txts .name{
    font-weight: bold;
    color: #8FB0FF;
    margin-bottom: 3px
}
.inbox .message .txt .txts .created_at{
    width: 50%;
    font-size: 12px;
    color: #ccc;
    text-align: right;
}
.inbox .message .txt .msg{
    height: 70%;
    padding: 5px;
    overflow: hidden;
}
.inbox-icon {
    position: relative;
    top: 13px;
}
.inbox-icon :hover{
    cursor: pointer;
}
.arrow {
    width: 0;
    height: 0;
    border-left: 14px solid transparent;
    border-right: 14px solid transparent;
    border-bottom: 14px solid #fff;
    position: absolute;
    top: 54px;
    right: 197px;
}

.dropdownJobs{
    position: relative;
    top: 19px;
    left: 11px;
    font-weight: normal;
    font-size: 13px;
}
</style>