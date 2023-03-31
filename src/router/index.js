import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/badges',
    name: 'Badges',
    component: () => import(/* webpackChunkName: "about" */ '../views/Badges.vue')
  },
  {
    path: '/speakers-badge',
    name: 'SBadges',
    component: () => import(/* webpackChunkName: "speaker-badge" */ '../views/BadgesSpeakers.vue')
  },
  {
    path: '/speakers',
    name: 'Speakers',
    component: () => import(/* webpackChunkName: "speakers" */ '../views/Speakers.vue')
  },
  {
    path: '/schedule',
    name: 'Schedule',
    component: () => import(/* webpackChunkName: "schedule" */ '../views/Schedule.vue')
  },
  {
    path: '/schedule/:id',
    name: 'scheduleDetails',
    component: () => import(/* webpackChunkName: "scheduleDetails" */ '../views/SchedulePage.vue')
  },
  {
    path: '/speakers/:id',
    name: 'SpeakerPage',
    component: () => import(/* webpackChunkName: "speaker-page" */ '../views/SpeakerPage.vue')
  },
  
  // {
  //   path: '/profile',
  //   name: 'Profile',
  //   component: () => import(/* webpackChunkName: "profile" */ '../views/Profile.vue')
  // },
  {
    path: '/partners',
    name: 'partners',
    component: () => import(/* webpackChunkName: "profile" */ '../views/PartnersView.vue')
  },
  {
    path: '/donate',
    name: 'donate',
    component: () => import(/* webpackChunkName: "donate" */ '../views/Donate.vue')
  },
  {
    path: '/about',
    name: 'about',
    component: () => import(/* webpackChunkName: "donate" */ '../views/About.vue')
  },
  // {
  //   path: '/u/:id',
  //   name: 'PublicProfile',
  //   component: () => import(/* webpackChunkName: "PublicProfile" */ '../views/PublicProfile.vue')
  // },
  // {
  //   path: '/registration',
  //   name: 'Registration',
  //   component: () => import(/* webpackChunkName: "Registration" */ '../views/Registration.vue')
  // },
  {
    path: '/coc',
    name: 'CodeofConduct',
    component: () => import(/* webpackChunkName: "coc" */ '../views/CoC.vue')
  },
  {
    path: '/faq',
    name: 'FAQ',
    component: () => import(/* webpackChunkName: "FAQ" */ '../views/FAQ.vue')
  },
  {
    path: "*",
    name: "PageNotFound",
    component: () =>
      import(/* webpackChunkName: "PageNotFound" */ "../views/PageNotFound.vue"),
      meta:{
        title:"Page not found | GDG Jammu" 
      }
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  scrollBehavior() {
    return { x: 0, y: 0 };
  },
  routes
})

export default router
