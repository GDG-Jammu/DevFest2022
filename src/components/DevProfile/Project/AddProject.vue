<template>
  <v-dialog v-model="dialog" width="700" scrollable>
    <template v-slot:activator="{ on }">
      <v-btn
        rounded
        color="#4285f4"
        style="text-transform: capitalize"
        depressed
        dark
        small
        v-on="on"
      >
        <v-icon left>mdi-plus</v-icon>
        Add New Project</v-btn
      >
    </template>
    <v-card class="white google-font" v-if="dialog" style="border-radius:12px">
      <v-card-title class="px-md-10 px-5 py-md-5">
        <p class="mb-0" style="font-size:25px;font-weight:550;color:black">
          Project Title Details
        </p>
      </v-card-title>
      <v-card-text class="pa-0">
        <v-container fluid class="pb-8">
          <v-row>
            <v-col md="12" cols="12" class="px-md-10 px-5">
              <p style="color:red">
                Required fields are marked with an asterisk
              </p>
              <v-form ref="form" v-model="valid" lazy-validation>
                <!-- Project Name -->
                <div>
                  <p style="font-size:105%;color:black" class="mb-1">
                    Enter Project Name
                    <span style="color:#ff5252;">*</span>
                  </p>
                  <v-text-field
                    placeholder="Enter Project Name"
                    :counter="20"
                    :rules="nameRules"
                    v-model="projectData.name"
                    outlined
                  ></v-text-field>
                </div>
                <!-- Project Name -->

                <!-- Project Description -->
                <div>
                  <p style="font-size:105%;color:black" class="mb-1">
                    Enter Project Description
                    <span style="color:#ff5252;">*</span>
                  </p>
                  <v-textarea
                    outlined
                    name="input-7-4"
                    :counter="300"
                    :rules="descRules"
                    v-model="projectData.desc"
                  ></v-textarea>
                </div>
                <!-- Project Descritpion -->

                <!-- Project Technologies -->
                <div>
                  <p style="font-size:105%;color:black" class="mb-1">
                    Technologies/Programming Language Used:
                    <span style="color:#ff5252;">*</span><br />
                    <span style="font-size:95%;color:black"
                      >Example: Mention HTML and then press Enter</span
                    >
                  </p>
                  <v-combobox
                    v-model="projectData.technologies"
                    multiple
                    outlined
                    clearable
                    :rules="technologiesRules"
                  >
                    <template
                      v-slot:selection="{ attrs, item, select, selected }"
                    >
                      <v-chip
                        v-bind="attrs"
                        :input-value="selected"
                        close
                        @click="select"
                        @click:close="remove(item)"
                      >
                        <strong class="google-font">{{ item }}</strong>
                      </v-chip>
                    </template>
                  </v-combobox>
                </div>
                <!-- Project Technologies -->

                <!-- GitHub URL -->
                <div>
                  <p style="font-size:105%;color:black" class="mb-1">
                    GitHub URL
                  </p>
                </div>
                <v-text-field
                  placeholder="Enter GitHub Repo URL"
                  outlined
                  v-model="projectData.github"
                ></v-text-field>
                <!-- GitHub URL -->

                <!-- Live Demo Link -->
                <div>
                  <p style="font-size:105%;color:black" class="mb-1">
                    Live Demo URL
                  </p>
                  <v-text-field
                    placeholder="Enter Live Demo URL"
                    outlined
                    v-model="projectData.demo"
                  ></v-text-field>
                </div>
                <!-- Live Demo Link -->
              </v-form>
            </v-col>
          </v-row>
        </v-container>
      </v-card-text>

      <v-card-actions class="white">
        <v-spacer></v-spacer>

        <v-btn aria-label="close" class="px-10" text @click="dialog = false"
          >Close</v-btn
        >
        <v-btn
          color="#4285f4"
          depressed
          rounded
          dark
          :loading="loader"
          class="mr-4"
          @click="addProject"
        >
          Add Project
        </v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script>
import ProjectService from "@/services/DevProfileProjectServices";
import FDK from "@/Config/firebase";
export default {
  name: "AddProjectComponent",
  props:['userInfo'],
  data: () => ({
    dialog: false,
    loader: false,
    valid: true,
    projectData: {
      name: "",
      desc: "",
      technologies: ["HTML"],
      github: "",
      demo: "",
    },
    nameRules: [
      (v) => !!v || "Name is required",
      (v) => (v && v.length <= 20) || "Name must be less than 20 characters",
    ],
    descRules: [
      (v) => !!v || "Project Description is required",
      (v) =>
        (v && v.length <= 200) ||
        "Project Description must be less than 200 characters",
    ],
    technologiesRules: [
      (v) => !!v || "Technical Stack is required",
      (v) => (v && v.length >= 1) || "Technical Stack must be greater than 1",
    ],
  }),
  methods: {
    remove(item) {
      this.projectData.technologies.splice(
        this.projectData.technologies.indexOf(item),
        1
      );
      this.projectData.technologies = [...this.projectData.technologies];
    },
    async addProject() {
      this.loader = true;
      if (this.$refs.form.validate()) {
        // Logic for Adding data
        let user = FDK.auth.currentUser;
        if (user != null) {
          try {
            let res = await ProjectService.AddNewProject(
              user.uid,
              this.projectData,
              this.userInfo.status
            );
            if (res.success) {
              this.$emit("projectAdded");
              this.loader = false;
              this.dialog = false;
              this.projectData = {};
            }
          } catch (error) {
            console.log(error)
            this.$emit("errorInProjectAddition", error);
            this.loader = false;
            this.dialog = false;
          }
        }
      } else {
        alert("Please fill the required fields before submitting the form :)");
        this.loader = false;
      }
    },
  },
};
</script>
