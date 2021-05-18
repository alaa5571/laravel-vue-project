<template>
    <div>
        Log Out
    </div>
</template>

<script>

export default {
    methods: {
        logout() {
            Vue.auth.destroyToken()
            this.$store.dispatch('checkAction')
            this.$store.state.userData    = []  
            this.$router.push('/login')
        }
    },

    mounted() {
       this.logout()
    },
}

</script>

