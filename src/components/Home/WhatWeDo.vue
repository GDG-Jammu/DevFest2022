<template>
  <v-container fluid>
    <v-row align="center" justify="center">
      <v-col md="6" >
        <v-skeleton-loader class="mx-auto" type="card"></v-skeleton-loader>
      </v-col>
      <v-col md="6" >
        <p class="google-font gdg-h1 mb-0">What we do?</p>

        <v-list three-line class="google-font">
          <v-list-item v-for="(item, index) in whatWedo" :key="index">
            <v-list-item-avatar>
              <v-icon class="blue" dark>mdi-clipboard-text</v-icon>
            </v-list-item-avatar>

            <v-list-item-content>
              <v-list-item-title
                v-html="item.title"
                style="font-size: 25px"
                class="mb-n0"
              ></v-list-item-title>
              <v-list-item-subtitle
                style="font-size: 16px"
                v-html="item.desc"
              ></v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
        </v-list>
        <div></div>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    whatWedo: [
      {
        title: "Sessions",
        desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi ad veritatis architecto ut impedit rerum repudiandae",
      },
      {
        title: "Workshop",
        desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi ad veritatis architecto ut impedit rerum repudiandae consectetur adipisicing elit.",
      },
      {
        title: "Jobs",
        desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi ad veritatis architecto ut impedit rerum repudiandae consectetur adipisicing elit. Excepturi ad veritatis architecto ut",
      },
    ],
  }),
};
</script>

<style>
</style>