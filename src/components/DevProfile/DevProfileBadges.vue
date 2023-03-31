<template>
  <v-container fluid class="ma-0 pa-0">
    <v-row align="start" justify="start" v-if="loader">
      <v-col>
        <v-progress-circular
      indeterminate
      color="primary"
    ></v-progress-circular>
      </v-col>
    </v-row>

    <v-row align="start" justify="start" v-if="!loader">
      <v-col
        md="2"
        lg="1"
        cols="4"
        class="text-center"
        v-for="(item, index) in badges"
        :key="index"
      >
        <v-avatar size="100">
          <img :src="item.image" :alt="item.name" />
        </v-avatar>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import devProfileService from "../../services/DevProfileService";
export default {
  name: "DevProfileBadges",
  data: () => ({
    badges: [],
    loader: false
  }),
  props: ["userInfo", "admin"],
  mounted() {
    this.getAllSubscribeBadges();
  },
  methods: {
    async getAllSubscribeBadges() {
      this.loader = true
      this.badges = [];
      if(this.admin){
        this.badges = await devProfileService.getAllUserBadges(
          this.userInfo.docid
        );
        if (this.badges.success) {
          this.badges = this.badges.data;
        }
      }else{
        this.badges = await devProfileService.getAllUserPublicProfileBadges(
          this.userInfo.badges
        );
        if (this.badges.success) {
          this.badges = this.badges.data;
        }
      }
      this.loader = false
      
    },
  },
};
</script>

<style></style>
