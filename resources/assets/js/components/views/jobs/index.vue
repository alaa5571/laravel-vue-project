
<template>
  <div>

   <div class="container-fluid m-t-20 recrutier">
            <div class="row search-jobs">
                <div class="col-xs-12 col-sm-4 col-md-3">
		            <div class="sub sub-f sub-xs-t all p-t-15">
                        <h4 class="font-weight-bold">search jobs</h4>
                        <v-text-field
                          v-model="search"
                          id="name"
                          label="Search"
                        ></v-text-field>
                        <br>
                        {{ jobs.links }}
		                <form style='margin-bottom:100px' class='form-search'  @submit.prevent='updateData("all")'>    
                            <v-select
                              v-model="searchData.country"
                              :items="countries"
                              item-text="name"
                              item-value="name"
                              label="Country"
                              multiple
                              chips
                              deletable-chips
                            ></v-select> 
                            <v-select
                              v-model="searchData.experience"
                              :items="experience"
                              label="Experience"
                              multiple
                              chips
                              deletable-chips
                            ></v-select>  
                            <center><v-btn class="mr-4 btn btn-primary success" type="submit" :disabled="isDisabled">Search</v-btn></center>
 		                   </form>

                           
		            </div>
		        </div>

                <div class="col-xs-12 col-sm-8 col-md-9">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="sub sub-l sub-xs-t job-description" style="overflow: hidden;">
                                <!-- <ul class="pagination pull-right">
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                </ul> -->
                            <pagination :pagination="pagination" :callback="getdata" :options="paginationOptions"></pagination>

                            </div>
                        </div>

                        <div  class="col-xs-12 job-holder">
                            
                            <app-loader v-if='loading'></app-loader> 
                            <div v-else >
                                <div class="row" id="data"  v-for='(job, index) in jobs'>
                                    <div class="sub">                            
                                        <div class="image">
                                            <img :src="job.company_logo" class="img">
                                        </div>
                                        <div class="content">
                                            <div class="details">
                                                <router-link :to='{path:"/job/view/"+job.id}'><b>{{job.name}}</b></router-link>
                                                <span class="work-type label label-success"><a style='color: #fff' href=""  @click.prevent='updateData("job_type", job.job_type)'><b>{{job.job_type}}</b></a></span>
                                                <span><b>{{job.experience}}</b> Experience Years</span>
                                                <span class="date" >{{job.created_at}}</span>
                                                <p class="title">{{job.title}}</p>
                                                <p class="address">
                                                    <a @click.prevent='updateData("company", job.company_name)' class="company" href="">{{job.company_name}}</a>{{job.country}}
                                                    </p>
                                                <p>
                                                    {{job.description}}<span>... <router-link :to='{path:"/job/view/"+job.id}'>See more</router-link></span>
                                                </p>
                                                <div class="skills">
                                                	<a @click.prevent='updateData("skills", skill.name)' class="company" href="" v-for='skill in job.skills'>{{skill.name}}</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
    import pagination from 'vue-bootstrap-pagination'
/* Mulitiple Select */
import Multiselect from 'vue-multiselect'
import 'element-ui/lib/theme-chalk/index.css';
import {Select} from 'element-ui'

    export default {
        components: {
           pagination,
         },
        data() {
        	return {
                search     : '',
        		jobs       : [],
        		countries  : [],
                isDisabled : false,
                value      : [],
        		searchData : {
        			country    : [],
        			experience : [],
        		},
                experience: ['0-1', '1-2', '2-5', '2-7', '3-8', '5-8','5-10'],
                loading: false,

                /* Item related with pagination */
                 pagination: {
                    // total: 10,
                    // per_page: 15,    // required
                    // current_page: 1, // required
                    // last_page: 3,    // required
                    // from: 51,
                    // to: 22
                },
                paginationOptions: {
                    offset: 2,
                    previousText: 'Prev',
                    nextText: 'Next',
                    alwaysShowPrevNext: true
                },
                   /* multiple select */
                values: [],
        	}
        },

        computed: {
            filteredJobs() {
              return this.jobs.filter(job => {
                return job.name.toLowerCase().includes(this.search.toLowerCase())
              })
            },

            generalSearch() {
                var url = '/api/job/search/general'
                if (this.search !== '') {
                    url += '/'+this.search
                }
                axios.get(url).then(res => {
                  this.jobs = res.data.jobs.data
                  this.pagination = res.data.pagination
                })
            }
        },

        methods: {
           
            getdata() {
               this.loading = true
               const options = {
                params: {
                  paginate: this.pagination.per_page,
                  page: this.pagination.current_page,
                  /* additional parameters */
                }
              }
              axios.get('/api/job/search', options)
                .then(res => {
                    this.jobs       = res.data.jobs.data
                    this.pagination = res.data.pagination; 
                    this.countries  = res.data.countries
                    this.loading    = false
                })
            },

            updateData(name, q = 'null') {               
                if (name == 'all') {
                    this.$router.replace({query: this.searchData})                 
            		axios.get('/api/job/search/'+name, {params: this.searchData}).then(res => {
                        this.jobs       = res.data.jobs.data
                        this.pagination = res.data.pagination; 
                    })
                } else {
                    var data = {q: q}
                    this.$router.replace({query: data})
                    axios.get('/api/job/search/'+name, {params: data}).then(res => {
                        this.jobs       = res.data.jobs.data
                        this.pagination = res.data.pagination; 
                    })
                }
        	}
        	
        },

        created() {
        	 this.getdata()
        	
        },

        watch: {
            search() {
                this.generalSearch
            }
        }

    }

    $('#data').fadeIn(3000)
</script>

    <style src="vue-multiselect/dist/vue-multiselect.min.css"></style>
<style>
.image{
    height: 150px
}    
</style>