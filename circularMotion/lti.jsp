<% 
String url = request.getParameter("lis_outcome_service_url");
String did = request.getParameter("lis_result_sourcedid");
String key = request.getParameter("oauth_consumer_key");
String back = request.getParameter("back_url");
%>

<!DOCTYPE html>
<html><head>

<style type="text/css">
        .btn {
          display: inline-block;
          border: #2e6da4;
          border-style: solid;
          border-width: 2px;
         
          border-radius: 6px;
          background: linear-gradient(#FFFFFF, #B0B0B0);
          font-weight: bold;
          color: blue;
          margin-top: 5px;
          margin-bottom: 5px;
          margin-right: 5px;
          margin-left: 5px;
          vertical-align: middle;
        }
        .btn:hover {
          background: linear-gradient(#152B40, #152B40);
          color: white
        }
        .btn:focus {
          background: linear-gradient(#152B40, #152B40);
          color: white
        }
        button:not(.btn):focus {
          border: 4px solid red;
        }


    #datGu{


    	 margin-top: 23.5%;
        margin-right: 4%;

    }

       #info4{
        float: left;
        border: 2px solid black;
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
        top: 66.5%;
        margin-left: 76%;
        position:absolute;
        width:21%;
      }

      #info{
        float: left;
        border: 2px solid black;
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
        top: 7.5%;
        margin-left: 76%;
        position:absolute;
        width:21%;
      }


        #info1{
        float: left;
        border: 2px solid black;
        padding: 0.9%;
        font-size: 128%;
        z-index:1;
        margin-left: 1%;
        top: 7.5%;
        position:absolute;
        width:22.5%;
      }

      #info3{
        float: left;
        border: 2px solid black;
        padding: 0.9%;
        font-size: 128%;
        z-index:1;
        top:32%;
        margin-left: 1%;
        position:absolute;
        width:22.5%;
      }



#level1{
        float: left;
        border: 2px solid black;
        padding: 0.3%;
        font-size: 128%;
        z-index:1;
        top:52%;
        margin-left: 1%;
        position:absolute;
        width:23.5%;
        font-weight:bold;
      }


#level2{
        float: left;
        border: 2px solid black;
        padding: 0.3%;
        font-size: 128%;
        z-index:1;
        top:52%;
        margin-left: 1%;
        position:absolute;
        width:23.5%;
        font-weight:bold;
      }





#info6{
        float: left;
        border: 2px solid black;
        padding: 0.9%;
        font-size: 128%;
        z-index:1;
        margin-top:59%;
        margin-left: 1%;
        position:absolute;
        width: 21%;
      }     



#info7{
        float: left;
        border: 2px solid black;
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
        top: 33%;
        margin-left: 76%;
        position:absolute;
        width:21%;
      }

 #info8{

        float: left;
        border: 0px solid black;
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
        margin-left: 28%;
        top: 7.5%;
        position:absolute;
        text-align:center;
        
 } 


 #info9{

        float: left;
        border: 0px solid black;
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
        margin-left: 39%;
        top: 12.5%;
        position:absolute;
        text-align:center;
        
 }      


#developer{
				float: center;
				padding: 1%;
				font-size: 100%;
				margin-left:12%;
				margin-top:0%;
				z-index:1;
				position:absolute;
			}



      
			#logo{
				float: left;
				margin-left:0%;
				margin-top:0%;
				z-index:1;
				position:absolute;
			}

	 
#canvas1 {
  height: 100%;
  width: 100%;
  position: absolute;
  overflow: hidden;
  background-color: #000;
  z-index: 5;
  display: none;
}

.main1 {
  height: 50%;
  width: 50%;
  position: absolute;
  padding: 1%;
  margin: 0;
  left: 25%;
  top: 25%;
  background-color: #009688;
  box-shadow: 3px 5px 5px rgba(255,255,255,0.10), 3px 5px 5px rgba(255,255,255,0.12);
  color: white;
  z-index: 5;
  display: inline;
  word-wrap: break-word;
  text-align: center;
  vertical-align: middle;
}

