<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Country;
use App\country_link;
class Job extends Model
{
   
    protected $fillable = [
        'name', 'title', 'description', 'location','skills', 'experience', 'country', 'about_company', 'job_type', 'company_name', 'address', 'salary', 'user_id', 'availability', 'company_logo'
    ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function apply()
    {
        return $this->hasMany('App\Apply');
    } 

    public function bookmarks()
    {
        return $this->hasMany('App\Bookmark');
    }
    
    public function skills() 
    {
       return $this->belongsToMany('App\Skills', 'job_skills', 'job_id', 'skill_id'); 
    } 
}