<template>
  <!-- style="box-shadow: 0 2px 6px 0 rgba(0,0,0,.12), inset  0 -1px 0 0 #dadce0" -->
  <v-app-bar app fixed color="white" flat>
    <v-app-bar-nav-icon
      aria-label="Hamburger Btn"
      @click="toggleDrawer"
      class="d-md-none d-lg-none"
    ></v-app-bar-nav-icon>
    <v-toolbar-title class="google-font px-0" style="width: 300px"
      ><router-link
        to="/"
        class="google-font grey--text text--darken-2"
        style="text-decoration: none; font-size: 120%; font-weight: 400"
      >
        <p class="google-font my-0 mb-0"> dev<i>f</i>est Jammu</p>
      </router-link></v-toolbar-title
    >
    <!-- <v-spacer></v-spacer> -->
    <v-tabs
      color="#4285FA"
      left
      slider-color="#4285FA"
      :hide-slider="getRouteName()"
      class="hidden-sm-and-down google-font"
    >
      <v-tab
        class="google-font"
        aria-label="toolbar links"
        v-for="(link, i) in links.filter((obj) => obj.meta.showToolbar)"
        :key="i"
        :to="link.to"
        @click="onClick($event, link)"
        style="text-transform: capitalize; font-size: 17px; font-weight: 400"
        >{{ link.text }}</v-tab
      >
    </v-tabs>
    <v-spacer></v-spacer>

    <!-- <v-btn
      class="ma-2"
      :loading="loadingUser"
      icon
      color="#4285fa"
      v-if="loadingUser"
    >
    </v-btn> -->
    <!--<v-btn
      to="/donate"
      style="text-transform: capitalize"
      rounded
      depressed
      class="mx-2 google-font hidden-sm-and-down"
      outlined
      dark
      color="#4285fa"
      rel="noreferrer"
    >
      Donate us
    </v-btn>-->
    <!-- <v-btn v-if="!userFound && !loadingUser" to="/profile" style="text-transform: capitalize;" rounded depressed class="mx-2 google-font hidden-sm-and-down" outlined color="#616161" rel="noreferrer">
      DevFest Profile
    </v-btn> -->
    <!-- 
      class="hidden-sm-and-up" -->
    <v-btn aria-label="Share Button" icon v-on:click="shareMe">
      <v-icon>mdi-share-variant</v-icon>
    </v-btn>
  </v-app-bar>
</template>

<script>
import { mapGetters, mapMutations } from "vuex";
export default {
  name: "AppBar",
  data: () => ({
    hideSlidersOn: [
      "CodeofConduct",
      "Profile",
      "SpeakerPage",
      "scheduleDetails",
      "PublicProfile",
      "donate",
    ],
    userFound: false,
    userInfo: {},
    loadingUser: true,
  }),
  components: {},
  computed: {
    ...mapGetters(["links"]),
  },
  mounted() {
    // this.checkStatus();
  },
  methods: {
    ...mapMutations(["toggleDrawer"]),
    onClick(e, item) {
      e.stopPropagation();
      if (item.to || !item.href) return;
      this.$vuetify.goTo(item.href);
    },
    getRouteName() {
      return this.hideSlidersOn.includes(this.$route.name) ? true : false;
    },
    shareMe() {
      if (navigator.share) {
        // console.log(this.$route)
        navigator
          .share({
            title: "DevFest Jammu 2022",
            url: "https://devfest.gdgjammu.com" + this.$route.path,
          })
          .then(() => {
            console.log("Thanks for sharing");
          })
          .catch((e) => {
            console.log(e);
          });
      } else {
        alert("Not supporting in your browser");
      }
    },
  },
};
</script>

<style>
.v-toolbar .v-toolbar__content {
  /* border-bottom: 1px solid #666666; */
  border-bottom: 1px solid rgb(218, 220, 224);
}
@media only screen and (min-width: 600px) {
  .v-toolbar .v-toolbar__content {
    padding-left: 4%;
    padding-right: 4%;
  }
}
</style>