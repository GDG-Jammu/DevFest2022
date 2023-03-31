<template>
  <v-main >
    <v-container fluid class="" style="background: rgb(245,245,245);
background: linear-gradient(183deg, rgba(245,245,245,1) 0%, rgba(255,255,255,1) 35%);">
      <v-row justify="center" align="center">
        <v-col md="12" sm="12" cols="12" lg="10" class="google-font">
          <!--JoinCommunityVue /-->
          <!--<HeroVue class="my-10" />-->
          <OverviewVue />
          <SupportVue/>
         <!--WhatWeDoVue/>-->
          <TechFocusedVue class="my-10" />
         <!-- <JoinCommunityVue class="my-10" />-->
        
         <!-- <SponsorsVue/>-->
        </v-col>
      </v-row>
    </v-container>
  </v-main>
</template>

<script>
// Import your component
// Example
// import xyz from "/path"
import HeroVue from "../components/Home/Hero.vue";
//import JoinCommunityVue from '../components/Home/JoinCommunity.vue';
import OverviewVue from "../components/Home/Overview.vue";
//import SponsorsVue from '../components/Home/Sponsors.vue';
import TechFocusedVue from '../components/Home/TechFocused.vue';
import SupportVue from "../components/Home/Support.vue";


//import WhatWeDoVue from '../components/Home/WhatWeDo.vue';



export default {
  name: "HomeComponent",
  components: {
    HeroVue,
    OverviewVue,
    //WhatWeDoVue,
    SupportVue,
    TechFocusedVue
   // JoinCommunityVue,
   // SponsorsVue,
   
    // register your component
  },
  data: () => ({}),
  created() {
    document.title = "DevFest Jammu 2022 | Home Page";
  },
};
</script>

<style scoped></style>