#head1 {
  position:relative;
  top: 30%;
  font-weight: bold;
  position: relative;
  display: inline;  
  vertical-align: middle;
  font-size: 250%;  
}
 

</style>



<script src="js/three.js"></script>
<script src="js/dat.gui.min.js"></script>
<script type="text/javascript" src="js/OrbitControls.js"></script>
<script src="js/TrackballControls.js"></script>
<script src="js/threex.keyboardstate.js"></script>
<script type = "text/javascript" language = "javascript"></script>
<script type="text/javascript" src = "js/m4.js" > </script>
</head>


<body onload="initialState()" style="margin:0 ;padding:0;overflow:hidden;">

<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel=stylesheet href="css/jquery-ui.css" />
<link rel=stylesheet href="css/info.css"/>
<script src="js/info.js"></script>
<div id="infoButton"></div>
<div id="infoBox" title="Demo Information">
Set values of initial angular velocity and mass of bob , then press SIMULATE to perform the experiment. <br>
Slide the Acceleration slider to change angular acceleration , it can also be changed when the demo is running.<br>
Other parameters cannot be changed when the demo is running.<br>
Press ASSESSMENT to solve problems.<br>
Answer the questions  by submiting a correct integer in the box near SUBMIT button in the assessment section.<br>
You can answer questions in a level any number of times by re selecting the level.<br>
The most recent submission for a question will be considered for score.<br>
Once the END TEST button is pressed , no more questions can be solved.<br>
Use mouse scroll or trackpad to zoom in or zoom out. <br>
Click and hold the left button of the mouse and move the cursor to change the direction of view.<br>
Zoom in and out for better view on mobiles and tablets.
  
</div>

<div id="canvas1">
      <div class="main1">
        <h1 id="head1">YOUR ASSESSMENT REPORT HAS BEEN SUBMITTED.</h1>
        
      
      </div>
</div>

<div id="logo"><img src="img/logo.png" height=42 width=150></div>
<div id="developer"> Developer: RAHUL KHANDELWAL | Title: CIRCULAR MOTION	</div>


<div id="info7">Centrifugal Force <font color="red">---------></font></div>

<div id="info1">
      Initial angular velocity =<input type="number" id="angularVelocity" class="btn" min="-60" max="60" value="0">&deg;/s<br>
      Mass of bob = <input type="number" id="mass" class="btn" min="1" max="10" value="5">Kg<br>
      <input type="button" class="btn" id="stimulate" value="SIMULATE" onclick="myf()">
      <input type="button" id="stimulate" class="btn" value="ASSESSMENT" onclick="assesment()">
       <input type="button" id="pause" class="btn" value="PAUSE" onclick="Pause()">
      
</div>

<div id="info">
Maximum Tension = 10000 N<br>
Current Tension = 0  N<br>
Centrifugal Force = 0 N<br>
</div>


<div id="info4">  
Angular Displacement = 0 &deg;<br>
Angular Velocity = 0 &deg;/s<br>    
</div>

<div id="info3" style="visibility: hidden;">
        Select level for assessment -<br>
         <input type="button" id="l1" class="btn" value="level1" onclick="level1()"> &nbsp; 0/3 &nbsp; &nbsp;
         <input type="button" id="l2" class="btn" value="level2" onclick="level2()"> &nbsp; 0/3<br>
           &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="button" id="endtest" class="btn" value="END TEST" onclick="endtest()">
</div>

<div id="level1" style="visibility: hidden;"> <p id="question"></p>
          <br>
          <input type="number" class="btn" min="0" max="10" value="0" id="value">
          <input type="submit" class="btn" id="submit" onclick="answer()">
          <input type="button" class="btn" id="nextQuestion" value="next question" onclick="level1()" style="visibility: hidden;">
          <p id="result"></p>
</div>

<div id="level2" style="visibility: hidden;"> <p id="question2"></p>
          <br>
          <input type="number" class="btn" min="0" max="10" value="0" id="value2">
          <input type="submit" class="btn" id="submit2" onclick="answer2()">
          <input type="button" class="btn" id="nextQuestion2" value="next question" onclick="level2()" style="visibility: hidden;">
          <p id="result2"></p>
