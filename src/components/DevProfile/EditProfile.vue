<template>
  <v-dialog
    v-model="dialog"
    width="900"
    transition="dialog-bottom-transition"
    origin="center center"
    persistent
    scrollable
  >
    <template v-slot:activator="{ on }">
      <v-chip color="#4285f4" dark v-on="on" class="mt-n3">
        <v-icon left>mdi-account-edit-outline</v-icon>
        Edit Profile</v-chip
      >
    </template>
    <!-- style="border-radius:15px" -->
    <v-card class="pa-0 white" v-if="dialog">
      <v-card-title class="px-md-10 px-4 py-md-4 google-font elevation-0">
        <p class="mb-0" style="font-size:25px;font-weight:550;color:black">
          Edit Profile
        </p>
      </v-card-title>
      <v-card-text class="px-md-7 px-2 py-md-5">
        <v-form ref="form" v-model="form">
          <v-container class=" py-md-8">
            <v-row justify="center" align="center">
              <v-col md="12" lg="12">
                <!-- Profile Status -->
                <v-row align="start" justify="start">
                  <v-col md="4" lg="4" cols="12">
                    <v-select
                      :items="items"
                      item-text="name"
                      item-value="value"
                      label="Your Profile Status"
                      outlined
                      class="mb-0"
                      v-model="updatedData.status"
                      hide-details
                    ></v-select>
                  </v-col>
                </v-row>
                <!-- Profile Status -->

                <!-- Profile Name -->
                <v-row align="start" justify="start">
                  <v-col md="6" lg="6" cols="12">
                    <v-text-field
                      label="Email"
                      placeholder="Email"
                      outlined
                      disabled
                      class="mb-0"
                      v-model="updatedData.email"
                    ></v-text-field>
                  </v-col>
                  <v-col md="6" lg="6" cols="12">
                    <v-text-field
                      label="Full Name"
                      placeholder="Full Name"
                      outlined
                      class="mb-0"
                      :rules="nameRules"
                      v-model="updatedData.name"
                    ></v-text-field>
                  </v-col>
                </v-row>
                <!-- Profile Name -->

                <!-- City Country -->
                <v-row align="start" justify="start" class="mt-n4">
                  <v-col md="6" cols="12">
                    <v-text-field
                      label="City"
                      placeholder="City"
                      :rules="nameRules"
                      outlined
                      class="mb-0"
                      v-model="updatedData.city"
                      hide-details
                    ></v-text-field>
                  </v-col>
                  <v-col md="6" cols="12">
                    <v-text-field
                      label="Country"
                      :rules="nameRules"
                      placeholder="Country"
                      outlined
                      class="mb-0"
                      v-model="updatedData.country"
                      hide-details
                    ></v-text-field>
                  </v-col>

                  <v-col md="12">
                    <v-textarea
                      outlined
                      name="input-7-3"
                      rows="3"
                      label="Bio"
                      counter
                      :rules="bioRules"
                      v-model="updatedData.bio"
                    ></v-textarea>
                  </v-col>
                </v-row>
                <!-- City Country -->

                <!-- Company, role -->
                <v-row align="start" justify="start" class="mt-n4">
                  <v-col md="6" cols="12">
                    <v-text-field
                      label="Company / Institute Name"
                      placeholder="Company / Institute Name"
                      outlined
                      class="mb-0"
                      :rules="nameRules"
                      v-model="updatedData.org"
                      hide-details
                    ></v-text-field>
                  </v-col>
                  <v-col md="6" cols="12">
                    <v-text-field
                      label="Role"
                      placeholder="Role"
                      :rules="nameRules"
                      outlined
                      class="mb-0"
                      v-model="updatedData.role"
                      hide-details
                    ></v-text-field>
                  </v-col>
                </v-row>
                <!-- Company, role -->

                <!-- Project Technologies -->
                <v-row align="start" justify="start" class="mt-3">
                  <v-col md="12">
                    <p style="font-size:105%;color:black" class="mb-1">
                      Your Technical Stacks:
                      <span style="color:#ff5252;">*</span><br />
                      <span style="font-size:95%;color:black"
                        >Example: Mention HTML and then press Enter</span
                      >
                    </p>
                    <v-combobox
                      v-model="updatedData.techstack"
                      multiple
                      outlined
                      clearable
                      hint="Maximum of 5 Tech Stacks"
                      :rules="technologiesRules"
                    >
                      <template
                        v-slot:selection="{ attrs, item, select, selected }"
                      >
                        <v-chip
                          v-bind="attrs"
                          :input-value="selected"
                          @click="select"
                          close
                          @click:close="remove(item)"
                        >
                          <strong class="google-font">{{ item }}</strong>
                        </v-chip>
                      </template>
                    </v-combobox>
                  </v-col>
                </v-row>
                <!-- Project Technologies -->

                <!-- Interest -->
                <v-row align="start" justify="start" class="mt-n5">
                  <v-col md="12">
                    <p style="font-size:105%;color:black" class="mb-1">
                      Your Interest:
                      <span style="color:#ff5252;">*</span><br />
                      <span style="font-size:95%;color:black"
                        >Example: Mention Travelling and then press Enter</span
                      >
                    </p>
                    <v-combobox
                      v-model="updatedData.interest"
                      multiple
                      outlined
                      clearable
                      :items="[
                        'Networking',
                        'Looking for new opportunities',
                        'Hiring',
                      ]"
                      hint="Maximum of 5 Interst"
                      :rules="interestRule"
                    >
                      <template
                        v-slot:selection="{ attrs, item, select, selected }"
                      >
                        <v-chip
                          v-bind="attrs"
                          :input-value="selected"
                          @click="select"
                          close
                          @click:close="removeInterest(item)"
                        >
                          <strong class="google-font">{{ item }}</strong>
                        </v-chip>
                      </template>
                    </v-combobox>
                  </v-col>
                </v-row>
                <!-- Interest -->

                <!-- Social -->
                <v-row align="start" justify="start" class="mt-n4">
                  <v-col md="12">
                    <p class="mb-n2">Social Media</p>
                  </v-col>
                  <v-col md="6" cols="12" lg="6">
                    <v-text-field
                      label="LinkedIn"
                      placeholder="LinkedIn"
                      outlined
                      class="mb-0"
                      v-model="updatedData.social.linkedin"
                      hide-details
                    ></v-text-field>
                  </v-col>
                  <v-col md="6" cols="12" lg="6">
                    <v-text-field
                      label="GitHub"
                      placeholder="GitHub"
                      outlined
                      class="mb-0"
                      v-model="updatedData.social.github"
                      hide-details
                    ></v-text-field>
                  </v-col>
                  <v-col md="6" cols="12" lg="6">
                    <v-text-field
                      label="Twitter"
                      placeholder="Twitter"
                      outlined
                      class="mb-0"
                      v-model="updatedData.social.twitter"
                      hide-details
                    ></v-text-field>
                  </v-col>
                  <v-col md="6" cols="12" lg="6">
                    <v-text-field
                      label="Website"
                      placeholder="Website"
                      outlined
                      class="mb-0"
                      v-model="updatedData.social.website"
                      hide-details
                    ></v-text-field>
                  </v-col>
                  <v-col md="6" cols="12" lg="6">
                    <v-text-field
                      label="Blog"
                      placeholder="Blog"
                      outlined
                      class="mb-0"
                      v-model="updatedData.social.blog"
                      hide-details
                    ></v-text-field>
                  </v-col>
                  <v-col md="6" cols="12" lg="6">
                    <v-text-field
                      label="YouTube"
                      placeholder="YouTube"
                      outlined
                      class="mb-0"
                      v-model="updatedData.social.youtube"
                      hide-details
                    ></v-text-field>
                  </v-col>
                </v-row>
                <!-- Social -->
              </v-col>
            </v-row>
          </v-container>
        </v-form>
      </v-card-text>
      <v-card-actions class="white pb-md-8 pb-4">
        <v-spacer></v-spacer>

        <v-btn
          rounded
          aria-label="close"
          class="px-10"
          text
          @click="dialog = false"
          >Close</v-btn
        >
        <v-btn
          color="#4285f4"
          depressed
          rounded
          dark
          :loading="loader"
          class="mr-4"
          @click="updateUserData"
        >
          Edit Profile
        </v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script>
