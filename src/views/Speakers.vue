<template>
  <v-main>
    <v-container fluid style="background: rgb(245,245,245);
background: linear-gradient(183deg, rgba(245,245,245,1) 0%, rgba(255,255,255,1) 35%);">
      <v-row justify="center" align="center">
        <v-col md="12" sm="12" cols="12" lg="10" class="google-font my-10" >
          <v-container fluid>
            <!-- Heading -->
            <v-row justify="center" align="center">
              <v-col>
                <p class="google-font gdg-h1 mb-0 grey--text text--darken-2">Speakers</p>
                <p style="font-size:20px">
                  Interested in Android, Flutter, Web, Cloud, ML technologies?
                  <br>
                  Join the vibrant and diverse set of speakers where you can
                  learn, network, share knowledge and enjoy the experience.
                </p>
              </v-col>
            </v-row>
            <!-- Heading -->

            <!-- Speaker Cards -->
            <v-row justify="start" align="start">
                <v-col
                md="3"
                lg="2"
                xl="2"
                sm="4"
                cols="6"
                class="px-1"
                v-for="(item, index) in SpeakersData"
                :key="index"
              >
                <SpeakerDialog :speakerData="item" :SessionDetails="SessionDetails" />
              </v-col>
            </v-row>
            <!-- Speaker Cards -->
          </v-container>
        </v-col>
      </v-row>
    </v-container>
  </v-main>
</template>

<script>
import SpeakersDataTemp from "@/assets/data/speakers.json";
import SessionDetails from "@/assets/data/sessions.json";
export default {
  name: "SpeakersComponent",
  components: {
    SpeakerDialog: () => import("../components/Speakers/SpeakerDialog.vue"),
  },
  data: () => ({
    SpeakersData: [],
  }),
  created(){
    document.title = 'Speakers | DevFest Jammu 2022'
  },
  mounted() {
    this.SpeakersData = this.sortByName(SpeakersDataTemp).filter(s=>s.visible==1);
    this.SessionDetails = SessionDetails.sort((a, b) => {
      return a.id > b.id ? 1 : -1;
    });
  },
};
</script>

<style lang="scss" scoped></style>
