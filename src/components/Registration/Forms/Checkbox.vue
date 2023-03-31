<template>
  <div>
    <div class="google-font" style="font-size:105%;color:black">
      {{label}}
      <span style="color:#ff5252;">*</span>
      <br />
      <span style="font-size:80%;color:black"
        >You can choose more than 1 options</span
      >
    </div>

    <v-checkbox
      class="my-1"
      v-model="field"
      hide-details="false"
      :rules="[rules.checkboxbtn]"
      v-for="(item, index) in options"
      :key="index"
      :label="item"
      :id="item"
      :value="item"
      color="#4285F4"
    ></v-checkbox>
  </div>
</template>

<script>
export default {
  name: "CheckboxComponent",
  props: ["model", "options", "label"],
  data: () => ({
    rules: {
      checkboxbtn: (value) => {
        return value.length > 0 || "At least one item should be selected.";
      },
    },
  }),
  computed: {
    field: {
      get: function() {
        return this.model;
      },
      set: function(value) {
        this.$emit("update:model", value);
      },
    },
  },
};
</script>

<style>
.v-input--selection-controls .v-input__slot > .v-label,
.v-input--selection-controls .v-radio > .v-label {
  color: black;
}
</style>
