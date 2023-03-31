<template>
  <v-main>
    <v-container fluid class="">
      <v-row justify="center" align="center">
        <v-col md="12" sm="12" cols="12" lg="10" class="google-font my-10">
          <v-container fluid>
            <v-row align="start" justify="start">
              <v-col md="11" lg="11">
                <v-container fluid>
                  <v-row justify="center" align="center">
                    <v-col md="8" order-md="1" order="2">
                      <p
                        class="
                          google-font
                          gdg-heading
                          mb-0
                          grey--text
                          text--darken-2
                        "
                      >
                      Learn, build, and connect as a community
                      </p>
                      <p>
                        Google Developer Groups represents a network of technical communities that offer opportunities for professional development and connection. Those who join can learn about the latest Google tools and technologies, and can meet with local developers with similar interests.
                      </p>
                      <p>
                        The program prides itself on fostering inclusive environments, where everyone and anyone interested in tech—from beginner developers to experienced professionals—are all welcome to join.
                      </p>
                      <a href="https://gdg.community.dev/gdg-jammu/" target="_blank" class="mr-3 v-btn v-btn--has-bg v-btn--rounded theme--light v-size--default primary mt-2"><span class="v-btn__content">Join GDG Jammu</span></a><a href="https://developers.google.com/community/gdg" target="_blank" class="v-btn v-btn--outlined v-btn--rounded theme--light v-size--default mt-2"><span class="v-btn__content">About Google Developer's Program</span></a>
                     
                    </v-col>
                   <v-col md="4" order-md="2" order="1" class="text-center">
                      <v-img
                        style="border-radius: 12px"
                        :src="require('@/assets/img/image.gif')"
                      ></v-img>
                     
                    </v-col>
                    
                   <!-- <JoinCommunityVue class="my-10" />-->
                  </v-row>
                  <v-row>
      <v-col cols="12" md="12" class="grey lighten-4 pa-8 text-center my-10" style="border-radius:12px">
        <p class="google-font gdg-h1 mb-0 grey--text text--darken-2">
          About GDG Jammu team
        </p>
        <p>
          It is an initiative of our team to concentrate the efforts of many developers in and around Jammu and Kashmir. We are a growing community of 500+ Developers and have hosted a number of events, conferences and workshops with the aim of Learning, Sharing, Networking and Collaborating with others. Our mission is to empower our community by enhancing their skills to speak about their learnings with hands-on practices and creating solutions.
        </p>
        <v-btn rounded depressed large class="mr-3" href="https://www.gdgjammu.com/team" target="_blank" dark color="#4285F4">View</v-btn>
      </v-col>
    </v-row>
                 
                  <!---     <v-row justify="center" align="center">
                    <v-col md="6" order-md="1" order="1" class="text-center">
                      <v-img
                        style="border-radius: 12px"
                        :src="require('@/assets/img/jk.gif')"
                      ></v-img>
                      --p class="mt-4 mb-0">Scan the QR Code to Donate</p--
                    </v-col>
                    <v-col md="6" order-md="2" order="2">
                      <p
                        class="
                          google-font
                          gdg-heading
                          mb-0
                          grey--text
                          text--darken-2
                        "
                      >
                      Our Initiatives...
                      </p>
                      <p>
                        Jammu is known as the City of temples, we want it to be known for its innovation and infrastructure in the field of Information Technology as well.
                      </p>
                      <p>
                        To scale up and make things more impactful, we hosted number of events with a mission to nurture the needs and interests of the local developer community ecosystem.
                      </p>
                      <v-chip dark color="#4285F4" href="https://gdg.community.dev/gdg-jammu/" target="_blank"
                        >Join Google Developer Group Jammu</v-chip
                      >
                  
                    </v-col>
                  
                  </v-row>-->
                 <!-- <v-row justify="center" align="center">
                  <div class="row px-5 px-md-10 pb-0 align-center justify-center"><div class="order-2 order-md-1 col-sm-8 col-md-8 col-12"><p class="gdg-heading mb-0">Google Developer Group Jammu</p><p>Google Developer Group Jammu is an initiative to concentrate the efforts of many developers in and around Jammu and Kashmir. We are a growing community of 500+ Developers and have hosted a number of events, conferences and workshops with the aim of Learning, Sharing, Networking and Collaborating with others.<br><br>Our mission is to empower our community by enhancing their skills to speak about their learnings with hands-on practices and creating solutions.</p><div class="mb-5"><a href="https://twitter.com/GDGJammu" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-twitter theme--light"></i></span></a><a href="https://www.linkedin.com/company/google-developer-club-jammu" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-linkedin theme--light"></i></span></a><a href="https://www.instagram.com/gdgjammu/" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-instagram theme--light"></i></span></a><a href="https://www.facebook.com/GDG-Jammu-102534968341311" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-facebook theme--light"></i></span></a><a href="https://www.youtube.com/channel/UCxNELPTfkG3Rc-BROjVxmNA" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-youtube theme--light"></i></span></a></div><a href="https://gdg.community.dev/gdg-jammu/" target="_blank" class="mr-3 v-btn v-btn--has-bg v-btn--rounded theme--light v-size--default primary"><span class="v-btn__content">Join us</span></a><a href="https://gdg.community.dev/gdg-jammu/" target="_blank" class="v-btn v-btn--outlined v-btn--rounded theme--light v-size--default"><span class="v-btn__content">More info</span></a></div><div class="order-1 order-md-2 col-sm-4 col-md-4 col-12"><div class="v-image v-responsive theme--light"><div class="v-responsive__sizer" style="padding-bottom: 100%;"></div><div class="v-image__image v-image__image--cover" style="background-image: url(&quot;https://trilokiainc.com/jk.gif&quot;); background-position: center center;"></div><div class="v-responsive__content" style="width: 1000px;"></div></div></div></div>
                  </v-row>-->
                </v-container>
              </v-col>
            </v-row>
          </v-container>
        </v-col>
      </v-row>
    </v-container>
  </v-main>
</template>
  
  <script>
export default {
  name: "CoCComponent",
  data: () => ({}),
  created() {
    document.title = "About GDG | DevFest Jammu 2022";
  },
};
</script>
  
  <style scoped></style>
  