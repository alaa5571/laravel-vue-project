<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    public $timestamps = true;

    protected $fillable = [
        'first_name', 'last_name', 'email', 'password', 'phone', 'location', 'role', 'gender',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $appends = ['fullName'];

    public function messages()
    {
        return $this->hasMany('App\Message');
    }

    public function skills()
    {
        return $this->belongsToMany('App\Skills', 'user_skills', 'user_id', 'skill_id');
    }

    public function getAvatarAttribute($avatar)
    {
        return $avatar ? $avatar : '/storage/users/user.jpg';
    }

    public function getFullNameAttribute()
    {
        $FullName = "{$this->first_name} {$this->last_name}";
        return ucwords($FullName);
    }

}