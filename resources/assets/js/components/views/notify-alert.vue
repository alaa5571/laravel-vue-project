<template>
  <div class="text-center">
    <v-snackbar
      v-model="show"
      :timeout="timeout"
      :color="color"
      :top="'top'"
    >
      <div v-if="isArray">
        <ul>
          <li v-for="error in erros">{{ error }}</li>
        </ul>
        <v-btn
        :color="color"
        text
        @click="show = false"
        > x </v-btn>
      </div>
      <div v-else>
        {{ content }}
        <v-btn
        :color="color"
        text
        @click="show = false"
        > x </v-btn>
     </div>
    </v-snackbar>
  </div>
</template>

<script>

export default {
  data() {
      return {
	      timeout: 5000,
        erros: [],
        isArray: false
	  }
  },

  computed: {
    	show: {
  		  get () 
        {
  		    return this.value
  		  },
  		  set(e) 
        {
  	      return this.$emit('input', e)
  	    }
		  }
  },

  props: {
      content: {
        type: String | Object,
        default: () => []
      }, 
      color: {
        type: String,
        default: "error"
      }, 
      value: {
        type: Boolean,
        default: false
      }
  },

  methods: {
    check() {
      if( (typeof this.content === "object" || typeof this.content === 'function') && (this.content !== null) )
      {
        this.isArray = true
        // push erros into erros array
        Object.values(this.content).map(value => {
          this.erros.push(String(value))
        })
      }
    }
  },

  watch: {
    content() {
      this.erros = []
      this.isArray = false
      this.check()
    }
  }  
}
</script>

<style scoped>
  ul {
    text-align: justify;
  }
	/*.v-snack{
		position: absolute !important;
		top: 10px
	}*/

  .v-btn {
    position: absolute;
    right: 0px;
    top: 0;
  }
</style>
