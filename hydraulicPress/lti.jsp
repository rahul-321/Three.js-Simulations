<% 
String url = request.getParameter("lis_outcome_service_url");
String did = request.getParameter("lis_result_sourcedid");
String key = request.getParameter("oauth_consumer_key");
String back = request.getParameter("back_url");
%>



<!doctype html>

<html>

<head>


<STYLE type="text/css">
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


      </STYLE>

<style>

#info{
				float: left;
				border: 2px solid black;
				padding: 0.6%;
				font-size: 128%;
				z-index:1;
				top: 65%;
				margin-left: 73%;
				position:absolute;
				width:24%;
			}

#info1{
				float: left;
				border: 2px solid black;
				padding: 0.9%;
				font-size: 110%;
				z-index:1;
				margin-left: 1%;
				top: 7.5%;
				position:absolute;
				width:25%;
			}


#info2{
				float: left;
				border: 2px solid black;
				padding: 0.9%;
				font-size: 128%;
				z-index:1;
				top:7.5%;
				margin-left:73%;
				position:absolute;
				width:24%;
			}



#info3{
				float: left;
				border: 2px solid black;
				padding: 0.9%;
				font-size: 128%;
				z-index:1;
				top:35%;
				margin-left:1%;
				position:absolute;
				width:25%;
			}



#level1{
				float: left;
				border: 2px solid black;
				padding: 0.2%;
				font-size: 120%;
				z-index:1;
				top:55%;
				margin-left: 1%;
				position:absolute;
				width:26%;
				font-weight: bold;
			}


#level2{
				float: left;
				border: 2px solid black;
				padding: 0.2%;
				font-size: 120%;
				z-index:1;
				top:55%;
				margin-left: 1%;
				position:absolute;
				width:26%;
				font-weight: bold;
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

</head>


<script src="js/three.js"></script>
<script src="js/dat.gui.min.js"></script>
<script type="text/javascript" src="js/OrbitControls.js"></script>
<script src="js/TrackballControls.js"></script>
<script src="js/threex.keyboardstate.js"></script>
<script type = "text/javascript" language = "javascript"></script>
<script type="text/javascript" src = "js/m2.js" > </script>
<body background='img/hp.jpg', style="background-size: 100% 100%; overflow: hidden; background-repeat: no-repeat; margin:0; padding:0;	" onload="initialState()">





<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel=stylesheet href="css/jquery-ui.css" />
<link rel=stylesheet href="css/info.css"/>
<script src="js/info.js"></script>
<div id="infoButton"></div>
<div id="infoBox" title="Demo Information">
Set values of external force and gravity , then press SIMULATE to perform the experiment. <br>
Once the parameters are set , they cannot be changed when the demo is running.<br>
Press ASSESSMENT to solve problems.<br>
Answer the questions  by submitting a correct integer in the box near SUBMIT button in the assessment section.<br>
You can answer questions in a level any number of times by reselecting the level.<br>
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
<div id="developer"> Developer: RAHUL KHANDELWAL | Title: HYDRAULIC PRESS	</div>

<div id="info">	
Weight of block = 900 N<br>
Area of left column = A1<br>		
Area of right column = 2*A1<br>
Level of water in left part = 40 m<br>
Level of water in right part = 16.5 m<br>			
External Force on left column = 0 
</div>

<!--set_visibility("info","none"); -->


<div id="info1">		External force on left column = <input type="number" id="force" class="btn" min="0" max="4000" value="2000">N<br>
						Maximum external force =4000 N<br> Minimum external force =0 N <br>
						Value of g=<input type="number" id="gravity" class="btn" min="7" max="20" value="10">m/s <sup>2</sup><br>
						<input type="button" class="btn" id="stimulate" value="SIMULATE" onclick="myf()"/>
						 <input type="button" id="stimulate" class="btn" value="ASSESSMENT" onclick="assesment()"/>
</div>

<div id="info2">		Total force on left column= 5100 N <br> Total force on right column= 5100 N </div>

<div id="info3">
         Select level for assessment -<br>
         <input type="button" id="l1" class="btn" value="level1" onclick="level1()"> &nbsp; 0/3 &nbsp; &nbsp;
         <input type="button" id="l2" class="btn" value="level2" onclick="level2()"> &nbsp; 0/3<br>
           &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="button" id="endtest" class="btn" value="END TEST" onclick="endtest()">
