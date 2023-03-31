import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    drawer: false,
    items: [
      {
        text: "Home",
        to: "/",
        icon: "mdi-home-outline",
        meta: {
          showToolbar: true,
          showBottomNav: true,
        },
      },
      {
        text: "Badges",
        to: "/badges",
        icon: "mdi-newspaper-variant-outline",
        meta: {
          showToolbar: true,
          showBottomNav: true,
        },
      },
      {
        text: "Speakers",
        to: "/speakers",
        icon: "mdi-newspaper-variant-outline",
        meta: {
          showToolbar: true,
          showBottomNav: true,
        },
      },
      {
        text: "Schedule",
        to: "/schedule",
        icon: "mdi-newspaper-variant-outline",
        meta: {
          showToolbar: true,
          showBottomNav: false,
        },
      },
      // {
      //   text: "Registration",
      //   to: "/registration",
      //   icon: "mdi-account-circle-outline",
      //   meta: {
      //     showToolbar: true,
      //     showBottomNav: true,
      //   },
      // },
      {
        text: "Partners",
        to: "/partners",
        icon: "mdi-account-switch-outline",
        meta: {
          showToolbar: true,
          showBottomNav: false,
        },
      },
      {
        text: "FAQ",
        to: "/faq",
        icon: "mdi-star-outline",
        meta: {
          showToolbar: true,
          showBottomNav: true,
        },
      }
      ,  
      {
        text: "About GDG",
        to: "/about",
        icon: "mdi-information-outline",
        meta: {
          showToolbar: true,
          showBottomNav: true,
        },
      }
    ]
  },
  getters:{
    links: (state) => state.items,
  },
  mutations: {
    setDrawer: (state, payload) => (state.drawer = payload),
    toggleDrawer: (state) => (state.drawer = !state.drawer),
  },
  actions: {
  },
  modules: {
  }
})