</div>

<div id="info8">
           
</div>


<div id="info9"></div>

<script>



var l1=[0,0,0],l2=[0,0,0],sl1=sl2=0;


  function assesment()
{
  document.getElementById("info3").style.visibility = "visible";
}


function initialState()
{
   document.getElementById("info3").style.visibility = "hidden";
   document.getElementById("level1").style.visibility = "hidden";
   document.getElementById("level2").style.visibility = "hidden";
   document.getElementById("nextQuestion").style.visibility = "hidden";//set_visibility("info3","none");
   document.getElementById("nextQuestion2").style.visibility = "hidden";//set_visibility("info3","none");
   var count1=0; 
   document.getElementById("infoButton").click();
}

var count=0;

function level1()
{
   document.getElementById("level1").style.visibility = "visible";
   document.getElementById("level2").style.visibility = "hidden";
   
 


     document.getElementById("value2").style.visibility = "hidden";
  document.getElementById("submit2").style.visibility = "hidden";
  document.getElementById("nextQuestion2").style.visibility = "hidden";

  if(count%3==0)
  {
    document.getElementById("question").innerHTML=  "<font " + "color" + "="  + ' "#800000" ' + ">" +"Two objects A and B start from rest. Angular acceleration of A is one third of B. Ratio of angular velocity of B with that of A at time t after start is ? " + "</font>";   
  }



   else if(count%3==1)
  {   
    document.getElementById("question").innerHTML=  "<font " + "color" + "="  + ' "#800000" ' + ">" +"Two objects A and B start from rest. Angular acceleration of A is twice of B. Ratio of angular distance of A with that of B at time t after start is ? " + "</font>";   
  }

  else
  {
    document.getElementById("question").innerHTML=  "<font " + "color" + "="  + ' "#800000" ' + ">" +"Two objects A and B have same angular velocity at a time t. Mass of A is five times of B. Ratio of centrifugal force acting on A with that on B is ? " + "</font>";   
  }

  document.getElementById("result").innerHTML="";

  document.getElementById("value").style.visibility = "visible";
  document.getElementById("submit").style.visibility = "visible";
  document.getElementById("nextQuestion").style.visibility = "hidden";
}

function answer()
{
  var a=document.getElementById("value").value;
  var ans= parseInt(a);
  flag=0;
  count+=1;

  document.getElementById("value").style.visibility = "hidden";
  document.getElementById("submit").style.visibility = "hidden";

  if(count%3==1)
  {
      if(ans===3)
        flag=1;
  }

  else if(count%3==2)
  {
      if(ans==2)
        flag=1;
  }

  else
  {
    if(ans==5)
      flag=1;
  }


  if(flag==1)
  	{
      document.getElementById("result").innerHTML=  "<font " + "color" + "="  + ' "#0000ff" ' + ">" +  "Correct answer!"   +  "</font>";
      var x=count-1;

      if(l1[(x%3)]==0)
      	{
      		l1[(x%3)]=1;
      		sl1++;

      		var object11=document.getElementById("info3");

      		object11.innerHTML= "Select level for assessment -" + "<br>" + "<input type=" + '"button"' + "id=" + '"l1"' + "class=" + ' "btn" ' +
      		"value=" + '"level1"' + "onclick=" + '"level1()"' + "/>" + "&nbsp;" + sl1 + "/3" + "&nbsp; &nbsp;" +"<input type=" + '"button"' + "id=" + '"l2"' + "class=" + ' "btn" ' +
      		"value=" + '"level2"' + "onclick=" + '"level2()"' + "/>" + "&nbsp;" + sl2 + "/3" + "<br>" + "&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;" +

      		  "<input type=" + '"button"' + "id=" + '"endtest"' + "class=" + ' "btn" ' +
      		"value=" + '"END TEST"' + "onclick=" + '"endtest()"' + "/>" ;




			
      	}
  	}
    else
    {
      document.getElementById("result").innerHTML=  "<font " + "color" + "="  + ' "#0000ff" ' + ">" +  "Wrong answer!"   +  "</font>";

      		var x=count-1;

      		if(l1[(x%3)]==1)
      	{

            l1[(x%3)]=0;
            sl1--;


            		var object11=document.getElementById("info3");

      		object11.innerHTML= "Select level for assessment -" + "<br>" + "<input type=" + '"button"' + "id=" + '"l1"' + "class=" + ' "btn" ' +
      		"value=" + '"level1"' + "onclick=" + '"level1()"' + "/>" + "&nbsp;" + sl1 + "/3" + "&nbsp; &nbsp;" +"<input type=" + '"button"' + "id=" + '"l2"' + "class=" + ' "btn" ' +
      		"value=" + '"level2"' + "onclick=" + '"level2()"' + "/>" + "&nbsp;" + sl2 + "/3" + "<br>" + "&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;" +

      		  "<input type=" + '"button"' + "id=" + '"endtest"' + "class=" + ' "btn" ' +
      		"value=" + '"END TEST"' + "onclick=" + '"endtest()"' + "/>";
      	}


    }


    if(count%3!=0)
      document.getElementById("nextQuestion").style.visibility = "visible";

    
}

