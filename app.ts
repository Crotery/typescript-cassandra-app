///<reference path='project.d.ts' />

import http = require("http")
import url = require("url")
import express = require("express")

var app = express.createServer();

// Configuration
app.configure(function(){
  app.set('views', __dirname + '/views');
  app.set('view engine', 'jade');
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(express.static(__dirname + '/public'));
});

app.configure('development', function(){
  app.use(express.errorHandler({ dumpExceptions: true, showStack: true }));
});

app.configure('production', function(){
  app.use(express.errorHandler());
});


// Routes

app.get('/', function(req, res) {
    console.log('getting user ' + req.params.userid);

    res.render('user', {
        title: 1,
        username: "u",
        boards: "boards"

    });

});

app.listen(3000, function(){
    console.log("Demo Express server listening on port %d in %s mode", 3000, app.settings.env);
});

export var App = app;