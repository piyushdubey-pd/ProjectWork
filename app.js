const express = require("express");
const bodyparser = require("body-parser");
const { render } = require("ejs");
const mysql = require("mysql");
var nodemailer =require('nodemailer');


const app = express();

const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database: "bmsar_db"
});
connection.connect(function(error) {
    if(error) throw error;
    else console.log("Connected to DB successfully")
});


var transporter=nodemailer.createTransport({
    service:'gmail',
    auth:{
        user:'bmscearena@gmail.com',                                                                                  pass:'arenabmsce'
    }
});


app.set("view engine" , "ejs");

app.use(bodyparser.urlencoded({extended:true}));

app.use(express.static("public"));




app.get("/" , function(req,res){
    // connection.query();
    usn = "";
    password = "";
    res.render("login",{title:" Log-In",usnerror:"" , passworderror:"" , usnvalue:"" , passwordvalue:""});
});

var usn;


 app.post("/eventsList", function(req,res) {

    usn = req.body.usn;   
    password = req.body.password;

    console.log(usn);
    console.log(password);

    if (usn==""&&password=="") {
        res.render("login",{title:" Log-In", usnerror:"*****this is required*****" , passworderror:"*****This is required*****" , usnvalue:"" , passwordvalue:""});
        //res.redirect("/login",{title:" Log-In", usnerror:"*****this is required*****" , passworderror:"*****This is required*****" , usnvalue:"" , passwordvalue:""});
    } 
    else if(usn==""){
        res.render("login",{title:" Log-In",usnerror:"*****this is required*****", passworderror:"" , usnvalue:"" , passwordvalue:password});
    }
    else if(password==""){
        res.render("login",{title:" Log-In",usnerror:"", passworderror:"*****this is required*****" , usnvalue:usn, passwordvalue:""});
    }
    else {
        connection.query("select * from user_login where usn= ? and passw = ?",[usn,password],function(error,results,fields){
            if(results.length > 0)
            {
                res.render("eventsList", {title:"-events list",loginName:usn});
            }
                else
            {
                res.render("login",{title:" Log-In", usnerror:"*****Incorrect Username or Password*****" , passworderror:"" , usnvalue:"" , passwordvalue:""});
            }
                res.end();
        });
    }
});



app.get("/eventsList" , function(req,res){
    res.render("eventsList",{title:"-eventslist",loginName:usn});
});

app.get("/registration" , function(req,res){
    res.render("registration",{title:"-event_Registration",loginName:usn, pptext:"" , fnamevalue:"",lnamevalue :"",yearvalue : "" , mailvalue : "" , branchvalue:"" , usnvalue:""});
});


app.get("/upcoming" , function(req,res) {
    res.render("upcoming", {title:"-upcoming",loginName:usn});
});

app.get("/gallery" , function(req,res){
    res.render("gallery",{title:"-gallery",loginName:usn});
});

app.get("/achivements" , function(req,res){
    res.render("achivements",{title:"-achivements",loginName:usn});
});


app.get("/response" , function(req,res){
    F_name ="";
    L_name ="";
    Y_ear ="";
    U_sn ="";
    B_ranch ="";
    M_ail ="";

    res.render("response" ,  {title:"-Regis_Responsel",loginName:usn , Fname:"name" , Lname:"" , Year:Y_ear , Usn:U_sn , Branch : B_ranch , Mail:M_ail});
})





app.post("/response" , function(req,res){

//     F_name ="";
// L_name ="";
// Y_ear ="";
// U_sn ="";
// B_ranch ="";
// M_ail ="";

    F_name = req.body.fname;
    L_name = req.body.lname;
    Y_ear = req.body.year;
    U_sn = req.body.usn;
    B_ranch = req.body.branch;
    M_ail = req.body.mail;

    if(F_name==""||L_name==""||Y_ear==""||U_sn==""||B_ranch==""||M_ail==""){
        res.render("registration",{title:"-event_Registration",loginName:usn , pptext:"***Please fill all the user credentials***" , fnamevalue:F_name ,lnamevalue :L_name,yearvalue :Y_ear , mailvalue :M_ail , branchvalue:B_ranch , usnvalue:U_sn});
    }
    else{
        if(U_sn.length==10){
            connection.query("select * from user_reg where usn=?",[U_sn],function(error,results,fields){
                console.log(results)
                if(results.length>0)
                res.render("registration",{title:"-event_Registration",loginName:usn , pptext:"***User has already registered***" , fnamevalue:F_name ,lnamevalue :L_name,yearvalue :Y_ear , mailvalue :M_ail , branchvalue:B_ranch , usnvalue:U_sn});
                else
                {
                connection.query("insert into user_reg values(?, ?, ?, ?, ?, ?)",[F_name,L_name,Y_ear,U_sn,B_ranch,M_ail],function(error,results,fields){
                res.render("response", {title:"-Regis_Responsel",loginName:usn , Fname:F_name , Lname:L_name , Year:Y_ear , Usn:U_sn , Branch : B_ranch , Mail:M_ail});
           });
        }
        });
            var mailOptions= {
                from : 'bmscearena@gmail.com',
                to: M_ail,
                subject:'Successfull Registration',
                text:'Congratulations on successfully registering in this event. \n All the best'
            };
            transporter.sendMail(mailOptions,function(error, info){
                if(error)
                console.log(error);
                else
                console.log('Email sent: '+info.response);
            });
        }
        else
        res.render("registration",{title:"-event_Registration",loginName:usn , pptext:"***Incorrec USN kidnly check***" , fnamevalue:F_name ,lnamevalue :L_name,yearvalue :Y_ear , mailvalue :M_ail , branchvalue:B_ranch , usnvalue:U_sn});       
}
});





app.listen("3000",function(){
    console.log("Successfully Running");
});