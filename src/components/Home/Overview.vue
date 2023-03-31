<template>
  <v-container fluid>
    <v-row justify="center" align="center">
      <v-col md="12" class="">
        <div class="container my-10 container--fluid"><div class="row align-center justify-center"><div class="col-md-7 col"><div class="v-image v-responsive white--text align-end theme--light" style="width: 60%;"><!--<div class="v-responsive__sizer" style="padding-bottom: 16.6084%;"></div><div class="v-image__image v-image__image--cover" style="background-image: url(&quot;https://devfestindia.com/img/DF22.b3b9f120.png&quot;); background-position: center center;"></div>--><div class="v-responsive__content" style="width: 2288px;"></div></div>
        <p class="gdg-heading mb-0 grey--text text--darken-2">J&K's first dev<i>f</i>est</p> <p class="google-font mb-2 mt-1   grey--text text--darken-2" style="font-size:18px">by <b>Google Developer Group Jammu</b><br>in collaboration with <b>Jammu & Kashmir Entrepreneurship Development Institute</b></p>
  <p class="google-font" style="font-size:16px">
            <v-icon>mdi-calendar-month</v-icon> December 19, 2022  
            <br>
            <v-icon>mdi-clock-time-eight-outline</v-icon> 10:00 AM to 4:00 PM IST
            <br>
            <v-icon>mdi-google-maps</v-icon>JKEDI, Industrial Estate, Bari Brahmna Jammu-181133, J&K
          </p><p class="google-font text--secondary" style="font-weight: 500; font-size: 20px;"> An annual globally distributed conference  hosted by the Google Developers Group across the world to bring the technology closer to the developers. It is an all day developer conference where we aim to focus on multiple technologies through lightning talks, sessions, workshops, etc. </p><div class="mb-5"><a href="https://twitter.com/GDGJammu" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-twitter theme--light"></i></span></a><a href="https://www.linkedin.com/company/google-developer-club-jammu" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-linkedin theme--light"></i></span></a><a href="https://www.instagram.com/gdgjammu/" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-instagram theme--light"></i></span></a><a href="https://www.facebook.com/GDG-Jammu-102534968341311" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-facebook theme--light"></i></span></a><a href="https://www.youtube.com/channel/UCxNELPTfkG3Rc-BROjVxmNA" target="_blank" class="v-btn v-btn--icon v-btn--round theme--light v-size--default"><span class="v-btn__content"><i aria-hidden="true" class="v-icon notranslate mdi mdi-youtube theme--light"></i></span></a></div><a href="https://forms.gle/8fEhAEuC2XBSti18A" target="_blank" class="mr-3 v-btn v-btn--has-bg v-btn--rounded theme--light v-size--default primary"><span class="v-btn__content">Register Now</span></a><a href="https://gdg.community.dev/gdg-jammu/" target="_blank" class="v-btn v-btn--outlined v-btn--rounded theme--light v-size--default"><span class="v-btn__content">More Info</span></a></div><div class="col-md-5 col"><iframe width="100%" height="302" src="https://www.youtube.com/embed/K6W9Usve6hI" title="DevFest India 2022 is here!" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen" style="border-radius: 12px; border: 2px solid black;"></iframe></div></div></div>
        <v-container fluid>
          <v-row justify="center" align="center">
            <!-- grey lighten-4 -->
            <v-col md="7" class="px-0 pr-md-10" style="border-radius: 16px">
              <!-- <div class="px-7 my-8" style=""> -->
                <!-- <p class="gdg-heading">DevFest Jalandhar</p> -->
                <p class="google-font gdg-h1 mb-0 grey--text text--darken-2"       >What's special about dev<i>f</i>est</p>
                <p
                  class="google-font text--secondary"
                  style="font-weight: 500; font-size: 18px"
                >
                Perhaps, Jammu is known as the <b>City of Temples</b>, we want it to be known for its innovation and infrastructure in the field of Startups & IT.
                <br><br>
                At devfest, we aims to help local developers to learn, build and offer a way to engage with new content from various Google product teams. 
                </p>

                <v-container fluid class="pa-0 ma-0" style="border-radius: 12px" >
                  <v-row align="start" justify="start">
                    <v-col
                      cols="6"
                      md="3"
                      sm="3"
                      class="text-center ma-0 px-3"
                      v-for="(item, index) in stats"
                      :key="index"
                    > 
                    <div style=" border-radius:12px;background-color: #F8F8F8;" class="pa-3">
                      <p style="font-size: 40px; font-weight: 600" class="mb-0">
                        {{ item.value }}
                      </p>
                      <p class="mb-0">{{ item.name }}</p>
                      </div>
                    </v-col>
                  </v-row>
                </v-container>

                <!-- <v-btn rounded outlined depressed large class="mt-5"
                  >See More</v-btn
                > -->
              <!-- </div> -->
            </v-col>
            <v-col md="5" class="mt-2">
              <v-img
                
                class="white--text align-end"
                style="border-radius:12px"
                src="https://trilokiainc.com/jkedi.jpeg"
              >
                <div class="ma-5">
                  <!--<v-avatar color="white" size="32" class="mr-2">
                    <v-icon> mdi-google-maps </v-icon>
                  </v-avatar>-->
                  <v-chip color="#F4B400"><v-icon>mdi-google-maps</v-icon>JKEDI,Industrial Estate, Bari Brahmna Jammu-181133, J&K