var count2=0;

function level2()
{
   document.getElementById("level1").style.visibility = "hidden";
   document.getElementById("level2").style.visibility = "visible";

     document.getElementById("value").style.visibility = "hidden";
  document.getElementById("submit").style.visibility = "hidden";
  document.getElementById("nextQuestion").style.visibility = "hidden";




  if(count2%3==0)
  {
    document.getElementById("question2").innerHTML=   "<font " + "color" + "="  + ' "#800000" ' + ">" +"For two objects A and B , angular acceleration and initial angular velocity of A is  twice of B. Ratio of angular distance of A with that of B at time t after start is ? " + "</font>";   
  }

  else if(count2%3==1)
  {
    document.getElementById("question2").innerHTML=  "<font " + "color" + "="  + ' "#800000" ' + ">" +"For two objects A and B , mass of A is 4 times that of B and angular velocity of A is half of B at a time t. Ratio of centrifugal force on A with that on B at that time is ? " + "</font>";
  }

  else
  {
    document.getElementById("question2").innerHTML= "<font " + "color" + "="  + ' "#800000" ' + ">" +"Two objects A and B start from rest. Angular acceleration  of A is one forth of B and mass of A is four times mass of B. Ratio of angular velocity of B with that of A at a time t after start is ? " + "</font>";   
  }
  

  document.getElementById("result2").innerHTML="";
  document.getElementById("value2").style.visibility = "visible";
  document.getElementById("submit2").style.visibility = "visible";
  document.getElementById("nextQuestion2").style.visibility = "hidden";
}

