<template>
  <v-main>
    <Snackbar
      :message="snackBarMessage"
      :isShow.sync="isSnackBarVisible"
      :color="snackBarColor"
      :timeout="snackBarTimeOut"
    />
    <v-container fluid class="">
      <v-row justify="center" align="center">
        <v-col md="11" sm="11" lg="8" class="google-font my-15 py-10 px-5 px-md-0">
          <p class="super-heading">Registration</p>
          <p style="font-size:20px">
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nam ipsa
            nostrum quidem totam velit voluptatibus harum ipsam illo suscipit
            illum alias, provident aperiam voluptatum nisi non, ducimus
            perferendis, eveniet maiores?
          </p>

          <v-container fluid>
            <!-- Auth -->
            <v-row align="start" justify="start">
              <v-col md="2" cols="2" class="text-center">
                <v-avatar color="#4285f4">
                  <v-icon dark>mdi-account-circle</v-icon>
                </v-avatar>
              </v-col>
              <v-col md="10" class="google-font pl-0" cols="10">
                <Auth
                  @showSnackbar="showSnackbar"
                  @userStatus="checkUserStatus"
                />
              </v-col>
            </v-row>

            <!-- Registration From -->
            <v-row
              class="my-8"
              align="start"
              justify="start"
              v-if="
                userRegistered != null &&
                  !userRegistered &&
                  userInfo != null &&
                  userRegisterSuccess != null &&
                  !userRegisterSuccess
              "
            >
              <v-col md="2" cols="2" class="text-center">
                <v-avatar color="#4285f4">
                  <v-icon dark>mdi-format-align-justify</v-icon>
                </v-avatar>
              </v-col>
              <v-col md="10" class="google-font pl-0" cols="10">
                <RegistrationForm
                  v-if="userInfo != null"
                  :user="userInfo"
                  @registerSuccess="userRegisterSuccess = true"
                />
              </v-col>
            </v-row>
            <!-- Registration From -->

            <!-- Registration From Success -->
            <v-row
              class="my-8"
              align="start"
              justify="start"
              v-if="
                userRegistered != null &&
                  !userRegistered &&
                  userInfo != null &&
                  userRegisterSuccess != null &&
                  userRegisterSuccess
              "
            >
              <v-col md="2" cols="2" class="text-center">
                <v-avatar color="#4285f4">
                  <v-icon dark>mdi-playlist-check</v-icon>
                </v-avatar>
              </v-col>
              <v-col md="10" class="google-font " cols="10">
                <h3 class="google-font">
                  Thank you for registering for
                  <a
                    href="https://twitter.com/DevFestIndia"
                    rel="noreferrer"
                    target="_blank"
                    style="text-decoration:none;color:#4285f4"
                  >
                    <b>#DevFestIndia</b> </a
                  >.
                </h3>
                <p class="google-font mt-3 mb-0" style="font-size:110%">
                  Thank you for registering for
                  <b>#DevFestIndia</b> and giving us the honour to host you at
                  India's biggest developer conclave. <br /><br />You will be
                  receiving the confirmation mail soon from:
                  <span style="color:red">no-reply@devfestindia.com</span>
                </p>
              </v-col>
            </v-row>
            <!-- Registration From Success -->

            <!-- Already Registered -->
            <v-row
              class="my-8"
              align="start"
              justify="start"
              v-if="
                userRegistered != null && userRegistered && userInfo != null
              "
            >
              <v-col md="2" cols="2" class="text-center">
                <v-avatar color="#4285f4">
                  <v-icon dark>mdi-playlist-check</v-icon>
                </v-avatar>
              </v-col>
              <v-col md="10" class="google-font " cols="10">
                <h3 class="google-font">
                  You have already submitted this form
                </h3>
                <p class="google-font mt-3" style="font-size:110%">
                  Thank you for registering for
                  <b>#DevFestIndia</b> and giving us the honour to host you at
                  India's biggest developer conclave. <br /><br />You might have
                  received or will be receiving the confirmation mail soon from:
                  <span style="color:red">no-reply@devfestindia.com</span>
                </p>
              </v-col>
            </v-row>
            <!-- Already Registered -->
          </v-container>
        </v-col>
      </v-row>
    </v-container>
  </v-main>
</template>

<script>
import Auth from "../components/Auth/Auth.vue";
import Snackbar from "../components/Common/Snackbar.vue";
import RegistrationForm from "../components/Registration/RegistrationForm.vue";
export default {
  data: () => ({
    // Snackbar
    snackBarMessage: "",
    isSnackBarVisible: false,
    snackBarColor: "green",
    snackBarTimeOut: 5000,
    userInfo: {},
    userRegistered: null,
    userRegisterSuccess: false,
  }),
  components: {
    Auth,
    Snackbar,
    RegistrationForm,
  },
  created(){
    document.title = 'Registration | DevFest Jammu 2022'
  },
  methods: {
    showSnackbar(event) {
      this.isSnackBarVisible = true;
      this.snackBarMessage = event;
    },
    checkUserStatus(user) {
      // console.log(user);
      this.userInfo = user.userInfo;
      this.userRegistered = user.userRegistered;
    },
  },
};
</script>

<style scoped></style>
