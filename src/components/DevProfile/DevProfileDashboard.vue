<template>
  <v-container fluid class="pa-0 ma-0">
    <v-row justify="center" align="center">
      <v-col md="12" sm="12" lg="12" class="google-font">
        <v-row align="center" justify="center" class="mb-0 pb-0">
          <v-col md="8" class="mb-0">
            <p class="h1-heading mb-0">{{ userInfo.name }}</p>
          </v-col>
          <v-col md="4">
            <ProfileShare :userInfo="userInfo" />
          </v-col>
        </v-row>

        <p class="h1-subheading mt-n3">
          <span class="mr-4">
            <v-icon>mdi-account-circle-outline</v-icon> {{ userInfo.role }},
            {{ userInfo.org }}
          </span>
          <v-icon>mdi-map-marker</v-icon> {{ userInfo.city }},
          {{ userInfo.country }}
        </p>
        <!-- <p class="h1-subheading mt-n3">
            
          </p> -->
        <v-chip color="green" outlined class="mt-n3 mr-2"
          ><v-icon left> mdi-check-outline </v-icon>Registered</v-chip
        >
        <v-chip
          :color="userInfo.status ? 'green' : 'red'"
          outlined
          class="mt-n3 mr-2"
        >
          <v-icon left>mdi-account-circle-outline</v-icon>
          {{ userInfo.status ? "Public" : "Private" }}
        </v-chip>

        <EditProfile
          :data="userInfo"
          @ProfileUpdateSuccess="$emit('ProfileUpdateSuccess')"
        />

        <p class="mt-3" style="font-size: 20px">
          {{ userInfo.bio }}
        </p>

        <!-- socail -->
        <SocialMediaBtns
          v-if="userInfo.social != null"
          :data="userInfo.social"
        />
        <!-- socail -->

        <v-container fluid class="ma-0 pa-0 mt-8 mt-md-1">
          <v-row>
            <!-- Tech Skills -->
            <v-col md="5" cols="12" v-if="userInfo.techstack.length">
              <p class="h1-subheading mb-2 mt-md-8">Tech Skills</p>
              <v-chip
                class="mr-2 mb-1"
                v-for="(item, index) in userInfo.techstack"
                :key="index"
              >
                {{ item }}
              </v-chip>
            </v-col>
            <!-- Tech Skills -->

            <!-- Interested In -->
            <v-col md="6" cols="12" v-if="userInfo.interest.length">
              <p class="h1-subheading mb-2 mt-md-8">Interested In</p>
              <v-chip
                class="mr-2 mb-1"
                v-for="(item, index) in userInfo.interest"
                :key="index"
              >
                {{ item }}
              </v-chip>
            </v-col>
            <!-- Interested In -->
          </v-row>
        </v-container>

        <!-- My Badges -->
        <div class="my-8">
          <p class="h1-subheading mb-0">
            My Badges
            <!-- <AddBadge /> -->
          </p>
          <p>Earn Badges while attending sessions</p>

          <DevProfileBadges
            v-if="Object.keys(userInfo).length > 0"
            :userInfo="userInfo"
            :admin="true"
          />
        </div>

        <div>
          <v-overlay :value="AddBadgeOverlay" class="text-center">
            <v-progress-circular indeterminate size="64"></v-progress-circular>
            <br /><br />
            Redeem badge....
          </v-overlay>
        </div>
        <!-- My Badges -->

        <!-- Community Showcase -->
        <div>
          <CommunityShowcase :userInfo="userInfo" />
        </div>
        <!-- Community Showcase -->

      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import DevProfileBadges from "../DevProfile/DevProfileBadges.vue";
import CommunityShowcase from "../DevProfile/CommunityShowcase.vue";
import SocialMediaBtns from "../DevProfile/SocialMediaBtns.vue";
// import AddBadge from "../DevProfile/AddBadge.vue";
import ProfileShare from "../DevProfile/ProfileShare.vue";
import EditProfile from "../DevProfile/EditProfile.vue";

import devProfileService from "@/services/DevProfileService";

export default {
  name: "DevFestProfileDashboard",
  props: ["userInfo"],
  data: () => ({
    AddBadgeOverlay: false,
  }),
  created() {
    document.title = this.userInfo.name + " Profile | DevFest Jalandhar";
  },
  mounted() {
    if (Object.keys(this.$route.query) == "redeem-badge") {
      if (this.$route.query["redeem-badge"].length > 5) {
        this.addBadgeFromURL(this.$route.query["redeem-badge"]);
      }
    }
  },
  components: {
    DevProfileBadges,
    CommunityShowcase,
    // AddBadge,
    EditProfile,
    ProfileShare,
    SocialMediaBtns,
  },
  methods: {
    async addBadgeFromURL(code) {
      // Logic for add Bade by Code
      this.AddBadgeOverlay = true;
      // console.log(code);
      const codeDetails = await devProfileService.findBadgeExists(code);
      if (!codeDetails.isExist) {
        // alert("Code Does not exist");
        this.$emit("BadgesSuccess", "Code Does not exist");
        this.AddBadgeOverlay = false;
        return;
      }

      const redeem = await devProfileService.redeemBadge(
        this.userInfo.docid,
        codeDetails.data.codeDocId,
        this.userInfo.status
      );
      // console.log(redeem);
      this.$emit("BadgesSuccess", redeem.message);
      // alert(redeem.message)
      this.$router.replace("/profile/");
      this.AddBadgeOverlay = false;
    },
  },
};
</script>

<style scoped></style>