function answer2()
{
  var a2=document.getElementById("value2").value;
  var ans2= parseInt(a2);
  var flag2=0;
  count2++;
  document.getElementById("value2").style.visibility = "hidden";
  document.getElementById("submit2").style.visibility = "hidden";

  if(count2%3==1)
  {
      if(ans2===2)
        flag2=1;
  }

  else if(count2%3==2)
  {
      if(ans2==1)
        flag2=1;
  }

  else
  {
    if(ans2==4)
      flag2=1;
  }


  if(flag2==1)
  {
      document.getElementById("result2").innerHTML=   "<font " + "color" + "="  + ' "#0000ff" ' + ">" +  "Correct answer!"   +  "</font>";
      
      var x=count2-1;
       
      if(l2[(x%3)]==0)
      	{
      		l2[(x%3)]=1;
      		sl2++;
      		

            

      		var object11=document.getElementById("info3");

      	object11.innerHTML= "Select level for assessment -" + "<br>" + "<input type=" + '"button"' + "id=" + '"l2"' + "class=" + ' "btn" ' +
      		"value=" + '"level1"' + "onclick=" + '"level1()"' + "/>" + "&nbsp;" + sl1 + "/3" + "&nbsp; &nbsp;" +"<input type=" + '"button"' + "id=" + '"l1"' + "class=" + ' "btn" ' +
      		"value=" + '"level2"' + "onclick=" + '"level2()"' + "/>" + "&nbsp;" + sl2 + "/3" + "<br>" + "&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;" 

      		 + "<input type=" + '"button"' + "id=" + '"endtest"' + "class=" + ' "btn" ' +
      		"value=" + '"END TEST"' + "onclick=" + '"endtest()"' + "/>";
			
      	}
  }
    else
    {
      document.getElementById("result2").innerHTML=   "<font " + "color" + "="  + ' "#0000ff" ' + ">" +  "Wrong answer!"   +  "</font>";
       
      	var x=count2-1;

      		if(l2[(x%3)]==1)
      	{

            l2[(x%3)]=0;
            sl2--;

            


            		var object11=document.getElementById("info3");

      	object11.innerHTML= "Select level for assessment -" + "<br>" + "<input type=" + '"button"' + "id=" + '"l1"' + "class=" + ' "btn" ' +
      		"value=" + '"level1"' + "onclick=" + '"level1()"' + "/>" + "&nbsp;" + sl1 + "/3" + "&nbsp; &nbsp;" +"<input type=" + '"button"' + "id=" + '"l2"' + "class=" + ' "btn" ' +
      		"value=" + '"level2"' + "onclick=" + '"level2()"' + "/>" + "&nbsp;" + sl2 + "/3" + "<br>" + "&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;" 

      		 + "<input type=" + '"button"' + "id=" + '"endtest"' + "class=" + ' "btn" ' +
      		"value=" + '"END TEST"' + "onclick=" + '"endtest()"' + "/>";
      	}

    }


    if(count2%3!=0)
      document.getElementById("nextQuestion2").style.visibility = "visible";

    
}


function endtest()
{

	//document.getElementById("info3").style.visibility = "hidden";
   document.getElementById("level1").style.visibility = "hidden";
   document.getElementById("level2").style.visibility = "hidden";
   document.getElementById("nextQuestion").style.visibility = "hidden";
   document.getElementById("nextQuestion2").style.visibility = "hidden";
    document.getElementById("value").style.visibility = "hidden";
   document.getElementById("value2").style.visibility = "hidden";
    document.getElementById("submit").style.visibility = "hidden";
   document.getElementById("submit2").style.visibility = "hidden";
    document.getElementById("l1").style.visibility = "hidden";
   document.getElementById("l2").style.visibility = "hidden";

   var object19=document.getElementById("info9");

   object19.innerHTML="YOUR FINAL SCORE IS " + (sl1+sl2) + "/" +"6"+ " !";

    var sendScore=((sl1+sl2)/6);


   var form = document.createElement("form");
            
                var input1 = document.createElement("input");
                var input2 = document.createElement("input");
                var input3 = document.createElement("input");
                var input4 = document.createElement("input");
                form.method="POST";
                form.action="<%=back%>";
                form.setAttribute("target","hiddenFrame");
             
                
                input1.name="lis_outcome_service_url";
                input1.value="<%=url%>";
                input1.type="hidden";
                form.appendChild(input1);
                
                input2.name="lis_result_sourcedid";
                input2.value="<%=did%>";
                input2.type="hidden";
                form.appendChild(input2);
                
                input3.name="oauth_consumer_key";
                input3.value="<%=key%>";
                input3.type="hidden";
                form.appendChild(input3);
                
                input4.name="score";
                input4.value=sendScore.toFixed(2).toString();
                input4.type="hidden";
                form.appendChild(input4);
                document.body.appendChild(form);
                form.submit();

setTimeout(function(){canvas1.style.display="block";}, 3000);


}




  var scene= new THREE.Scene();
  var camera= new THREE.PerspectiveCamera(50,window.innerWidth/window.innerHeight,0.1,3000);


  var renderer=new THREE.WebGLRenderer();
    renderer.setSize(window.innerWidth,window.innerHeight);
    renderer.setClearColor(0xffffff);

  document.body.appendChild(renderer.domElement);

  

  var plane = new THREE.Mesh(
    new THREE.PlaneBufferGeometry( 10000,10000 ),
    new THREE.MeshBasicMaterial( { visible: false} )
  );
  scene.add( plane );


  var grid= new THREE.GridHelper(300,5);
  var color=new THREE.Color("rgb(255,255,255)");
    grid.setColors(color,0x778899);
    
  renderer.setClearColor( 0xaaccff);

     function onWindowResize(){

    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();

    renderer.setSize( window.innerWidth, window.innerHeight );

    }

     window.addEventListener( 'resize', onWindowResize, false );


