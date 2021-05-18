<template>
    <div>  <!-- v-show='error_alert' -->
        <div class="container">
            <div class="row">
                <app-notify-alert :content="alert.content" :color="alert.color" v-model="alert.check"></app-notify-alert>
                <form class="col-md-offset-3 col-md-6" @submit.prevent='register'>
                    <h3 class="text-center font-weight-bold">Register</h3>
                    <v-text-field
                      v-model="data.first_name"
                      v-validate="'required|min:3|max:20'"
                      id="first_name"
                      :error-messages="errors.collect('First Name')"
                      label="First Name"
                      data-vv-name="First Name"
                      :disabled="isDisabled"
                    ></v-text-field>
                    <v-text-field
                      v-model="data.last_name"
                      v-validate="'required|min:3|max:20'"
                      id="last_name"
                      :error-messages="errors.collect('Last Name')"
                      label="Last Name"
                      data-vv-name="Last Name"
                      :disabled="isDisabled"
                    ></v-text-field>
                    <v-text-field
                      v-model="data.email"
                      v-validate="'required|email'"
                      id="email"
                      :error-messages="errors.collect('email')"
                      label="Email"
                      data-vv-name="email"
                      :disabled="isDisabled"
                    ></v-text-field>
                    <v-text-field
                        v-model="data.password"
                        v-validate="'required|min:6'"
                        id="password"
                        :disabled="isDisabled"
                        data-vv-name="password"
                        label="Password"
                        :type="showPass ? 'text' : 'password'"
                        :error-messages="errors.collect('password')"
                        class="input-group--focused"
                        @click:append="showPass = !showPass"
                        ref="password"
                        :append-icon="showPass ? 'fa fa-eye' : 'fa fa-eye-slash'"
                    ></v-text-field> 
                    <v-text-field
                        v-model="data.password_confirmation"
                        v-validate="'required|min:6|confirmed:password'"
                        id="password_confirmation"
                        :append-icon="showConfirmPass ? 'fa fa-eye' : 'fa fa-eye-slash'"
                        :type="showConfirmPass ? 'text' : 'password'"
                        :error-messages="errors.collect('re-password')"
                        :class="{'danger': errors.has('password_confirmation') }"
                        data-vv-as="password"
                        data-vv-name="re-password"
                        label="Password Confirmation"
                        class="input-group--focused"
                        @click:append="showConfirmPass = !showConfirmPass"
                        :disabled="isDisabled"
                    ></v-text-field>
                    <center><v-btn class="mr-4" type="submit" :disabled="isDisabled">submit</v-btn></center>
                </form>
            </div>    
        </div>
  </div>
</template>

<script>

export default {
data () {
    return {
        data: {},
        alert: {},
        showPass: false,
        isDisabled: false,
        showConfirmPass: false,
        serverErrors: {}
    }    
},

methods: {
    register() {
    this.$validator.validateAll().then((result) => {
        // if result is true reurn this
        if (result) { 
            axios.post('api/auth/register', this.data)
                .then(res => {
                    this.isDisabled = true // disable All Inputs
                    $('input').removeClass('danger') // remove danger class from inputs

                    //fire alert
                    this.alert = {
                        content: "You've Registerd Successfuly",
                        color: "success",
                        check: true
                    }
                    setTimeout( () => this.$router.push('/login'), 2000) // redirect to login page

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
            } 
       })    
    },
},
created() {
    this.data = {}
}

}
</script>

<style scoped>
.container {
    margin-top: 50px
}
form {
    background: rgb(255, 255, 255);
    padding: 30px;
    border-radius: 5px;
}
</style>
