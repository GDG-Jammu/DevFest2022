<template>
  <v-main>
    <v-container fluid class="">
      <v-row justify="center" align="center">
        <v-col md="12" sm="12" cols="12" lg="10" class="google-font my-10">
          <v-container fluid>
            <v-row>
              <v-col md="12" class="text-center">
                <p class="google-font gdg-h1 mb-0 grey--text text--darken-2">
                  Sponsors
                </p>
                <p>Sponsors dedicated to building remarkable experience!</p>
                <v-btn
                  depressed
                  rounded
                  color="#4285F4"
                  dark
                  href="mailto:gdgjammu@gmail.com?subject=[Sponsorship] Devfest Jammu"
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
                
                <v-container fluid class="py-0 my-0">
                  <v-row align="center" justify="center" class="">
                    <v-col md="4" class="">
                      <SponsorDialogeVue
                        :item="{
                          img: 'https://www.gstatic.com/devrel-devsite/prod/vdb149cdc08c87ab249cdebfec6395e8f073056d752ca9c2d285d3b8426fcfa32/developers/images/lockup.svg',
                          name: 'Google Developer',
                          desc: `Google Developers is Google's site for software development tools and platforms, application programming interfaces, and technical resources. The site contains documentation on using Google developer tools and APIs—including discussion groups and blogs for developers using Google's developer products.`,
                          link: 'https://developers.google.com',
                        }"
                      />
                    </v-col>
                  </v-row>
                </v-container>

              <!--  <p class="google-font mt-10 mb-n2">Diamond Sponsors</p>
                <v-container fluid>
                  <v-row align="center" justify="center">
                    <v-col md="2">
                      <SponsorDialogeVue
                        :item="{
                          img: 'https://static.wixstatic.com/media/050ffd_6477049b3ce647ecaee5516b717fa411~mv2.png/v1/crop/x_0,y_18,w_750,h_217/fill/w_452,h_130,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/050ffd_6477049b3ce647ecaee5516b717fa411~mv2.png',
                          name: 'Vardiano',
                          desc: `India's #1 online store with Top rated products from top rated global brands on single store at best prices. No need to surf from one website to other.`,
                          link: 'https://www.vardiano.com/',
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
                          link: 'https://getstream.io/chat/sdk/android/?utm_source=DevFest&utm_medium=Whole_Event_L&utm_content=Developer&utm_campaign=DevFest_October2022_AndroidChatSDK_klmh22',
                        }"
                      />
                    </v-col>
                  </v-row>
                </v-container>

                <p class="google-font mt-10 mb-n2">Gold Sponsors</p>
                <v-container fluid>
                  <v-row align="center" justify="center">
                    <v-col md="2">
                      <SponsorDialogeVue
                        :item="{
                          img: 'https://raw.githubusercontent.com/GDG-Jalandhar/WebsiteData/master/partners/jetbrains.png',
                          name: 'JetBrains',
                          desc: `JetBrains is a cutting-edge software vendor specializing in the creation of intelligent development tools, including IntelliJ IDEA`,
                          link: 'https://www.jetbrains.com/',
                        }"
                      />
                    </v-col>
                  </v-row>
                </v-container>

                <p class="google-font mt-10 mb-n2">Silver Sponsors</p>
                <v-container fluid>
                  <v-row align="center" justify="center">
                    <v-col md="2">
                      <SponsorDialogeVue
                        :item="{
                          img: `https://cdn-images-1.medium.com/max/980/1*aHiIJcYQ5jw-tLiUnjN2XQ@2x.png`,
                          name: 'Impulsive Web',
                          desc: `We are an optimistic team of modern thinking, creative designers, hi-tech developers. We believe that only sky is the limit and when it comes to imagination nothing can barred you up.`,
                          link: 'https://www.impulsiveweb.com/',
                        }"
                      />
                    </v-col>
                  </v-row>
                </v-container>


                <p class="google-font mt-10 mb-n2">Hiring Partners</p>
                <v-container fluid>
                  <v-row align="center" justify="center">
                    <v-col md="2">
                      <SponsorDialogeVue
                        :item="{
                          img: 'https://raw.githubusercontent.com/GDG-Jalandhar/WebsiteData/master/partners/Cybertron.jpg',
                          name: 'Cybertron Technologies',
                          desc: `We are a Mobile App and  Website Development Firm based in Mohali, India. We provide programming services to multiple clients throughout the globe. Our team has skills in Angular, React, Node.js, Kotlin, Python, Laravel, Shopify, MySQL/Postgres/MongoDB etc. We are good at Expression Engine, WordPress, CakePHP, Bootstrap, SASS and jQuery. We also develop mobile apps and PWAs in the Ionic/Capacitor framework. In the past, we have worked with clients like Disney, Philips, MIT, Harvard University, American Pharmacists Association and Monash University.`,
                          link: 'https://www.cybertrontechnologies.com/',
                        }"
                      />
                    </v-col>
                    
                  </v-row>
                </v-container>

                <p class="google-font mt-10 mb-n2">Knowledge Partners</p>
                <v-container fluid>
                  <v-row align="center" justify="center">
                    <v-col md="2">
                      <SponsorDialogeVue
                        :item="{
                          img: 'https://raw.githubusercontent.com/GDG-Jalandhar/WebsiteData/master/partners/dcc2.png',
                          name: 'Data Center on Cloud',
                          desc: `Data Center On Cloud is place where you will learn the fundamentals to advance concepts of hosting your application on Public Cloud Platforms.This idea behind this channel is to provide you the guidance to migrate your application which can be Web Apps, Databases, Business Applications, Hybrid Cloud, Multi Cloud etc. There will be special focus on Cloud Certification preparations. DC on Cloud is covering all the major Cloud Platforms available in market. If you are looking to start your learning or planning to appear for Amazon Web Services, Microsoft Azure, Google Cloud Platforms exams, Dc On Cloud is providing the content for the same.`,
                          link: 'https://www.youtube.com/c/DataCenterOnCloud/',
                        }"
                      />
                    </v-col>
                    <v-col md="2">
                      <SponsorDialogeVue
                        :item="{
                          img: 'https://raw.githubusercontent.com/GDG-Jalandhar/WebsiteData/master/partners/pcbt-logo.png',
                          name: 'Pyramid College Of Business & Technology',
                          desc: `Pyramid College offers undergraduate & postgraduate courses in commerce, Business Studies, Computer Applications, Animation & Multimedia, Hotel Management.`,
                          link: 'https://www.pyramidcollege.edu.in/',
                        }"
                      />
                    </v-col>
                  </v-row>
                </v-container>

                <p class="google-font mt-10 mb-n2">Hospitality Partners</p>
                <v-container fluid>
                  <v-row align="center" justify="center">
                    <v-col md="2">
                      <SponsorDialogeVue
                        :item="{
                          img: 'https://hotelcabbana.com/wp-content/uploads/2021/12/Logo-v3.png',
                          name: 'The Cabbana Resort and Spa, Phagwara, Punjab',
                          desc: `The Cabbana resort & spa is a luxury hotel in Jalandhar, Punjab. The resort is located on the outskirts of Jalandhar and offers luxury accommodation.`,
                          link: 'https://hotelcabbana.com/',
                        }"
                      />
                    </v-col>
                   
                  </v-row>
                </v-container>

                <p class="google-font mt-10 mb-n2">Ticketing Partners</p>
                <v-container fluid>
                  <v-row align="center" justify="center">
                    <v-col md="2">
                      <SponsorDialogeVue
                        :item="{
                          img: 'https://allevents.s3.amazonaws.com/media-kit/ae-logo.png',
                          name: 'allevents',
                          desc: `Largest Event Discovery platform helping 10 million people discover events every month!`,
                          link: 'https://allevents.in/',
                        }"
                      />
                    </v-col>
                   
                  </v-row>
                </v-container>-->
              </v-col>
            </v-row>

            <v-row justify="center" align="center" class="my-md-10 my-5">
              <v-col md="12">
                <v-divider></v-divider>
              </v-col>
            </v-row>

            <!-- Community -->
            <v-row class="" align="center" justify="center">
              <v-col md="11" lg="11" class="text-center">
                
                <p class="google-font gdg-h1 mb-0 grey--text text--darken-2">
                  Community Partners
                </p>
              </v-col>
            </v-row>
            <v-row class="pa-0 ma-0" justify="start" align="start">
              <v-col
                lg="3"
                md="3"
                sm="4"
                cols="12"
                class="px-1"
                v-for="(item, index) in pc"
                :key="index"
              >
                <PartnerDialogeVue :item="item" />
              </v-col>
            </v-row>
          </v-container>
        </v-col>
      </v-row>
    </v-container>
  </v-main>
</template>
  
  <script>
import SponsorDialogeVue from "../components/Common/SponsorDialoge.vue";
import partnerData from "../assets/data/partner.json";
import PartnerDialogeVue from "../components/Common/PartnerDialoge.vue";
export default {
  name: "PCComponent",
  components: { PartnerDialogeVue, SponsorDialogeVue },
  data: () => ({
    pc: partnerData,
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
  created() {
    document.title = "Community Partner | DevFest Jammu 2022";
  },
};
</script>
  
  <style scoped></style>
  