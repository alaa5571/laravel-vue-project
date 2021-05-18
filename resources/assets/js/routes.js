import Vue          from 'vue'
import VueRouter    from 'vue-router';
import Home         from './components/views/home'
import ViewNotFound from './components/views/notfound'
import Jobs       from './components/views/jobs/index'
         // Job Components
import JobView      from './components/views/jobs/view'
import JobCreate    from './components/views/jobs/create'
         // Profile Components
import ProfileView  from './components/views/profile/view'
import ProfileEdit  from './components/views/profile/edit'
import ViewJobs     from './components/views/profile/jobs'
import Applyments   from './components/views/profile/applyments'
         // Sign In And UP Components
import Login        from './components/views/sign/login'
import Register     from './components/views/sign/register'
import Logout       from './components/views/sign/logout'
        // Messages Components
import Messages     from './components/views/messages/view'
import Chat         from './components/views/messages/chat'
import Box          from './components/views/messages/box'

/* use */
Vue.use(VueRouter)

const router = new VueRouter({
  pageRouting: true,
  mode       : 'history',
  routes     : [
       /* General Routes */
    {
      path: '/',
      component: Home,
    }, 
    {
      path: '/home',
      name: 'home',
      component: Home,
      meta: {
              title: 'Home Page - Example App',

      }
    }, 
    {
      path: '/jobs/:name?/:q?',
      name: 'jobs',
      component: Jobs,
    }, 
    {
      path: '*',
      name: 'not-found',
      component: ViewNotFound,
      // meta: {forAuth: true}
    },
         /* Jobs Routes */
    {
      path: '/job/view/:id',
      name: 'job/view',
      component: JobView,
      // meta: {forAuth: true}
    }, 
    {
      path: '/job/create',
      name: 'job/create',
      component: JobCreate,
      meta: {forAuth: true}
    }, 
        /* Profile Routes */ 
    {
      path: '/profile/view/jobs',
      name: 'profile/view/jobs',
      component: ViewJobs,
      meta: {forAuth: true}
    }, 
    {
      path: '/profile/view/applyments/:id',
      name: 'profile/view/applyments',
      component: Applyments,
      meta: {forAuth: true}
    },
    {
      path: '/profile/view/:id?',
      name: 'profile/view',
      component: ProfileView,
      meta: {forAuth: true}
    },
    {
      path: '/profile/edit/:id?',
      name: 'profile/edit',
      component: ProfileEdit,
      meta: {forAuth: true}
    },
          /* Login And Log Out Routes */
    {
      path: '/login',
      name: 'login',
      component: Login,
      meta: {forVisitors: true}
    }, {
      path: '/register',
      name: 'register',
      component: Register,
      meta: {forVisitors: true}
    }, 
    {
      path: '/logout',
      name: 'logout',
	    component: Logout,
      meta: {forAuth: true}
    }, 
        /* Messages Routes */
    {
      path: '/Messages/view/:id',
      name: 'Messages/view',
      component: Messages,
      meta: {forAuth: true}
    }, 
    // {
    //   path: '/Messages/chat/:id',
    //   name: 'Messages/chat',
    //   component: Chat,
    //   meta: {forAuth: true}
    // }, 

  ],

})

export default router