</div>

<div id="level1">	<p id="question"></p>
					<br>
					<input type="number" class="btn" min="0" max="10" value="0" id="value"/>
					<input type="submit" class="btn" id="submit" onclick="answer()"/>
					<input type="button" class="btn" id="nextQuestion" value="next question" onclick="level1()"/>
					<p id="result"></p>
</div>

<div id="level2">	<p id="question2"></p>
					<br>
					<input type="number" class="btn" min="0" max="10" value="0" id="value2"/>
					<input type="submit" class="btn" id="submit2" onclick="answer2()"/>
					<input type="button" class="btn" id="nextQuestion2" value="next question" onclick="level2()"/>
					<p id="result2"></p>
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
		document.getElementById("question").innerHTML="<font " + "color" + "="  + ' "#000000" ' + ">"+  "For a hydraulic press in equilibrium ,with no other forces acting on any column, if circular area of left column is half of that of right column ,the ratio of height of water in left column to that in right column is ? " +  "</font>";
	}

	else if(count%3==1)
	{
		document.getElementById("question").innerHTML="<font " + "color" + "="  + ' "#000000" ' + ">"+"If circular arear of left column is one third of that of right column and an external force acts on left column . What is the ratio of change in heights (magnitude) of left column with that in right column ? " +  "</font>";
	}

	else
	{
		document.getElementById("question").innerHTML="<font " + "color" + "="  + ' "#000000" ' + ">"+"If an external force is applied on right column , the change in height of right column is h1 when the density of liquid is d1. If the  density was four times d1 the change would have been h2 . What is the ration of h1 by h2 ?  " +  "</font>";
	}

	document.getElementById("result").innerHTML="";
	//count++;
	document.getElementById("value").style.visibility = "visible";
	document.getElementById("submit").style.visibility = "visible";
	document.getElementById("nextQuestion").style.visibility = "hidden";
}

