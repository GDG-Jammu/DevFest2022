<template>
<v-main>
  <Snackbar
      :message="snackBarMessage"
      :isShow.sync="isSnackBarVisible"
      :color="snackBarColor"
      :timeout="snackBarTimeOut"
    />
  <v-container fluid>
    <v-row justify="center" align="center">
      <v-col md="11" sm="11" lg="11" class="google-font my-15 py-10">
        <v-container fluid>
          
          <!-- Loader -->
          <v-row
            justify="center"
            align="center"
            v-if="!isLoggedinUser && MainViewLoader && !isDevProfile"
          >
            <v-col md="4" lg="4" cols="12" sm="5" class="my-md-15 py-15 text-center">
              <v-progress-circular
                :size="70"
                :width="5"
                color="#4285fa"
                indeterminate
              ></v-progress-circular>
            </v-col>
          </v-row>
          <!-- Loader -->

          <!-- DevProfile Intro Section -->
          <v-row justify="start" align="start" v-if="!isLoggedinUser && !MainViewLoader && !isDevProfile">
            <v-col md="9" lg="7" cols="12" sm="12">
              <p class="super-heading">DevFest Profile</p>
              <p style="font-size:20px">
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nam
                ipsa nostrum quidem totam velit voluptatibus harum ipsam illo
                suscipit illum alias, provident aperiam voluptatum nisi non,
                ducimus perferendis, eveniet maiores?
              </p>

              <!-- <v-btn style="text-transform: capitalize;font-size:110%" large rounded depressed class="google-font" color="#4285fa">Create DevFest Profile</v-btn> -->
              <Auth/>
            </v-col>
            <v-col md="6">
            </v-col>
          </v-row>
          <!-- DevProfile Intro Section -->

          <!-- DevProfile Section -->
          <v-row justify="center" align="center" v-if="isLoggedinUser && !MainViewLoader && isDevProfile" class="">
            <v-col md="12" >
              <DevFestProfileDashboard @BadgesSuccess="ShowBadgeStatus" @ProfileUpdateSuccess="profileUpdated()" v-if="Object.keys(userInfo).length>0" :userInfo="userInfo"/>
            </v-col>
          </v-row>
          <!-- DevProfile Section -->

        </v-container>
      </v-col>
    </v-row>
  </v-container>
  </v-main>
</template>

<script>
import FDK from "@/Config/firebase";
import Snackbar from "@/components/Common/Snackbar.vue";
import Auth from "@/components/Auth/DevProfileAuth.vue";
import DevProfileService from '@/services/DevProfileService'
import DevFestProfileDashboard from '@/components/DevProfile/DevProfileDashboard.vue'
export default {
  name:"DevProfileComponent",
  components:{
    DevFestProfileDashboard,
    Auth,
    Snackbar
  },
  data:()=>({
    // Snackbar
    snackBarMessage: "",
    isSnackBarVisible: false,
    snackBarColor: "green",
    snackBarTimeOut: 5000,
    //
    isLoggedinUser: false,
    MainViewLoader: true,
    isDevProfile:false,
    userInfo:{},
  }),
  created(){
    document.title = 'DevFest Profile | DevFest Jammu 2022'
    this.checkStatus()
  },
  methods:{
    async checkStatus(){
      this.isDevProfile = false
      this.MainViewLoader = true
      await FDK.auth.onAuthStateChanged(async (user) => {
        if(user){
          await DevProfileService.getUserProfileInfo(user.uid).then(async (res)=>{
            if (res.success) {
              // User Profile Found
              console.log('User Profile Found from DB')
              this.userInfo = res.data
              this.userInfo.docid = user.uid
              this.MainViewLoader = false
              this.isDevProfile = true
            }else{
              // User Profile Not Found
              console.log('User Profile Found Not from DB')
              this.isDevProfile = false
              this.MainViewLoader = false
              this.$router.push('/registration')
            }
            this.isLoggedinUser = true;
          }).catch(e=>{
            this.MainViewLoader = false
          })
        }else{
          console.log('User Profile Not Found')
          //User Profile Not Found
          this.MainViewLoader = false
          this.isLoggedinUser = false
          this.isDevProfile = false
        }
      })
    },
    profileUpdated(){
      this.isSnackBarVisible = true;
      this.snackBarMessage = "User Profile Updated";
      this.checkStatus()
    },
    ShowBadgeStatus(msg){
      this.isSnackBarVisible = true;
      this.snackBarMessage = msg;
      this.checkStatus()
    } 
  }
};
</script>

<style lang="scss" scoped></style>