</v-chip>
                </div>
              </v-img>
           
            </v-col>
            <div class="container px-0 my-9 mb-5 container--fluid"><div class="row my-10 pa-3 mx-1 align-center justify-center" style="background: rgb(248, 248, 248); border-radius: 25px;"><div class="col-md-3 col-md-3 col-12"><p class="google-font gdg-h1 mb-4 grey--text text--darken-2"> What to expect at dev<i>f</i>est Jammu </p></div><div class="col-md-8 col-12"><div class="container px-0 container--fluid"><div class="row"><div class="col-sm-3 col-md-3 col-12"><div class="pa-3" style="border-radius: 12px; background-color: rgb(204, 229, 255);"><p class="mb-0" style="font-size: 25px; font-weight: 300;">
              Learn
                    </p><p class="mb-0">Learn about a range of technical topics from the experts and gain new skills through hands-on workshops, training, events, talks.</p></div></div>
                    <div class="col-sm-3 col-md-3 col-12"><div class="pa-3" style="border-radius: 12px; background-color: rgb(255, 255, 204);"><p class="mb-0" style="font-size: 25px; font-weight: 300;">
              Grow
                    </p><p class="mb-0">Apply knowledge to build great products and advance your skills, career, and network. through internship, mentorship program.</p></div></div><div class="col-sm-3 col-md-3 col-12"><div class="pa-3" style="border-radius: 12px; background-color: rgb(255, 204, 204);"><p class="mb-0" style="font-size: 25px; font-weight: 300;">
              Connect
                    </p><p class="mb-0">Meet developers and technologists, including those with unique backgrounds and from various companies and industries.</p></div></div><div class="col-sm-3 col-md-3 col-12"><div class="pa-3" style="border-radius: 12px; background-color: rgb(204, 255, 229);"><p class="mb-0" style="font-size: 25px; font-weight: 300;">
              Share
                    </p><p class="mb-0">Share your knowledge with the developer community. Speak at events, share best practices, and mentor others.</p></div></div></div></div></div></div></div>
          </v-row>
          
        </v-container>
      </v-col>
    </v-row>
   
  </v-container>
</template>

<script>
export default {
  name: "OverviewHome",
  data: () => ({
    stats: [
      {
        name: "Day",
        value: "01",
      },
      {
        name: "Attendee",
        value: "500+",
      },
      {
        name: "Speakers",
        value: "10+",
      },
      {
        name: "Technologies",
        value: "9+",
      },
    ],
  }),
};
</script>

<style>
</style>