<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf_token" content="{{csrf_token()}}">
   
    <title>My App</title>
    
    <link rel="stylesheet" type="text/css" href="/css/app.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/fontawesome.min.css">
    <link rel="stylesheet" type="text/css" href="/css/select.css">
    <link rel="stylesheet" type="text/css" href="/css/styles.css"> 
  </head>
  <body>
    <div id="app">
        <v-app>
          <v-content>
              <app-layout-header></app-layout-header>
              {{-- <app-chat v-if='isLoggedIn'></app-chat> --}}
              <router-view></router-view>        
          </v-content>
        </v-app>
    </div>


        <script type="text/javascript" src="/js/jquery.min.js"></script>      
        <script type="text/javascript" src="/js/select.js"></script>
        <script type="text/javascript" src="/js/scripts.js"></script>
        <script type="text/javascript" src="/js/app.js"></script>
  </body>
</html>


