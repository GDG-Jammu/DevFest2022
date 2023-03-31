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
                      <v-chip dark color="#4285F4" href="https://developers.google.com/community/gdg" target="_blank"
                        >About Google Developer's Program</v-chip
                      >
                    </v-col>
                    <v-col md="4" order-md="2" order="1" class="text-center">
                      <v-img
                        style="border-radius: 12px"
                        :src="require('@/assets/img/image.gif')"
                      ></v-img>
                     <!--- <p class="mt-4 mb-0">Scan the QR Code to Donate</p>-->
                    </v-col>
                  </v-row>
                  <v-row justify="center" align="center">
                    <v-col md="6" order-md="1" order="1" class="text-center">
                      <v-img
                        style="border-radius: 12px"
                        :src="require('@/assets/img/jk.gif')"
                      ></v-img>
                     <!--- <p class="mt-4 mb-0">Scan the QR Code to Donate</p>-->
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
                  
                  </v-row>
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
    document.title = "Donate | DevFest Jammu 2022";
  },
};
</script>
  
  <style scoped></style>
  