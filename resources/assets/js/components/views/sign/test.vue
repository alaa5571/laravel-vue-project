<template>
  <div class="container-fluid py-3 auth-container register-container">
    <div class="row">
      <div class="container box-shadow bg-white pt-5 position-relative">
        <div class="row py-5 contentt-container">
          <div class="col-sm-12 col-md-6 offset-md-6 form-wrapper">
            <div>
              <div class="auth-logo-container">
                <img src="~assets/images/logo-full.png" width="150px">
              </div>
              <h4 class="text-center mb-3 font-weight-bold text-dark">Sign up to CoursesHub</h4>
              <div class="text-center">
                <el-tabs v-model="activeIndex" class="d-inline-block">
                  <el-tab-pane>
                    <span slot="label">
                      <div class="px-4">
                        <span class="font-weight-bold">Customer</span>
                      </div>
                    </span>
                  </el-tab-pane>
                  <el-tab-pane>
                    <span slot="label">
                      <div class="px-4">
                        <span class="font-weight-bold">Provider</span>
                      </div>
                    </span>
                  </el-tab-pane>
                </el-tabs>
              </div>
              <app-form v-bind="formOptions" class="px-4">
                <template slot="field-message">
                  <div class="small">
                    <span>Already have an account ? <router-link to="/login">Login</router-link> here</span>
                  </div>
                </template>
              </app-form>
              <div class="px-4 mt-5">
                <SocialiteAuthService />
              </div>
            </div>
          </div>
          <div class="col-6 py-5 message-wrapper d-none d-md-block">
            <div class="py-5">
              <h4 class="text-center mb-5 font-weight-bold text-dark text-uppercase">welcome to CoursesHub</h4>
              <div class="row justify-content-center">
                <div class="text-center col-8">
                  login with your personal details and start learning with us!
                </div>
                <div class="col-12 text-center pt-5">
                  <app-animated-btn to="/login" color="gray-dark" animation="left-to-right">Login</app-animated-btn>
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
import SocialiteAuthService from '@@/components/pages/auth/socialite-auth-service'
export default {
  auth: false,
  middleware: 'guest',
  data: () => ({
    activeIndex: 0
  }),
  computed: {
    formOptions () {
      return {
        clearAfterSubmit: false,
        url: 'api/auth/register',
        fields: this.fields,
        submitBtn: {
          class: 'w-100',
          text: 'Register'
        }
      }
    },
    registerAsCustomer () {
      return Number(this.activeIndex) === 0
    },
    fields () {
      let customerRoles = [
        { label: 'On Site Trainning', value: 3 },
        { label: 'Individual', value: 4 }
      ]

      let providerRoles = [
        { label: 'Instructor', value: 2 },
        { label: 'Trainning Center', value: 3 }
      ]

      let roles = this.registerAsCustomer ? customerRoles : providerRoles

      return [
        {
          key: 'first_name',
          rules: 'required|max:100',
          placeholder: 'Firstname'
        }, {
          key: 'last_name',
          rules: 'required|max:100',
          placeholder: 'Lastname'
        }, {
          key: 'email',
          rules: 'required|max:100|email',
          placeholder: 'Email'
        }, {
          key: 'password',
          type: 'password',
          rules: 'required|max:100|min:6',
          placeholder: 'Password'
        }, {
          key: 'password_confirmation',
          type: 'password',
          rules: 'required|max:100|min:6|confirmed:password',
          placeholder: 'Re-Type Password'
        }, {
          key: 'role_id',
          type: 'radios',
          rules: 'required',
          placeholder: 'Select account type',
          value: roles.slice().shift().value,
          radios: roles
        }, {
          key: 'message',
          containerClass: 'mb-1'
        }
      ]
    }
  },
  components: {
    SocialiteAuthService
  }
}
</script>
