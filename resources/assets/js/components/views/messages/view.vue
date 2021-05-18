<template>
	<div class="margin-top" v-if='loading'>
		<div class="container msg-container">
		<h3 class=" text-center"><router-link :to="{path: '/profile/view/'+Ruser.id}">{{Ruser.fullName}}</router-link></h3>
		<div class="messaging">
		      <div class="inbox_msg">
		        <div class="inbox_people">
		          <div class="headind_srch">
		            <div class="recent_heading">
		              <h4>Recent</h4>
		            </div>
		            <div class="srch_bar">
		              <div class="stylish-input-group">
		                <input type="text" class="search-bar"  placeholder="Search" >
		                <span class="input-group-addon">
		                <button type="button"> <i class="fa fa-search" aria-hidden="true"></i> </button>
		                </span> </div>
		            </div>
		          </div>
		          <div class="inbox_chat">
                <div class="chat_list active_chat">
                  <div class="chat_people">
                    <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                    <div class="chat_ib">
                      <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
                      <p>Test, which is a new approach to have all solutions 
                        astrology under one roof.</p>
                    </div>
                  </div>
                </div>
                <ul v-for='user in users'>
                  <li><router-link :to="{path: '/messages/view/'+user.id}">{{user.first_name}} {{user.last_name}}</router-link></li>
                </ul>
              </div>  
		        </div>

		                          <!-- messages -->
		        <div class="mesgs">
		          <div class="msg_history" v-chat-scroll>
		                <div v-for='message in Ruser.messages' v-if='message.r_id === userData.id' class="incoming_msg">
		                  <div class="incoming_msg_img">
		                    <div :style="{background: 'url(' + Ruser.avatar + ')' }" alt="sunil"></div>
		                  </div>
		                  <div class="received_msg">
		                    <div class="received_withd_msg">
		                      <p>{{message.msg}}</p>
		                      <span class="time_date">{{message.created_at}}</span></div>
		                  </div>
		                </div> 
		                          <!-- else -->
		                <div v-else class="outgoing_msg">
		                  <div class="incoming_msg_img pull-right" style='margin-left:15px'>
                        <!-- <img :src="userData.avatar" alt="sunil">  -->
                        <div :style="{background: 'url(' + userData.avatar + ')' }" alt="sunil"></div>
                      </div>
		                  <div class="sent_msg">
		                    <p class='msg'>{{message.msg}}</p>
		                    <span class="time_date">{{message.created_at}}</span> 
		                  </div>
		                </div>
                    <div v-if='Ruser.typing' style="width: 50px; margin-top: 15px; margin-bottom: 5px"><img src="/images/typingNow.gif"></div>
              </div>
                   
		          		         <!-- send message -->
		          <form @submit.prevent='sendMessage(Ruser)'>
		            <div class="type_msg">
		              <div class="input_msg_write">
		                  <div class="form-group">
                        <textarea type="textarea" class="form-control" rows="3" placeholder="type a message..." @keypress.prevent.enter="sendMessage(Ruser)" v-validate="'required'" @keyup='userWrite(Ruser, userData, $event)' name='message' v-model='Ruser.msg' autofocus></textarea>
		                  </div>
		                <button class="msg_send_btn" type="submit" ><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
		              </div>
		            </div>
		          </form>

		        </div>
		      </div>      
		    </div>
		</div>

	</div>
</template>

<script>
           /* Moment */
    import moment from 'moment'
    // import io from 'socket.io-client';
    import {mapState}   from 'vuex'
    import {mapActions} from 'vuex'
    // let io     = require('socket.io-client')
    // let socket = io.connect('http://localhost:3000')

    export default {
        data() {
            return {
               loading : false,
               users   : [], 
               userId  : '',
               messages: [],
               Ruser   : [],
               message : {},
               msg     : '',
            }
        },

        computed: {
           id() {
              return this.$route.params.id
           },
            ...mapState([
                'userData',
                'chatBoxes'
            ]),


            popUp () {
              return new Audio('/../sounds/new-message-pop.mp3')
            },
        },

        methods: {
            ...mapActions([
               'inboxMessagesAction'
            ]),
            
            getData() {
              axios.get('/api/userData/'+this.id).then(res => {
                this.Ruser = this.users.find(user => user.id == this.id)
                // socket.emit('get_chat_with_user', {user: this.Ruser, userId: this.userId})
                this.$forceUpdate()
                this.$nextTick(() => {
                  if (this.Ruser) {
                    this.Ruser = res.data
                  }
                })       
              })
            },
              
            sendMessage(user) {
              if (this.Ruser.msg !== '' && this.Ruser.msg !== ' ') {
                this.message.s_id       = this.userId
                this.message.r_id       = this.Ruser.id
                this.message.msg        = this.Ruser.msg
                this.message.created_at = moment().fromNow()
                console.log(this.message)
                // socket.emit('send_message', this.message)
                console.log(this.message)
                this.inboxMessagesAction
                this.$forceUpdate()
                this.Ruser.messages.push(JSON.parse(JSON.stringify(this.message)))
                this.$forceUpdate()
                this.$nextTick(() => {
                    this.Ruser.msg = ''
                    this.$forceUpdate()
                })
              }
            },

             userWrite(Ruser, Authuser, event) {
                 var code = event.code
                //  socket.emit('user_write', {Authuser:Authuser, Ruser: Ruser, code: code}) 
                 // this.userData.typing = true
             },
        }, 

        beforeMount() {
          axios.get('/api/userData').then(res => {
            // return console.log(res.data)
            this.userId = res.data.id
            // socket.emit('get_users_data', {userId : this.userId})
            // socket.on('return_users_data', (data) => {
            //   this.users = data.users
            //   this.$forceUpdate() 
            //   this.users.map(user => {
            //     user.messages = []
            //     user.typing   = ''
            //     user.msg   = ''
            //   })
            // })
              
          }).then(res => {
             this.id
             this.getData()
          }).then(res => {
             this.loading = true
          })
        },

        mounted() {
               
                /* receive message */
              // socket.on('recieve_message', (data) => {
              //     this.popUp.play()
              //     // this.inboxMessagesAction()
              //     // socket.emit('get_chat_with_user', {user: this.Ruser, userId: this.userId})
              //     this.Ruser.messages.push(data)
              //     this.$forceUpdate()
              //     console.log(data)
              //  })

              // //  /* get user messages */
              // socket.on('return_chat_with_user', (data) => {
              //   var user = this.users.find(user => user.id == data.r_id)
              //   if (user) {
              //     this.Ruser.messages = data.msgs
              //     this.$forceUpdate()             
              //   }
              // })
              
              // socket.on('write_message_in_chat_box', (data) => {
              //  if (this.$route.path == '/messages/view/'+data.Ruser.id) {
              //           console.log('u Write Now 2')
              //         if (data.Ruser.msg !== '' && (data.code != 'Delete' || data.code != 'Backspace' || data.code == 'Enter')) {
              //           this.Ruser.typing = true 
              //           // data.Authuser.first_name + ' typing now'
              //           this.$forceUpdate() 
              //         } else {
              //             this.Ruser.typing = ''                
              //             this.$forceUpdate() 
              //         }
              //     }
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
             
             // this.userData
        },

        watch: {
          '$route' (to, from) {
            this.getData()
            this.Ruser.typing = false
          }
        }
    }
</script>

<style scoped>
  .msg_history{
    overflow-x: hidden !important
  }
</style>

