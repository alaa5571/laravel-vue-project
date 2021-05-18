<template>
  <div>
    <!-- v-show='error_alert' -->
    <div class="container">
      <div class="row">
        <app-notify-alert
          :content="alert.content"
          :color="alert.color"
          v-model="alert.check"
        ></app-notify-alert>
        <form class="col-md-offset-3 col-md-6" @submit.prevent="login">
          <h3 class="text-center font-weight-bold">Log In</h3>
          <v-text-field
            v-model="email"
            v-validate="'required|email'"
            :error-messages="errors.collect('email')"
            label="Email"
            data-vv-name="email"
            :disabled="isDisabled"
          ></v-text-field>
          <v-text-field
            :append-icon="showPass ? 'fa fa-eye' : 'fa fa-eye-slash'"
            v-validate="'required'"
            :type="showPass ? 'text' : 'password'"
            :error-messages="errors.collect('password')"
            data-vv-name="password"
            label="Password"
            v-model="password"
            class="input-group--focused"
            @click:append="showPass = !showPass"
            :disabled="isDisabled"
          ></v-text-field>
          <center>
            <v-btn class="mr-4" type="submit" :disabled="isDisabled"
              >submit</v-btn
            >
          </center>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      email: "",
      password: "",
      showPass: false,
      isDisabled: false,
      alert: {}
    };
  },
  methods: {
    login() {
      let data = {
        client_id: 1,
        client_secret: "5TV0RLOSAEY8RaoqKN64QTDILnvbpqpkzhqsig43",
        grant_type: "password",
        username: this.email,
        password: this.password
      };
      this.$validator.validateAll().then(result => {
        if (result) {
          axios
            .post("/oauth/token", data)
            .then(res => {
              this.isDisabled = true; // disable All Inputs
              $("input").removeClass("danger"); // remove danger class from inputs

              //fire alert
              this.alert = {
                content: "You've Logged In Successfuly",
                color: "success",
                check: true
              };
              this.$auth.setToken(
                res.data.access_token,
                res.data.expires_in + Date.now()
              );
              this.$store.dispatch("userDataAction");
              setTimeout(() => this.$router.push("/home"), 2000); // redirect to login page
              setTimeout(() => this.$store.dispatch("checkAction"), 2000); // make user logged in within 2s
            })
            .catch(({ response }) => {
              this.isDisabled = true; // disable All Inputs
              $("input").removeClass("danger"); // remove danger class from inputs
              $("input").addClass("danger");
              // fire alert
              this.alert = {
                content: "email and password aren't matched",
                color: "error",
                check: true
              };
              setTimeout(() => (this.isDisabled = false), 5000); // redirect to login page
            });
        }
      });
    }
  }
};
</script>

<style scoped>
.container {
  margin-top: 50px;
}

form {
  background: rgb(255, 255, 255);
  padding: 30px;
  border-radius: 5px;
}
</style>
