<template>
  <v-container fluid class="my-10">
    <v-row>
      <v-col class="text-center google-font">
        <p class="google-font gdg-h1 mb-0 grey--text text--darken-2">
          Our Sponsors
        </p>
        <p>Sponsors dedicated to building remarkable experience!</p>
        <v-btn
          depressed
          rounded
          color="#4285F4"
          dark
          href="mailto:gdgjammu@gmail.com?subject=Devfest Jammu Sponsorship"
          target="_blank"
          class="mx-1 mt-1"
          >Become a Sponsor</v-btn
        >
        <v-btn
          depressed
          rounded
          color="#4285F4"
          target="_blank"
          href="https://docs.google.com/presentation/d/11cRui2zMauQgGDvcDQY9FvFsQEz3K1hwHEOf2JvPdgs/edit?usp=sharing"
          outlined
          class="mx-1 mt-1"
          >Information Brochure</v-btn
        >
      </v-col>
    </v-row>
    <v-row class="" justify="center" align="center">
      <v-col md="12" class="text-center">
        <v-container fluid class="py-0 my-0 " >
          <v-row align="center" justify="center" class="">
            <v-col md="4" class="">
              <SponsorDialogeVue
                :item="{
                  img: 'https://www.gstatic.com/devrel-devsite/prod/vdb149cdc08c87ab249cdebfec6395e8f073056d752ca9c2d285d3b8426fcfa32/developers/images/lockup.svg',
                  name: 'Google Developer',
                  desc: `Google Developers is Google's site for software development tools and platforms, application programming interfaces, and technical resources. The site contains documentation on using Google developer tools and APIs—including discussion groups and blogs for developers using Google's developer products.`,
                  link:'https://developers.google.com'
                }"
              />
            </v-col>
          </v-row>
        </v-container>
        


        <p class="google-font mt-10 mb-n2">Platinum Sponsors</p>
        <v-container fluid>
          <v-row align="center" justify="center">
            <v-col md="2">
              <SponsorDialogeVue
                :item="{
                  img: 'https://theme.zdassets.com/theme_assets/9442057/efc3820e436f9150bc8cf34267fff4df052a1f9c.png',
                  name: 'Stream',
                  desc: `Stream's <a href='https://getstream.io/chat/sdk/android/?utm_source=DevFest&utm_medium=Whole_Event_L&utm_content=Developer&utm_campaign=DevFest_October2022_AndroidChatSDK_klmh22'>Android</a> & <a href='https://getstream.io/chat/sdk/flutter/?utm_source=DevFest&utm_medium=Whole_Event_L&utm_content=Developer&utm_campaign=DevFest_October2022_FlutterChatSDK_klmh22'>Flutter</a> SDKs launch chat faster and its UI components make it easy to customize. Try it for free today!`,
                  link:'https://getstream.io/chat/sdk/android/?utm_source=DevFest&utm_medium=Whole_Event_L&utm_content=Developer&utm_campaign=DevFest_October2022_AndroidChatSDK_klmh22'
                }"
              />
            </v-col>
          </v-row>
        </v-container>

        <!-- 
        <p class="google-font mt-10">Platinum Sponsors</p>
        <a href="https://www.connectzone.in/" target="_blank" class="mx-2">
          <img
            src="https://www.connectzone.in/assets/connect-broadband-logo-white.png"
            width="150px"
            alt=""
          />
        </a>
        <a href="https://digimantralabs.com/" target="_blank" class="mx-2">
          <img
            :src="require('@/assets/img/sponsors/digimantra.jpg')"
            width="220px"
            alt=""
          />
        </a>

        <p class="google-font mt-10">Silver Sponsors</p>
        <a href="https://www.allsoftsolutions.in/IBM/Main" target="_blank">
          <img
            src="https://www.allsoftsolutions.in/IBM/assets/logo/Logo-Small.png"
            width="240px"
            alt=""
          />
        </a>


        <p class="google-font mt-10">Venue Partner</p>
        <a href="https://www.pyramidcollege.edu.in/" target="_blank">
          <img
            src="https://www.pyramidcollege.edu.in/images/pcbt-logo-2022.png"
            width="150px"
            alt=""
          />
        </a> -->
      </v-col>
    </v-row>
  </v-container>

  <!-- Jet Brain Gold -->
  <!-- Vardiano Diamond -->
  <!-- Cabbana Hospitality Partner -->
  <!-- Cabbana & pyramid Hospitality Partner -->

</template>

<script>
import SponsorDialogeVue from "../Common/SponsorDialoge.vue";
export default {
  name: "SponsorComponent",
  components: {
    SponsorDialogeVue,
  },
  data: () => ({
    pastEvents: [
      {
        title: "Google Developers",
        size: "250px",
        image:
          "https://www.gstatic.com/devrel-devsite/prod/vdb149cdc08c87ab249cdebfec6395e8f073056d752ca9c2d285d3b8426fcfa32/developers/images/lockup.svg",
        link: "https://developers.google.com/",
      },
    ],
  }),
};
</script>

<style>
</style>