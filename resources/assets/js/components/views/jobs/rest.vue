<template>
  <div>
    <app-notify-alert :content="alert.content" :color="alert.color" v-model="alert.check"></app-notify-alert>
    <div class="container m-t-65 recrutier">
                         <!-- Error Message -->

            <div class="row margin-top">
                <div class="col-xs-12">
                    <div class="sub sub-l sub-xs-t">
                        <div class="row">
                            <form @submit.prevent='createJob' class="col-md-6 col-md-offset-3">
                                <h3 class="text-center font-weight-bold">Create New Job</h3>
                                <v-text-field
                                  v-model="data.name"
                                  v-validate="'required|min:2|max:40'"
                                  id="name"
                                  :error-messages="errors.collect('name')"
                                  label="Name"
                                  data-vv-name="Name"
                                  :disabled="isDisabled"
                                ></v-text-field>
                                <v-text-field
                                  v-model="data.name"
                                  v-validate="'required|min:2|max:40'"
                                  id="name"
                                  :error-messages="errors.collect('name')"
                                  label="Name"
                                  data-vv-name="Name"
                                  :disabled="isDisabled"
                                ></v-text-field>

                                    <div class="form-group">
                                        <label for="name">Job Name</label>
                                        <input v-validate="'required'" :class="{'danger': errors.has('name') }"  type="text"  class="form-control" id="name" name="name" placeholder="Job Name" v-model='data.name'>
                                        <span class="danger">{{ errors.first('name') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="title">Job Title</label>
                                        <input name="title" v-validate="'required'" :class="{'danger': errors.has('title') }" type="text"  class="form-control" id="title" placeholder="Job Title" v-model='data.title'>
                                        <span class="danger">{{ errors.first('title') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="description">Job Description</label>
                                        <textarea name="description" v-validate="'required'" :class="{'danger': errors.has('description') }"  class="form-control" type="textarea" id="description" placeholder="Job Description ... " maxlength="140" rows="7"  v-model='data.description'></textarea>
                                        <span class="danger">{{ errors.first('description') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="address">Job Address</label>
                                        <input name="address" v-validate="'required'" :class="{'danger': errors.has('address')}" type="text"  class="form-control" id="address" placeholder="Job Address"  v-model='data.address'>
                                        <span class="danger">{{ errors.first('address') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <div>
                                           <label for="Experience">Experience</label>
                                           <el-select id='Experience' v-validate="'required'" :class="{'danger':errors.has('experience') }" ref='experience' name='experience' style='width: 100%' v-model="data.experience"  placeholder="Select">
                                                <el-option
                                                    v-for="years in experience"
                                                    :key="years"
                                                    :value="years">
                                                </el-option>
                                            </el-select>
                                            <span class="danger">{{ errors.first('experience') }}</span>  
                                        </div>
                                    </div>

                                   
                                    <div class="form-group">
                                        <label for="education">education</label>
                                        <input name="education" v-validate="'required'" :class="{'danger': errors.has('education') }" type="text"  class="form-control" id="education"  v-model='data.education' placeholder="what is the education that you need..">
                                        <span class="danger">{{ errors.first('education') }}</span>
                                    </div>

                                    <div class="form-group">
                                       <label for="Country">Job Country</label>
                                       <el-select id='Country'  style='width: 100%' name='country' v-model="data.country" ref='country' placeholder="Select" filterable v-validate="'required'" :class="{'danger': errors.has('country') }">
                                            <el-option
                                                v-for="country in countries"
                                                :key="country.id"
                                                :label="country.name"
                                                :value="country.name"
                                            >
                                            </el-option>
                                        </el-select>
                                        <span class="danger">{{ errors.first('country') }}</span>
                                    </div>
                                    
                                    <div class="form-group">
                                       <label for="skills">Job Skills</label>
                                       <el-select id='skills' style='width: 100%' name='skills' v-model="data.skills" placeholder="Select" filterable v-validate="'required'" multiple ref='skills' :class="{'danger': errors.has('skills') }">
                                            <el-option
                                                v-for="skill in skills"
                                                :key="skill.id"
                                                :label="skill.name"
                                                :value="skill.id"
                                            >
                                            </el-option>
                                        </el-select>
                                        <span class="danger">{{ errors.first('skills') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="company_name">Company Name</label>
                                        <input name="company_name" v-validate="'required'" :class="{'danger': errors.has('company_name') }" type="text"  class="form-control" id="company_name" v-model='data.company_name' placeholder="Company Name">
                                        <span class="danger">{{ errors.first('company_name') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="about_company">About Company</label>
                                        <input name="about_company" v-validate="'required'" :class="{'danger': errors.has('about_company') }" type="text"  class="form-control" id="about_company" v-model='data.about_company' placeholder="write something about your country">
                                        <span class="danger">{{ errors.first('about_company') }}</span>
                                    </div>
      
                                    <div class="form-group">
                                        <label>Company Logo</label>
                                        <input :class="{'danger': errors.has('logo') }"  name="logo" v-validate="'required|mimes:image/jpeg,image/png,image/jpg'" class="form-control" type="file" @change='fileChange'>
                                        <span class="danger">{{ errors.first('logo') }}</span>
                                    </div>

                                    <div class="form-group" style="width: 100%">
                                        <label for="salary">Salary In Dollars</label>
                                        <input name="salary" v-validate="'required|numeric'" :class="{'danger': errors.has('salary') }" type="text"  class="form-control" id="salary" v-model='data.salary' placeholder="Salary">
                                        <span class="danger">{{ errors.first('salary') }}</span>
                                    </div>

                                     <div class="form-group">
                                        <label for="">Job Type</label>
                                        <select :class="{'danger': errors.has('job_type') }" name="job_type" v-validate="'required'"   class="form-control" id=""  v-model='data.job_type'>
                                           <option disabled>Please select the job_type</option>
                                           <option value="full_time">Full Time</option>
                                           <option value="hours">Hours</option>
                                        </select>
                                        <span class="danger">{{ errors.first('job_type') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <p><b>Availabalitiy</b></p>
                                        <input type="radio" id="Yes" v-model='data.availability' value='1' checked>
                                        <label for="Yes">Yes</label>
                                        <input type="radio" id="No" v-model='data.availability' value="0" style="margin-left: 30px">
                                        <label for="No">No</label>
                                    </div>


                                   <button type="submit" id="submit" class="submit btn btn-primary pull-right">Create</button>
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
               skills: [],
               data: {
                 skills: []
               },
               error_alert: false,
               success_alert: false,
               alert: {},
               isDisabled: false,
               experience: ['0-1', '1-2', '2-5', '2-7', '3-8', '5-8','5-10'],
            }
        },

        methods: {
           getData(){
               axios.get('/api/job/create').then(res => { 
                this.countries = res.data.countries
                this.skills    = res.data.skills
               })  
            },

            fileChange(e) {
                this.data.logo = e.target.files[0]
             },

            createJob(){

                    /* validate data */
                    this.$validator.validateAll().then((result) => {
                        if (result) {
                            this.isDisabled = true // disable All Inputs
                            $('input').removeClass('danger') // remove danger class from inputs

                            //fire alert
                            this.alert = {
                                content: "Job Have Created Successfuly",
                                color: "success",
                                check: true
                            }
                            setTimeout( () => this.isDisabled = false, 2000) // active All Inputs




                        var formData = new FormData()
                        Object.keys(this.data).forEach(key => {
                          formData.append(key, this.data[key])
                        })

                        axios.post('/api/job/process', formData, {
                            headers: {
                              'Content-Type': 'multipart/form-data'
                            }
                        })

                        this.resetData()
                        this.success_alert = true
                        $("#success-alert").fadeIn(1000).fadeOut(10000)   
                    } else {
                        this.error_alert = true
                        $("#error-alert").fadeIn(1000).fadeOut(7000)   
                    }
                 }).catch(({ response }) => {
                    this.isDisabled = true // disable All Inputs
                    $('input').removeClass('danger') // remove danger class from inputs
                    let { errors } = response.data // get to errors obj from response.data

                    // push key , value into serverErrors obj
                    Object.entries(errors).map(([key, value]) => {
                        return this.serverErrors[key] = value[0]
                    })
                    
                    // check if serverErrors has this key add danger class
                    Object.keys(this.serverErrors).map(key => {
                        if (Object.keys(this.serverErrors).includes(key)) {
                            $('#'+key).addClass("danger")
                        }
                    })
                    this.serverErrors = {} // empty serverErrors obj
                    setTimeout( () => this.isDisabled = false, 5000) // retrive active inputs after 5s

                    // fire alert
                    this.alert = {
                        content: errors,
                        color: "error",
                        check: true
                    }
                }) 
            },

            resetData() {
                this.data = {
                    skills : [],
                    availability: 1,
                }

        },
    
        },

        

        created() {
            this.resetData();
            this.getData();

        }
    }
</script>

<style scoped>
@media screen and (max-width: 756px) {
  .submit{
    float: left !important;
  }
}
</style>