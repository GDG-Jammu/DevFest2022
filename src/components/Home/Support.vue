<template>
  <v-container fluid id="support">
    <v-row justify="center" align="center"> 
      <v-col
        cols="12"
        md="8"
        class="grey lighten-4 pa-8"
        style="border-radius: 12px"
      >
        <v-container fluid>
          <v-row justify="center" align="center">
            <v-col md="7">
              <p
                
                class="google-font gdg-h1 mb-0 grey--text text--darken-2"
              >
                About JKEDI
              </p>
              <p>
                JKEDI has been established by the Government of Jammu and Kashmir to effectively enable entrepreneurship development. The institute  positioned itself as a learning centre par excellence with state of the art regional centers across Jammu, Kashmir and Ladakh.
              </p>
              <!---<p>With the vision of empowering our youth with Entrepreneurship & Digital skills, GDG Jammu is collaborate with JKEDI for helping our local startups and developers in building solutions for our society </p>-->
              
              <!--<v-chip dark color="#4285F4">Know more</v-chip>-->
            </v-col>
           <v-col md="5" class="text-center">
                <v-img style="border-radius:12px" :src="require('@/assets/img/jkedi2.jpg')"></v-img>
                <a href="http://jkedi.org/" target="_blank" class="v-btn v-btn--outlined v-btn--rounded theme--light v-size--default mt-4 mb-0"><span class="v-btn__content">More Info</span></a>
                <!--<p class="mt-4 mb-0"><a href="http://jkedi.org/">Official website</a></p>-->
            </v-col>
          </v-row>
        </v-container>
      </v-col>
      <v-col
        cols="12"
        md="4"
    
        style="border-radius: 12px">
        <v-img style="border-radius:12px" :src="require('@/assets/img/jk.gif')"></v-img>
    </v-col>
    </v-row>
  </v-container>
</template>
  
  <script>
export default {};
</script>
  
  <style>
</style>