var loader = new THREE.TextureLoader();
				var groundTexture = loader.load( 'img/grasslight-big.jpg' );
				groundTexture.wrapS = groundTexture.wrapT = THREE.RepeatWrapping;
				groundTexture.repeat.set( 25, 25 );
				groundTexture.anisotropy = 16;
				var groundMaterial = new THREE.MeshBasicMaterial( { color: 0xffffff, specular: 0x111111, map: groundTexture } );
				var mesh = new THREE.Mesh( new THREE.PlaneBufferGeometry( 3000, 3000 ), groundMaterial );
				mesh.rotation.x = - Math.PI / 2;
				mesh.receiveShadow = true;
				scene.add( mesh );



 var light = new THREE.AmbientLight( 0xffffff ); // soft white light
scene.add( light );


  camera.position.z=800;
  camera.position.y=400;
  camera.position.x=0;
  camera.rotation.x=-1.57;
  camera.lookAt(scene.position);


  var loader = new THREE.ObjectLoader();
  var object = loader.parse(c);

  var rodPball=object.children[1];
  var p=object.children[0];
  var pivot=object.children[3];



 
  loader = new THREE.TextureLoader();
  var cyll = new  THREE.PlaneGeometry(500,500);
  var tracktexture = loader.load('img/newtrack.png');
  var material = new THREE.MeshBasicMaterial({map:tracktexture, transparent:true})
  var path = new THREE.Mesh(cyll,material);
  path.rotation.x = -1.57;
  path.position.y = 1;
  scene.add(rodPball);
  scene.add(path);
  scene.add(pivot);

   var ball=rodPball.children[0]; 

   controls = new THREE.OrbitControls(camera,renderer.domElement);
   controls.addEventListener('change',render);

var aa;
var dir = new THREE.Vector3( 0, 0, 1 );
var origin = new THREE.Vector3( ball.position.x, ball.position.y, ball.position.z );
var length = 20;
var hex = 0xff0000;

var arrowHelper = new THREE.ArrowHelper( dir, origin, length, hex );
scene.add( arrowHelper );

arrowHelper.position.y=20;


var guiControls = new function(){
  this.Acceleration=10;	
}
var datGUI = new dat.GUI();
datGUI.add(guiControls,'Acceleration',-30,30);
datGUI.domElement.id = 'datGu';




var rad= Math.PI/180;
var acc,av,time,increment,theta,angle,t=0.08;
var stimulate=0;
var x,y;
var radius=2;


var object1=document.getElementById("info");
var object2=document.getElementById("info4");
var maxT=10000;
var T,ld,ad;
var mass=0;

var object10=document.getElementById("info8");



var pause=0;