import FDK from '../../Config/firebase'
import UserProfileService from "../../services/DevProfileService";
export default {
  name: "AddBadge",
  props: ["data"],
  mounted() {
    this.updatedData.status = this.data.status;
    this.updatedData.name = this.data.name;
    this.updatedData.city = this.data.city;
    this.updatedData.country = this.data.country;
    this.updatedData.email = this.data.email;
    this.updatedData.org = this.data.org;
    this.updatedData.role = this.data.role;
    this.updatedData.bio = this.data.bio;
    this.updatedData.techstack = this.data.techstack;
    this.updatedData.interest = this.data.interest;

    // Socail Media
    this.updatedData.social.linkedin = this.data.social.linkedin;
    this.updatedData.social.github = this.data.social.github;
    this.updatedData.social.twitter = this.data.social.twitter;
    this.updatedData.social.website = this.data.social.website;
    this.updatedData.social.blog = this.data.social.blog;
    this.updatedData.social.youtube = this.data.social.youtube;
  },
  data: () => ({
    dialog: false,
    form: false,
    items: [
      { name: "Public", value: true },
      { name: "Private", value: false },
    ],
    loader: false,
    updatedData: {
      social: {},
      techstack: [],
      interest: [],
    },
    bioRules: [
      (v) => v.length <= 500 || "Bio must be less than 500 characters",
    ],
    nameRules: [
      (v) => !!v || "Text Field value is required",
      (v) =>
        (v && v.length <= 60) ||
        "Text Field value must be less than 60 characters",
    ],
    technologiesRules: [
      (v) => !!v || "Technical Stack is required",
      (v) => (v && v.length >= 1) || "Technical Stack must be greater than 1",
      (v) => (v && v.length < 6) || "Technical Stack must be less then 6",
    ],
    interestRule: [(v) => v.length < 6 || "Value must be less then 6"],
  }),
  methods: {
    remove(item) {
      this.updatedData.techstack.splice(
        this.updatedData.techstack.indexOf(item),
        1
      );
      this.updatedData.techstack = [...this.updatedData.techstack];
    },
    removeInterest(item) {
      this.updatedData.interest.splice(
        this.updatedData.interest.indexOf(item),
        1
      );
      this.updatedData.interest = [...this.updatedData.interest];
    },
    async updateUserData() {
      this.loader = true;

      // Registered Data
      this.updatedData.gender = this.data.gender;
      this.updatedData.experience = this.data.experience;
      this.updatedData.theme = this.data.theme;
      this.updatedData.community = this.data.community;
      this.updatedData.knowAbout = this.data.knowAbout;
      this.updatedData.share = this.data.share;
      this.updatedData.photoURL = this.data.photoURL;
      this.updatedData.code = this.data.code;
      this.updatedData.registeredTimestamp = this.data.registeredTimestamp

      // Last Updated Timestamp
      this.updatedData['lastUpdated'] = FDK.firebase.firestore.FieldValue.serverTimestamp();
      
      if (this.updatedData.status) {
        // Making Public Profile
        // Logic for Updating Main Collections
        try {
          let res = await UserProfileService.updateUserProfileInfo(
            this.data.docid,
            this.updatedData
          );

          if (res.success) {
            let publicprofiledata = await UserProfileService.createUserPublicProfile(
              this.data.docid
            );

            if (publicprofiledata.success) {
              this.loader = false;
              this.$emit("ProfileUpdateSuccess");
            }
          }
        } catch (error) {
          console.log(error);
          this.loader = false;
        }
      } else {
        // Making Private Profile
        try {
          let res = await UserProfileService.updateUserProfileInfo(
            this.data.docid,
            this.updatedData
          );

          if (res.success) {
            let removePublicProfileSnapshot = await UserProfileService.removeUserPublicProfile(
              this.data.docid
            );

            if (removePublicProfileSnapshot.success) {
              this.loader = false;
              this.$emit("ProfileUpdateSuccess");
            }
          }
        } catch (error) {
          console.log(error);
          this.loader = false;
        }
      }
    },
  },
};
</script>

<style></style>
