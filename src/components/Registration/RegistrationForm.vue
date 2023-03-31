<template>
  <v-container fluid class="my-0 py-0">
    <v-row>
      <v-col>
        <h3 class="google-font">Your details</h3>
        <p class="mb-8">Required fields are marked with an asterisk</p>
      </v-col>
    </v-row>

    <v-row class="my-0 py-0">
      <v-col class="my-0 py-0" md="9">
        <v-form ref="form" autocomplete="off">
          <!-- Email Id -->
          <TextField
            :model.sync="user.email"
            label="Email"
            :required="true"
            :disabled="true"
          />
          <!-- Email Id -->

          <!-- Full Name -->
          <TextField
            :model.sync="response.name"
            label="Name"
            :required="true"
            :disabled="false"
          />
          <!-- Full Name -->

          <!-- City -->
          <TextField
            :model.sync="response.city"
            label="City"
            :required="true"
            :disabled="false"
          />
          <!-- City -->

          <!-- Country -->
          <TextField
            :model.sync="response.country"
            label="Country"
            :required="true"
            :disabled="false"
          />
          <!-- Country -->

          <!-- Company/Org -->
          <TextField
            :model.sync="response.org"
            label="Company / Institute Name"
            :required="true"
            :disabled="false"
          />
          <!-- Company/Org -->

          <!-- Role -->
          <TextField
            :model.sync="response.role"
            label="Role / Designation"
            :required="true"
            :disabled="false"
          />
          <!-- Role -->

          <!-- Gender -->
          <RadioBtn
            label="How would you like to identify yourself as?"
            :model.sync="response.gender"
            :options="['Male', 'Female', 'Prefer not to say']"
          />
          <!-- Gender -->

          <!-- Area of Interest -->
          <Checkbox
            label="Tracks / themes you are interested to attend."
            :model.sync="response.theme"
            :options="['Mobile', 'Cloud', 'Web', 'Machine Learning']"
          />
          <!-- Area of Interest -->

          <!-- Experience -->
          <RadioBtn
            class="mt-10"
            label="Years of experience"
            :model.sync="response.experience"
            :options="[
              '0 - 5 years',
              '6 - 10 years',
              '11 - 20 years',
              '21+ years',
            ]"
          />
          <!-- Experience -->

          <!-- CommunitySelect -->
          <CommunitySelect
            :model.sync="gdgCommunity"
            :otherCommunity.sync="otherCommunity"
          />
          <!-- CommunitySelect -->

          <!-- KnowAbout  -->
          <Checkbox
            label="How did you get to know about this event?"
            class="mt-4"
            :model.sync="response.knowAbout"
            :options="[
              'Women Techmakers',
              'Google Developer Groups',
              'Google Developer Student Clubs',
              'Other Communities',
            ]"
          />
          <!-- KnowAbout  -->

          <!-- Share -->
          <p style="font-size:105%;color:black" class="mb-0 mt-10">
            Anything else you want to share with us?
          </p>
          <v-textarea
            outlined
            class="mt-3"
            placeholder="Anything else you want to share with us?"
            v-model="response.share"
          ></v-textarea>
          <!-- Share -->

          <!-- Accepts TC -->
          <div>
            <v-checkbox
              color="#4285F4"
              v-model="istcChecked"
              :rules="[(v) => !!v || 'You must agree to register!']"
              label="By checking this box, i confirm that: "
            ></v-checkbox>
            <p class="mt-3">
              I agree to let DevFest Jalandhar Organisers use the information
              collected in this form to be used for my participation in "DevFest
              India 2021 Event".
            </p>
            <p>
              I have read and agree to the
              <router-link to="/tc" target="_blank"
                >Participation Terms</router-link
              >,
              <router-link to="/coc" target="_blank"
                >Code of conducts</router-link
              >
              &
              <a
                href="https://developers.google.com/community-guidelines"
                rel="“noreferrer”"
                target="_blank"
                >Community Guidelines</a
              >
            </p>
          </div>
          <!-- Accepts TC -->

          <v-btn
            depressed
            dark
            rounded
            class="mt-3"
            large
            :loading="loader"
            @click="saveData"
            color="#4285F4"
            >Submit</v-btn
          >
        </v-form>

      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import FDK from '../../Config/firebase'
import TextField from "../Registration/Forms/TextField.vue";
import RadioBtn from "../Registration/Forms/GenderRadio.vue";
import Checkbox from "../Registration/Forms/Checkbox.vue";
import CommunitySelect from "../Registration/Forms/CommunitySelect.vue";
export default {
  name: "",
  props: ["user"],
  components: {
    TextField,
    RadioBtn,
    Checkbox,
    CommunitySelect,
  },
  data: () => ({
    istcChecked: "",
    gdgCommunity:'',
    otherCommunity:'',
    loader:false,
    response: {
      name: "",
      email: "",
      city: "",
      country: "",
      role: "",
      org: "",
      gender: null,
      experience: "",
      theme: [],
      community: "",
      knowAbout: [],
      share: "",
      photoURL:'',
      status: false,
      interest:[],
      social:{
        linkedin:'',
        twitter:'',
        github:'',
        website:'',
        blog:'',
        youtube:''
      },
      techstack:[],
      bio:'',
      code:''
    },
    rules: {
      required: (value) => !!value || "This field is required.",
      radiobtn: (value) => {
        return value.length > 0 || "This field is required.";
      },
      socialcheckboxbtn: (value) => {
        return value.length > 0 || "At least one item should be selected.";
      },
    },
  }),
  created() {
    this.response.name = this.user.displayName;
    this.response.email = this.user.email;
    this.response.photoURL = this.user.photoURL? this.user.photoURL:'https://raw.githubusercontent.com/DevFest-India/website-data/master/defaultavatar.png'
  },
  methods: {
    async saveData(){
      if (this.$refs.form.validate()) {
        this.loader = true
        // Logic of Data Adding
        // this.response['city'] = this.checkData(this.response['city'])
        this.response['registeredTimestamp'] = FDK.firebase.firestore.FieldValue.serverTimestamp();
        if(this.gdgCommunity === 'Others'){
          this.response.community = this.otherCommunity
        }else{
          this.response.community = this.gdgCommunity 
        }

        if(Object.keys(this.$route.query) == "code") {
          if (this.$route.query["code"].length > 5) {
            this.response.code = this.$route.query["code"]
          }
        }

        try {
          await FDK.firestore.collection('edata').doc(this.user.uid).set(this.response)
          await FDK.firestore.collection('edata').doc(this.user.uid).collection('badges').doc('CblOFXpLu9Oez1xygQJA').set({codeId: 'CblOFXpLu9Oez1xygQJA', timestamp: FDK.firebase.firestore.FieldValue.serverTimestamp() })

          this.loader = false
          this.$emit('registerSuccess')
        } catch (error) {
          console.log(error)
        }
      }else{
        this.loader = false
        alert("Please fill the required fields before submitting the form :)");
      }
    },
    checkData(data){
      return data.length>0?data.toUpperCase():null
    }
  },
};
</script>

<style></style>
