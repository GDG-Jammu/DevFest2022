<template>
  <v-dialog v-model="dialog" width="700" scrollable>
    <template v-slot:activator="{ on, attrs }">
      <v-btn
        small
        v-on="on"
        v-if="userInfo.status"
        class="float-right"
        outlined
        v-bind="attrs"
        text
        rounded
      >
        <v-icon left>mdi-share</v-icon> Share</v-btn
      >
    </template>
    <v-card class="white google-font" v-if="dialog" style="border-radius:12px">
      <v-card-text class="pa-0">
        <v-container fluid class="py-8">
          <v-row>
            <v-col md="12" cols="12" class="px-md-10 px-5">
              <p style="font-size:25px;font-weight:550;color:black">
                {{ userInfo.name }} Public Profile
              </p>
            </v-col>
          </v-row>
          <v-row>
            <v-col md="12" cols="12" class="px-md-10 px-5">
              <!-- {{ userInfo }} -->
              <p class="google-font mb-1" style="font-size:18px">Here is Your DevFest Profile's Public URL</p>
              <a target="_blank" style="font-size:17px" :href="baseURL+'/u/'+userInfo.docid">{{baseURL}}/u/{{userInfo.docid}}</a>
            </v-col>
          </v-row>
        </v-container>
      </v-card-text>

      <v-card-actions class="white">
        <v-spacer></v-spacer>
        <v-btn aria-label="close" class="px-10" text @click="dialog = false"
          >Close</v-btn
        >
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script>
export default {
  name: "ProfileShareComponent",
  props: ["userInfo"],
  data: () => ({
    dialog: false,
    baseURL: window.location.origin
  }),
  mounted(){
    //   console.log(window.location.origin)
  },
  methods: {},
};
</script>