function answer()
{
	var a=document.getElementById("value").value;
	var ans= parseInt(a);
	flag=0;
	count++;
	document.getElementById("value").style.visibility = "hidden";
	document.getElementById("submit").style.visibility = "hidden";

	if(count%3==1)
	{
			if(ans===2)
				flag=1;

	}

	else if(count%3==2)
	{
			if(ans==3)
				flag=1;
	}

	else
	{
		if(ans==4)
			flag=1;
	}

	
	if(flag==1)
	{
			document.getElementById("result").innerHTML=  "<font " + "color" + "="  + ' "#ff0000" ' + ">" +  "Correct answer!"   +  "</font>";
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
			document.getElementById("result").innerHTML=  "<font " + "color" + "="  + ' "#ff0000" ' + ">" +  "Wrong answer!"   +  "</font>";

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
		document.getElementById("question2").innerHTML= "<font " + "color" + "="  + ' "#000000" ' + ">"+"If an external force is applied on right column , the change in height of right column is h1 when the density of liquid is d1 and gravity is g. If the  density was three times d1 and gravity one third of g ,the change would have been h2 . What is the ration of h1 by h2 ?  " +  "</font>";
	}

	else if(count2%3==1)
	{
		document.getElementById("question2").innerHTML= "<font " + "color" + "="  + ' "#000000" ' + ">" + "When an external force of 1 N is applied on right column the change in height of water in left column is 0.2 m and that in right  column is 0.1 m. If the area of left column is 2 cm sq and g=10 m/s sq what is the pressure on the top surface of water on right column ? " +  "</font>";
	}

	else
	{
		document.getElementById("question2").innerHTML= "<font " + "color" + "="  + ' "#000000" ' + ">" + "When an external force is applied on right column with circular area 4 cm sq, the ratio of change in height of water in it to left column is 1/4. If the change in volume of water in left column is 2000 cm cube ,what is the force applied on right column ? " +  "</font>";
	}

	document.getElementById("result2").innerHTML="";
	//count2++;
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
			if(ans2===1)
				flag2=1;

			
	}

	else if(count2%3==2)
	{
			if(ans2==2500)
				flag2=1;
	}

	else
	{
		if(ans2==80)
			flag2=1;
	}

	

	if(flag2==1)
	    {
			document.getElementById("result2").innerHTML=   "<font " + "color" + "="  + ' "#ff0000" ' + ">" +  "Correct answer!"   +  "</font>";
      
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
			document.getElementById("result2").innerHTML=   "<font " + "color" + "="  + ' "#ff0000" ' + ">" +  "Wrong answer!"   +  "</font>";
       
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
                form.target="hiddenFrame";
             
                
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


</script>


<script>	






	var scene,camera,renderer,plane,grid,color,loader,object,flag,controls,heightwr,heightwl,heighttl,heighttr,arrowHelper2,arrowHelper,arrowHelper1;
	var stimulate,fl,dir1,dir2,dir,origin,origin2,origin1;


	scene= new THREE.Scene();
	camera= new THREE.PerspectiveCamera(50,window.innerWidth/window.innerHeight,0.1,1000);


	renderer=new THREE.WebGLRenderer({alpha:true});
	renderer.setSize(window.innerWidth,window.innerHeight);
	renderer.setClearColor(0x000000,0);

	document.body.appendChild(renderer.domElement);


	plane = new THREE.Mesh(
		new THREE.PlaneBufferGeometry( 1000,1000 ),
		new THREE.MeshBasicMaterial( { visible: false} )
	);
	scene.add( plane );


	grid= new THREE.GridHelper(300,5);
	color=new THREE.Color("rgb(255,255,255)");
	grid.setColors(color,0x00ff00);
	//scene.add(grid);
	//grid.position.y=-1;
	

	     function onWindowResize(){

    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();

    renderer.setSize( window.innerWidth, window.innerHeight );

    }


    window.addEventListener( 'resize', onWindowResize, false );










var loader = new THREE.TextureLoader();
				var groundTexture = loader.load( 'img/hp.jpg' );
				groundTexture.wrapS = groundTexture.wrapT = THREE.RepeatWrapping;
				groundTexture.repeat.set( 1, 1 );
				groundTexture.anisotropy = 16;
				var groundMaterial = new THREE.MeshBasicMaterial( { color: 0xffffff, specular: 0x111111, map: groundTexture } );
				var mesh = new THREE.Mesh( new THREE.PlaneBufferGeometry( 350, 180 ), groundMaterial );
				//mesh.rotation.x =  Math.PI / 2;
				mesh.receiveShadow = true;
				//scene.add( mesh );
				mesh.position.y=35;
				mesh.position.z=-10;



//init();

//function init()	{
var loader = new THREE.ObjectLoader();
var object = loader.parse(hp);
camera.position.z=140;
camera.position.y=0;
camera.position.x=0;
scene.add( object );
camera.lookAt(scene.position);
//renderer.render(scene, camera);


controls = new THREE.OrbitControls(camera,renderer.domElement);
controls.addEventListener('change',render);


object.position.y=-20;

targetl = object.children[6];
targetr=object.children[7];
waterl=object.children[2];
waterm=object.children[0];
waterr=object.children[4];
glassl=object.children[3];
glassr=object.children[5];
glassm=object.children[1];
box=object.children[8];
flag=1;;


heightwl=2*waterl.position.y;
heightwr=2*waterr.position.y;
heighttl=targetl.position.y;
heighttr=targetr.position.y;


dir = new THREE.Vector3( -30, 21.5, 0 );
origin = new THREE.Vector3( -30, 31.5-20, 0 );
length = 10;
hex = 0x000000;

arrowHelper = new THREE.ArrowHelper( dir, origin, length, hex,100 );
//scene.add( arrowHelper );


var mass_on_it=90;
var mass=mass_on_it;
var g=10;
var density=1000;

var fr=mass*g;
var arear=0.09*Math.PI*0.09;
var hr=16.5;
var wfr=density*g*arear*hr;
var total_forcer=wfr+fr;



var fl=0.00;
var areal=arear/2;
var hr=40.2;
var wfl=density*g*areal*hr;
var  total_forcel=wfl+fl;

 dir = new THREE.Vector3( 0, 1, 0 );
origin = new THREE.Vector3( -50, 0-20, 0 );
 length = 40;
 hex = 0x000000;
 var hex1=0x006600;

arrowHelper = new THREE.ArrowHelper( dir, origin, length, hex,8 );
scene.add( arrowHelper );

origin1 = new THREE.Vector3( +50, 0-20, 0 );
length1 = 16.5;

arrowHelper1 = new THREE.ArrowHelper( dir, origin1, length1, hex,8 );
scene.add( arrowHelper1 );

dir2 = new THREE.Vector3( 0, -1, 0 );
origin2 = new THREE.Vector3( -30, 2*waterl.position.y+13-20, 0 );

arrowHelper2 = new THREE.ArrowHelper( dir2, origin2, 16, hex1, 8);
scene.add( arrowHelper2 );


fl=0.00;
stimulate=1;



var q=0.0,p=0.0,count=0;
var prev_water_level_r=16.5;
var pdensity,pg,flag10,flag11;
flag10=1;flag11=1;

var render=function()
	{	
		
			var xxx=0;

			requestAnimationFrame(render);
			renderer.render(scene,camera);

		if(stimulate!=1&&((p<q)||(p==q&&((pdensity*pg)>(density*g)))))
		{
				

				
				
				var equilibrium=0;
				var deltah2=(fl/(2*arear*g*density));
				var finalLengthR=heightwr+deltah2;
				var finalScale=finalLengthR/heightwr;
				var scaleIncrement= finalScale/300;
				var deltah1=((2*fl)/(2*arear*g*density));
			
				
			if(waterr.scale.y<=finalScale)
			
				{
					 
						waterr.scale.y+=scaleIncrement;
						waterr.position.y=(waterr.scale.y*heightwr)/2;
						targetr.position.y=2*waterr.position.y+1.5;
						box.position.y=2*waterr.position.y+3+4.5;
						//currentLengthR=waterr.scale.y*heightwr;

						waterl.scale.y-=(scaleIncrement);
						waterl.position.y=(waterl.scale.y*heightwl)/2;
						targetl.position.y=2*waterl.position.y+1.5;
						//box.position.y=2*waterr.position.y+3+4.5;

						scene.remove(arrowHelper);
						arrowHelper = new THREE.ArrowHelper( dir, origin, 2*waterl.position.y, hex );
						scene.add(arrowHelper);
						
						scene.remove(arrowHelper1);
						arrowHelper1 = new THREE.ArrowHelper( dir, origin1, 2*waterr.position.y, hex );
						scene.add(arrowHelper1);


						origin2 = new THREE.Vector3(-30,2*waterl.position.y+13-20,0);
						scene.remove(arrowHelper2);
						arrowHelper2 = new THREE.ArrowHelper( dir2,origin2,16,hex1,8);
						scene.add(arrowHelper2);

						//if((waterr.scale.y+scaleIncrement)>=finalScale)
						//	waterr.scale.y=finalScale;


				}

				else
				{
					xxx=1;
				}

		}


		 if (stimulate!=1&&(p>q||((p==q)&&((pdensity*pg)<(density*g)))))
		{



			
			var equilibrium=0;
			var deltah2=((q)/(2*arear*density*g));
			var finalLengthL=heightwl-2*deltah2;
			var finalScale=finalLengthL/heightwl;
			var scaleIncrement= finalScale/300;
			var deltah1=((2*fl)/(2*arear*density*g));
			
			//fl=document.getElementById("force").value;
			
				

			if(waterl.scale.y<=finalScale)
			{

			waterl.scale.y+=scaleIncrement;
			waterl.position.y=(waterl.scale.y*heightwl)/2;
			targetl.position.y=2*waterl.position.y+1.5;
			box.position.y=2*waterl.position.y+3+4.5;
			//currentLengthL=waterl.scale.y*heightwl;

			waterr.scale.y-=(scaleIncrement);
			waterr.position.y=(waterr.scale.y*heightwr)/2;
			targetr.position.y=2*waterr.position.y+1.5;
			box.position.y=2*waterr.position.y+3+4.5;
			//currentLengthR=waterr.scale.y*heightwr;			

			scene.remove(arrowHelper);
			arrowHelper = new THREE.ArrowHelper( dir, origin, 2*waterl.position.y, hex );
			scene.add(arrowHelper);
			
			scene.remove(arrowHelper1);
			arrowHelper1 = new THREE.ArrowHelper( dir, origin1, 2*waterr.position.y, hex );
			scene.add(arrowHelper1);


			origin2 = new THREE.Vector3(-30,2*waterl.position.y+13-20,0);
			scene.remove(arrowHelper2);
			arrowHelper2 = new THREE.ArrowHelper( dir2,origin2,16,hex1,8);
			scene.add(arrowHelper2);


			}


			else
			{
				xxx=1;
			}

			

		}

		
		
	if(stimulate!=1)
	{
		
		
	
			if(!xxx)
			{
		
					var object1=document.getElementById("info");
				object1.innerHTML= "Weight of block = 900 N"+"<br>"+"Area of left coloum = A1"+"<br>"+"Area of right coloum = 2*A1"+"<br>"+
					"Level of water in left part = "+parseFloat(Math.round((waterl.position.y*2)* 100) / 100).toFixed(2) + "m<br>"+"Level of water in right part = "+parseFloat(Math.round((2*waterr.position.y) * 100) / 100).toFixed(2)+"m<br>"+"External Force on left coloum ="+fl; 

					


				 wfr=density*g*arear*waterr.position.y*2;
				 total_forcer=wfr+fr;

				wfl=density*g*arear*waterl.position.y;
				//total_forcel=wfl+fl;

				str=fl.toString();
				total_forcel=wfl+parseFloat(str);


				var object2=document.getElementById("info2");
					object2.innerHTML= "Force on left coloum =" +parseFloat(Math.round((total_forcel) * 100) / 100).toFixed(2)+"N"+"<br>Force on right coloum ="+parseFloat(Math.round((total_forcer) * 100) / 100).toFixed(2)+"N";
				
				prev_water_level_r=2*waterr.position.y;
			}


			else
			{
			 	

					var object1=document.getElementById("info");
					object1.innerHTML= "Weight of block = 900 N"+"<br>"+"Area of left coloum = A1"+"<br>"+"Area of right coloum = 2*A1"+"<br>"+
					"Level of water in left part = "+(40-2*(parseFloat(Math.round((waterr.position.y*2)* 100) / 100).toFixed(2)-16.5)) + "m<br>"+"Level of water in right part = "+parseFloat(Math.round((2*waterr.position.y) * 100) / 100).toFixed(2)+"m<br>"+"External Force on left coloum ="+fl; 

						 wfr=density*g*arear*waterr.position.y*2;
						 total_forcer=wfr+fr;

						wfl=density*g*arear*waterl.position.y;
						//total_forcel=wfl+fl;

						str=fl.toString();
						total_forcel=wfl+parseFloat(str);


			 			var object2=document.getElementById("info2");
					    object2.innerHTML= "Force on left coloum =" +parseFloat(Math.round((total_forcel) * 100) / 100).toFixed(2)+"N"+"<br>Force on right coloum ="+parseFloat(Math.round((total_forcel) * 100) / 100).toFixed(2)+"N";
				        prev_water_level_r=2*waterr.position.y;


				        if(fl==0)
				        {
				        	var object1=document.getElementById("info");
					object1.innerHTML= "Weight of block = 900 N"+"<br>"+"Area of left coloum = A1"+"<br>"+"Area of right coloum = 2*A1"+"<br>"+
					"Level of water in left part = "+40.0 + "m<br>"+"Level of water in right part = "+16.5+"m<br>"+"External Force on left coloum ="+fl; 


						var object2=document.getElementById("info2");
					    object2.innerHTML= "Force on left coloum =" +5100.00+"N" +"<br>Force on right coloum ="+5100.00 + "N";
				        prev_water_level_r=2*waterr.position.y;



				        }



			}

		
	}	

}

render();

function myf()
{	
	p=q;
	pdensity=density;
	pg=g;
	q=fl=parseFloat(document.getElementById("force").value);
	g=parseFloat(document.getElementById("gravity").value);
	density=1000;

	if((fl>=0&&fl<=4000)&&(g>=7&&g<=20)&&(density>=800&&density<=2000))
	{
		stimulate=0;

		 if (stimulate!=1&&(p>q||((p==q)&&((pdensity*pg)<(density*g)))))
			{flag11=0;}

		else {flag10=0;}	

	


	}
	else
	{
		if(!(fl>=0&&fl<=4000))
			alert("Value of force is not in proper range ! Minimum- 0 and Maximum- 4000");

		if(!(g>=7&&g<=20))
			alert("Value of g is not in proper range ! Minimum- 7 and Maximum- 20");

		if(!(density>=800&&density<=2000))
			alert("Value of density is not in proper range ! Minimum- 800 and Maximum- 2000");

		stimulate=1;
	}
}




</script>
<iframe name="hiddenFrame" style="display:none"></iframe> 
</body>
</html>
