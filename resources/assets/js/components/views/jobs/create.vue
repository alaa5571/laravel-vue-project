<template>
  <div>
    <app-notify-alert
      :content="alert.content"
      :color="alert.color"
      v-model="alert.check"
    ></app-notify-alert>
    <div class="container m-t-65 recrutier">
      <!-- Error Message -->

      <div class="row margin-top">
        <div class="col-xs-12">
          <div class="sub sub-l sub-xs-t">
            <div class="row">
              <form
                @submit.prevent="createJob"
                class="col-md-6 col-md-offset-3"
              >
                <h3 class="text-center font-weight-bold">Create New Job</h3>
                <v-text-field
                  v-model="data.name"
                  v-validate="'required|min:2|max:40'"
                  id="name"
                  :error-messages="errors.collect('name')"
                  label="Name"
                  data-vv-name="name"
                  :disabled="isDisabled"
                ></v-text-field>
                <v-text-field
                  v-model="data.title"
                  v-validate="'required|min:10|max:150'"
                  id="title"
                  :error-messages="errors.collect('title')"
                  label="Title"
                  data-vv-name="title"
                  :disabled="isDisabled"
                ></v-text-field>
                <v-textarea
                  v-model="data.description"
                  id="description"
                  counter
                  :auto-grow="true"
                  :clearable="true"
                  v-validate="'required|min:50|max:1000'"
                  :error-messages="errors.collect('description')"
                  data-vv-name="description"
                  label="Job Description"
                  :disabled="isDisabled"
                ></v-textarea>
                <v-text-field
                  v-model="data.address"
                  v-validate="'required|min:10|max:200'"
                  id="address"
                  :error-messages="errors.collect('address')"
                  label="Job Address"
                  data-vv-name="address"
                  :disabled="isDisabled"
                ></v-text-field>
                <v-select
                  v-model="data.experience"
                  v-validate="'required'"
                  :items="experience"
                  label="Experience"
                  :error-messages="errors.collect('experience')"
                  data-vv-name="experience"
                  :disabled="isDisabled"
                ></v-select>
                <v-text-field
                  v-model="data.education"
                  v-validate="'required|min:10|max:200'"
                  id="education"
                  :error-messages="errors.collect('education')"
                  label="Education"
                  data-vv-name="education"
                  :disabled="isDisabled"
                ></v-text-field>
                <v-select
                  v-model="data.country"
                  v-validate="'required'"
                  :items="countries"
                  item-text="name"
                  item-value="name"
                  label="Job Country"
                  :error-messages="errors.collect('country')"
                  data-vv-name="country"
                  :disabled="isDisabled"
                ></v-select>
                <v-select
                  v-model="data.skills"
                  v-validate="'required'"
                  :items="allSkills"
                  item-text="name"
                  item-value="id"
                  label="Job Skills"
                  :error-messages="errors.collect('skills')"
                  data-vv-name="skills"
                  multiple
                  chips
                  deletable-chips
                  required
                  :disabled="isDisabled"
                ></v-select>
                <v-text-field
                  v-model="data.company_name"
                  v-validate="'required|min:2|max:200'"
                  id="company_name"
                  :error-messages="errors.collect('company_name')"
                  label="Company Name"
                  data-vv-name="company_name"
                  :disabled="isDisabled"
                ></v-text-field>
                <v-textarea
                  v-model="data.about_company"
                  id="about_company"
                  counter
                  :auto-grow="true"
                  :clearable="true"
                  v-validate="'required|min:50|max:1000'"
                  :error-messages="errors.collect('about_company')"
                  data-vv-name="about_company"
                  label="About Company"
                  :disabled="isDisabled"
                ></v-textarea>
                <v-text-field
                  v-model="data.salary"
                  type="number"
                  v-validate="'required'"
                  id="salary"
                  :error-messages="errors.collect('salary')"
                  label="Salary In Dollars"
                  data-vv-name="salary"
                  :disabled="isDisabled"
                ></v-text-field>
                <v-select
                  v-model="data.job_type"
                  v-validate="'required'"
                  :items="['Full Time', 'Hours']"
                  label="Job Type"
                  :error-messages="errors.collect('job_type')"
                  data-vv-name="job_type"
                  :disabled="isDisabled"
                ></v-select>
                <div class="form-group">
                  <label>Company Logo</label>
                  <input
                    :class="{ danger: errors.has('logo') }"
                    name="logo"
                    v-validate="''"
                    class="form-control"
                    type="file"
                    @change="fileChange"
                  />
                  <span class="danger">{{ errors.first("logo") }}</span>
                </div>
                <v-switch
                  v-model="data.availability"
                  label="Availabalitiy"
                  :false-value="0"
                  :true-value="1"
                ></v-switch>
                <center>
                  <v-btn
                    class="mr-4 btn btn-success success"
                    type="submit"
                    :disabled="isDisabled"
                    >Create</v-btn
                  >
                </center>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      countries: [],
      allSkills: [],
      data: {},
      alert: {},
      isDisabled: false,
      experience: ["0-1", "1-2", "2-5", "2-7", "3-8", "5-8", "5-10"]
    };
  },

  methods: {
    getData() {
      axios.get("/api/job/create").then(res => {
        this.countries = res.data.countries;
        this.allSkills = res.data.skills;
      });
    },

    fileChange(e) {
      this.data.logo = e.target.files[0];
    },

    createJob() {
      /* validate data */
      this.$validator
        .validateAll()
        .then(result => {
          if (result) {
            this.isDisabled = true; // disable All Inputs
            $("input").removeClass("danger"); // remove danger class from inputs

            //fire alert
            this.alert = {
              content: "Job Have Created Successfuly",
              color: "success",
              check: true
            };
            setTimeout(() => (this.isDisabled = false), 2000); // active All Inputs

            var formData = new FormData();
            Object.keys(this.data).forEach(key => {
              formData.append(key, this.data[key]);
            });

            axios.post("/api/job/process", formData, {
              headers: {
                "Content-Type": "multipart/form-data"
              }
            });
            // this.resetData()
          } else {
            //fire alert
            this.alert = {
              content: "Fix Errors And Try Again",
              color: "error",
              check: true
            };
          }
        })
        .catch(({ response }) => {
          this.isDisabled = true; // disable All Inputs
          $("input").removeClass("danger"); // remove danger class from inputs
          let { errors } = response.data; // get to errors obj from response.data

          // push key , value into serverErrors obj
          Object.entries(errors).map(([key, value]) => {
            return (this.serverErrors[key] = value[0]);
          });

          // check if serverErrors has this key add danger class
          Object.keys(this.serverErrors).map(key => {
            if (Object.keys(this.serverErrors).includes(key)) {
              $("#" + key).addClass("danger");
            }
          });
          this.serverErrors = {}; // empty serverErrors obj
          setTimeout(() => (this.isDisabled = false), 5000); // retrive active inputs after 5s

          // fire alert
          this.alert = {
            content: errors,
            color: "error",
            check: true
          };
        });
    },

    resetData() {
      this.data = {};
    }
  },

  created() {
    this.resetData();
    this.getData();
  }
};
</script>

<style scoped>
@media screen and (max-width: 756px) {
  .submit {
    float: left !important;
  }
}
</style>
