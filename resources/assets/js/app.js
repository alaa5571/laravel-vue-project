/* Require Files For Bootstrap */
require('./bootstrap');
import pagination from 'vue-bootstrap-pagination'

/* Moment */
import moment from 'moment'

/* Element Io */
import 'element-ui/lib/theme-chalk/index.css'
import { Notification, Select, Option, Dropdown, DropdownMenu, DropdownItem } from 'element-ui'
Vue.prototype.$notify = Notification;
Vue.use(Select)
Vue.use(Option)
Vue.use(Dropdown);
Vue.use(DropdownMenu);
Vue.use(DropdownItem);
/* vuex */
import { store } from './store/store.js'


/* Vuetify */
import Vue from 'vue'
import Vuetify from 'vuetify'
Vue.use(Vuetify)
import 'vuetify/dist/vuetify.min.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'

/* routes */
import Router from './routes.js'

/* validate */
import VeeValidate from 'vee-validate';
Vue.use(VeeValidate, {
    classes: false,
    validity: true,
    classNames: {
        valid: 'is-valid',
        invalid: 'is-invalid'
    }
});

/* Mulitiple Select */
import Multiselect from 'vue-multiselect'

/* chat scroll */
import VueChatScroll from 'vue-chat-scroll'
Vue.use(VueChatScroll)

/* Socket Io */
// let io     = require('socket.io-client')
// let socket = io.connect('http://localhost:3000')

/* Require Components */
Vue.component('app-layout-header', require('./components/layouts/header.vue'));
Vue.component('app-loader', require('./components/views/loading.vue'));
Vue.component('app-alert', require('./components/views/alert.vue'));
Vue.component('app-notify-alert', require('./components/views/notify-alert.vue'));
Vue.component('app-chat', require('./components/views/messages/chat.vue'));
Vue.component('login-page', require('./components/views/sign/login.vue'));

/* passport component */
Vue.component('passport-clients', require('./components/passport/Clients.vue'));
Vue.component('passport-authorized-clients', require('./components/passport/AuthorizedClients.vue'));
Vue.component('passport-personal-access-tokens', require('./components/passport/PersonalAccessTokens.vue'));

/* Auth Package */
import Auth from './packages/auth/auth.js';
Vue.use(Auth);

Router.beforeEach(
    (to, from, next) => {
        if (to.matched.some(record => record.meta.forVisitors)) {
            if (Vue.auth.isAuthianticated()) {
                next({
                    path: '/home'
                })
            } else next()

        } else if (to.matched.some(record => record.meta.forAuth)) {
            if (!Vue.auth.isAuthianticated()) {
                next({
                    path: '/login'
                })
            } else next()

        } else next()
    }
)

import { mapState } from 'vuex'
import { mapActions } from 'vuex'

const app = new Vue({
    el: '#app',
    router: Router,
    store: store,
    components: {
        pagination,
        Multiselect: 'multiselect',
    },

    data() {
        return {
            messagesBox: false
        }
    },

    computed: {
        ...mapState([
            'isLoggedIn'
        ]),

        ...mapActions([
            'userDataAction'
        ]),

    },

    methods: {
        ...mapActions([
            'userDataAction'
        ])
    },

    created() {
        /* Functions that tell the server that user authianticated */
        axios.defaults.headers.common['Accept'] = 'application/json';
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + this.$auth.getToken()
        this.$store.dispatch('checkAction')
        this.userDataAction()

    },
});