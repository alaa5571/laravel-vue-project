<template>
  <div>
       <app-notify-alert :content="alert.content" :color="alert.color" v-model="alert.check"></app-notify-alert>
       <div class="container">
        <div class="row"  style="background:#fff">
          <div class="col-xs-8 col-xs-offset-2" >
              <div class="card">
                  <div class="card-body">
                      <div class="row">
                           <form class="col-md-offset-2 col-md-8" @submit.prevent='updateData'>
                              <h3 class="text-center font-weight-bold">Edit Profile</h3>
                              <v-text-field
                                v-model="data.first_name"
                                v-validate="'required|min:3|max:20'"
                                id="first_name"
                                :error-messages="errors.collect('First Name')"
                                label="First Name"
                                data-vv-name="First Name"
                                :disabled="isDisabled" solo
                              ></v-text-field>      
                              <v-text-field
                                v-model="data.last_name"
                                v-validate="'required|min:3|max:20'"
                                id="last_name"
                                :error-messages="errors.collect('last_name')"
                                label="Last Name"
                                data-vv-name="last_name"
                                :disabled="isDisabled" solo
                              ></v-text-field>      
                              <v-text-field
                                v-model="data.email"
                                v-validate="'required|email'"
                                id="email"
                                :error-messages="errors.collect('email')"
                                label="Email"
                                data-vv-name="email"
                                :disabled="isDisabled" solo
                              ></v-text-field>
                              <v-text-field
                                v-model="data.phone"
                                v-validate="'required'"
                                id="phone"
                                :error-messages="errors.collect('phone')"
                                label="Phone"
                                data-vv-name="phone"
                                :disabled="isDisabled" solo
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
                                :disabled="isDisabled" solo
                              ></v-select> 
                              <v-text-field
                                v-model="data.job"
                                v-validate="'required'"
                                id="job"
                                :error-messages="errors.collect('job')"
                                label="Job"
                                data-vv-name="job"
                                :disabled="isDisabled" solo
                              ></v-text-field>      
                              <v-select
                                v-model="data.skills"
                                v-validate="'required'"
                                :items="skills"
                                item-text="name"
                                item-value="id"
                                label="Job Skills"
                                :error-messages="errors.collect('skills')"
                                data-vv-name="skills"
                                multiple
                                chips
                                deletable-chips
                                required
                                :disabled="isDisabled" solo
                              ></v-select>   
                              <v-textarea
                                v-model='data.about'
                                id="about"
                                counter
                                :auto-grow="true"
                                :clearable="true"
                                v-validate="'required|min:50|max:1000'"
                                :error-messages="errors.collect('about')"
                                data-vv-name="about"
                                label="Public Info"
                                :disabled="isDisabled" solo
                              ></v-textarea>    
                              <div class="form-group">
                                  <label>Profile Picture</label>
                                  <input :class="{'danger': errors.has('avatar') }"  name="avatar" v-validate="'mimes:image/jpeg,image/png,image/jpg'" class="form-control profile-picture" type="file" @change='fileChange' :disabled="isDisabled">
                                  <span class="danger">{{ errors.first('avatar') }}</span>
                              </div>
                              <v-radio-group id="gender" v-model="data.gender" :mandatory="false">
                                <v-radio label="Male" value="male"></v-radio>
                                <v-radio label="Female" value="female"></v-radio>
                              </v-radio-group>    
                              <v-text-field
                                  v-model="data.confirm_password"
                                  v-validate="'required|min:6'"
                                  id="confirm_password"
                                  :disabled="isDisabled" solo
                                  data-vv-name="confirm_password"
                                  label="Password"
                                  :type="showPass ? 'text' : 'password'"
                                  :error-messages="errors.collect('confirm_password')"
                                  class="input-group--focused"
                                  @click:append="showPass = !showPass"
                                  ref="confirm_password"
                                  :append-icon="showPass ? 'fa fa-eye' : 'fa fa-eye-slash'"
                              ></v-text-field>   
                              <center><v-btn class="mr-4 success" type="submit" :disabled="isDisabled" solo>update</v-btn></center>
                            </form>
                          </div>
                      </div>
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
               countries : [],
               skills    : [],
               data      : {},
               alert: {},
               showPass: false,
               isDisabled: false,
               serverErrors: {}
            }
        },

        computed: {
          id() {
              return this.$route.params.id
          }  
        },

        methods: {
          getData(){
               axios.get('/api/profile/edit').then(res => { 
                this.data        = res.data.user
                this.countries   = res.data.countries
                this.skills      = res.data.skills
                this.data.skills = this.data.skills.map(({ id }) => id)
               })  
          },

          fileChange(e) {
            this.data.avatar = e.target.files[0]
          },

           updateData() {
            // return console.log(this.data.skills)
             this.$validator.validateAll().then((result) => {
                if (result) {

                  var formData = new FormData()
                  Object.keys(this.data).forEach(key => {
                    formData.append(key, this.data[key])
                  })

                  axios.post('/api/profile/update', formData, {
                      headers: {
                        'Content-Type': 'multipart/form-data'
                      }
                  }).then(res => {
                    this.isDisabled = true
                    this.$store.dispatch('userDataAction')
                    //fire alert
                    this.alert = {
                        content: res.data,
                        color: "success",
                        check: true
                    }
                    setTimeout(() => this.isDisabled = false, 5000);  
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

                    // fire alert
                    this.alert = {
                        content: errors,
                        color: "error",
                        check: true
                    }
                    setTimeout( () => this.isDisabled = false, 5000) // retrive active inputs after 5s
                  }) 
                } else {
                   // fire alert
                    this.alert = {
                        content: errors,
                        color: "error",
                        check: true
                    }
                }
              })     
           }
    
        },

        created() {
            this.getData();
        }
    }
</script>

<style>
.profile-picture {
  box-shadow: 
    0 3px 1px -2px rgba(0,0,0,.2),
    0 2px 2px 0 rgba(0,0,0,.14),
    0 1px 5px 0 rgba(0,0,0,.12);
}
.v-text-field.v-text-field--solo:not(.v-text-field--solo-flat)>.v-input__control>.v-input__slot {
  border: 1px solid #ddd !important;
}
</style>