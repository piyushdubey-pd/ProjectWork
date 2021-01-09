const express = require("express");
const bodyparser = require("body-parser");
const { render } = require("ejs");


const app = express();

app.set("view engine" , "ejs");

app.use(bodyparser.urlencoded({extended:true}));

app.use(express.static("public"));



app.get("/" , function(req,res){
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
    else{
    res.render("eventsList", {title:"-events list",loginName:usn});
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
    res.render("response", {title:"-Regis_Responsel",loginName:usn , Fname:F_name , Lname:L_name , Year:Y_ear , Usn:U_sn , Branch : B_ranch , Mail:M_ail});
}
    
});





app.listen("3000",function(){
    console.log("Successfully Running");
});