var render=function()
{ 
  requestAnimationFrame(render);
  renderer.render(scene,camera);

  if(stimulate&&(maxT>T)&&!pause)
  {
 	acc=guiControls.Acceleration*rad;
 	acc=(Math.round(acc*100)/100);
  	av=av + acc*t;
  	theta=av*t+0.5*acc*t*t;
  	(rodPball.rotation.y+=theta*rad);
  
  var vector = new THREE.Vector3;
  vector.setFromMatrixPosition(rodPball.children[0].matrixWorld)


   x=parseFloat(document.getElementById("mass").value)/5;
   y=av/(10*rad);
   
  dir = new THREE.Vector3(vector.x,vector.y,vector.z);
  origin = vector;
  length=20+(0.007*x*y*y);
  dir.normalize();
  scene.remove(arrowHelper);
  arrowHelper = new THREE.ArrowHelper( dir, origin, length, hex );
  scene.add(arrowHelper);

  T= mass*av*av*radius;
  ad=(rodPball.rotation.y%(2*Math.PI))/rad;
  ld=2*radius*Math.sin(ad/2);

console.log(acc);


  if(maxT>=T)
  	{

  	object1.innerHTML=   "Maximum Tension = " + (((maxT*10)*10)/100).toFixed(1) + " N<br>"
                        + "Current Tension = " + ((T)).toFixed(1) + " N<br>"
                        + "Centrifugal Force = " + ((T)).toFixed(1) +  " N<br>";

 	object2.innerHTML=    "Angular Displacement = " + ((ad*10*10)/100).toFixed(1) + " d<br>"
 						+ "Angular Velocity = " + (((av)*10*10)/100).toFixed(1)  +" d/sec";
 	}
 	
 	else
 	{
 		object1.innerHTML=   "Maximum Tension = " + (((maxT*10)*10)/100).toFixed(1) + " N<br>"
                        + "Current Tension = " + ((maxT*10*10)/100).toFixed(1) + " N<br>"
                        + "Centrifugal Force =" + ((maxT*10*10)/100).toFixed(1) +  " N<br>";

 		object2.innerHTML=    "Angular Displacement = " + Math.round((ad*10*10)/100).toFixed(1) + " d<br>"
 						+ "Angular Velocity = " + (((av)*10*10)/100).toFixed(1) + " d/sec"  ;
 	}	

 						


}

    if(T>maxT)
    {
        object10.innerHTML= "<font " + "color" + "="  + ' "blue" ' + ">" + " Oh snap ! Tension reached its maximum value. Press reset to start again." + "</font> "
    }

}


  render();



function Pause()
{

  if(document.getElementById("pause").value=="PAUSE")
    {
      document.getElementById("pause").blur();
      document.getElementById("pause").value="RESUME";
      pause=1;
    }

    else
    {
      document.getElementById("pause").blur();
      document.getElementById("pause").value="PAUSE";
      pause=0; 
    }

}



var avv;

function myf()
{


 
  if(document.getElementById("stimulate").value=="SIMULATE")
  {
   avv=parseFloat(document.getElementById("angularVelocity").value);
   av=parseFloat(document.getElementById("angularVelocity").value)*rad;
   mass=parseFloat(document.getElementById('mass').value);

   if(((avv>=-60)&&(avv<=60))&&((mass>=1)&&(mass<=10)))
   {
   		document.getElementById("stimulate").blur();
   		document.getElementById("stimulate").value="RESET";
   		av=parseFloat(document.getElementById("angularVelocity").value)*rad;
   		mass=parseFloat(document.getElementById('mass').value);
   		acc=guiControls.Acceleration*rad;
   		T=0;
  		stimulate=1;
  	}

    else
    {
    	if(!((avv>=-60)&&(avv<=60)))
    	{
    		alert("Initial angular velocity not in limit ! Minimum= -60 and Maximum = 60.");
    	}

    	if(!((mass>=1)&&(mass<=10)))
    	{
    		alert("Mass not in limit ! Minimum= 1 and Maximum = 10.");	
    	}
    }


  }



  else
  {
            document.getElementById("stimulate").blur();
          document.getElementById("stimulate").value="SIMULATE";
        object1.innerHTML=   "Maximum Tension = " + (((maxT*10)*10)/100).toFixed(1) + " N<br>"
                              + "Current Tension = " + 0 + " N<br>"
                              + "Centrifugal Force" + 0 +  " N<br>";

        object2.innerHTML=    "Angular Displacement = " + 0 + " d<br>"
                  + "Angular Velocity = " + 0  +" d/sec";


        rodPball.rotation.y=0;
        
        T=0;
        dir = new THREE.Vector3( 0, 0, 1 );
        origin = new THREE.Vector3( ball.position.x, ball.position.y, ball.position.z );
        length = 20;
        hex = 0xff0000;
        scene.remove(arrowHelper);
        arrowHelper = new THREE.ArrowHelper( dir, origin, length, hex );
        scene.add( arrowHelper );
        stimulate=0;
        arrowHelper.position.y=20;
        object10.innerHTML=""
  }

}


 </script>




<iframe name="hiddenFrame" style="display:none"></iframe> 


</body>



</html>