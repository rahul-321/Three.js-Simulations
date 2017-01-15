<!doctype html>
<% 
String url = request.getParameter("lis_outcome_service_url");
String did = request.getParameter("lis_result_sourcedid");
String key = request.getParameter("oauth_consumer_key");
String back = request.getParameter("back_url");
%>

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



       #info6{
				float: left;
				border: 2px solid black;
				padding: 0.6%;
				font-size: 128%;
				z-index:1;
				top: 38%;
				margin-left: 77%;
				position:absolute;
				 width:21%;
				 min-height: 8%;
				 font-weight: bold;
			}

       #info4{
				float: left;
				border: 2px solid black;
				padding: 0.6%;
				font-size: 124%;
				z-index:1;
				top: 60%;
				margin-left: 77%;
				position:absolute;
				 width:21%;
				 min-height: 12%;
				 font-weight: bold;
			}

      #info{
				float: left;
				border: 2px solid black;
				padding: 0.6%;
				font-size: 128%;
				z-index:1;
				top: 7.5%;
				margin-left: 77%;
				position:absolute;
				width:21%;
				min-height:18%;
				font-weight: bold;
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
				width:24%;
				font-weight: bold;
			}

			#info3{
				float: left;
				border: 2px solid black;
				padding: 0.9%;
				font-size: 128%;
				z-index:1;
				top:37%;
				margin-left:1%;
				position:absolute;
				width:24%;
				font-weight: bold;
			}



#level1{
				float: left;
				border: 2px solid black;
				padding: 0.2%;
				font-size: 128%;
				z-index:1;
				top:56%;
				margin-left: 1%;
				position:absolute;
				width:25.5%;
				     font-weight:bold;
			}


#level2{
	
				float: left;
				border: 2px solid black;
				padding: 0.2%;
				font-size: 128%;
				z-index:1;
				top:56%;
				margin-left: 1%;
				position:absolute;
				width:25.5%;
				     font-weight:bold;
			}


#info5{
				float: left;
				border: 2px solid black;
				padding: 0.9%;
				font-size: 128%;
				z-index:1;
				top:7.5%;
				margin-left: 45%;
				position:absolute;
				width: 11.5%;
				font-weight: bold;
			}


 #info9{

        float: left;
        border: 0px solid black;
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
        margin-left: 42%;
        top: 16.5%;
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




</STYLE>

<script src="js/three.js"></script>
<script src="js/dat.gui.min.js"></script>
<script type="text/javascript" src="js/OrbitControls.js"></script>
<script src="js/TrackballControls.js"></script>
<script src="js/threex.keyboardstate.js"></script>
<script type = "text/javascript" language = "javascript"></script>
<script type="text/javascript" src = "js/m3.js" > </script>

</head>


<body onload="initialState()" style="margin:0 ;padding:0;overflow:hidden;">

<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel=stylesheet href="css/jquery-ui.css" />
<link rel=stylesheet href="css/info.css"/>
<script src="js/info.js"></script>
<div id="infoButton"></div>
<div id="infoBox" title="Demo Information">
Set values of initial angle , length of rod , value of g and mass of bob , then press SIMULATE to perform the experiment. <br>
Once the parameters are set , they cannot be changed when the demo is running.<br>
Press ASSESSMENT to solve problems.<br>
Answer the questions  by submitting a correct integer in the box near SUBMIT button in the assessment section.<br>
You can answer questions in a level any number of times by reselecting the level.<br>
You can any time switch between levels<br>
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
<div id="developer"> Developer: RAHUL KHANDELWAL | Title: OSCILLATORY MOTION	</div>

<div id="info1">
			Initial angle = <input type="number" id="iangle" class="btn" min="0" max="179" value="45"> degree<br>
			Length of rod = <input type="number" id="length" class="btn" min="1" max="40" value="25">meter<br>
			Value of g = <input type="number" id="g" class="btn" min="1" max="20" value="10"><br>
			Mass of bob = <input type="number" id="mass" class="btn" min="1" max="40" value="20"><br>
			<input type="button" class="btn" id="stimulate" value="SET" onclick="myf()"/>
			<input type="button" id="stimulate" class="btn" value="ASSESMENT" onclick="assesment()"/>
			<input type="button" id="pause" class="btn" value="PAUSE" onclick="PauseF()"/>

			
</div>

<div id="info9"></div>

<div id="info">
Time period = 0 seconds <br>
Weight of bob = 200 N<br>
Kinetic Energy = 0 J<br>		
Potential Energy = 0 J<br>
Total Energy = 0 J <br>
</div>


<div id="info4">	
Velocity in X direction=0 m/s<br>
Velocity in Y direction=0 m/s<br>		
Angular Acceleration = 0 rad/s <sup>2</sup><br>  
</div>

<div id="info3" style="visibility: hidden;">
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

<div id="info5">
				 ANGLE= 0 &deg;
</div>


<div id="info6">
					Maximum K.E = 0 J<br> Maximum P.E = 0 J 

</div>



<script>


var L1=[0,0,0],l2=[0,0,0],sl1=sl2=0;


//alert(l1[0]);

	function assesment()
{
	document.getElementById("info3").style.visibility = "visible";
}


function initialState()
{
	 document.getElementById("info3").style.visibility = "hidden";
	 document.getElementById("level1").style.visibility = "hidden";
	 document.getElementById("level2").style.visibility = "hidden";
	 document.getElementById("nextQuestion").style.visibility = "hidden";
	 document.getElementById("nextQuestion2").style.visibility = "hidden";
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
		document.getElementById("question").innerHTML= "<font " + "color" + "="  + ' "#800000" ' + ">" +"Two pendulums A and B have same amplitude . Length of A is 4 times that of B. Ratio of time period of A with that of B is ?  " + "</font>";    
	}

	else if(count%3==1)
	{
		document.getElementById("question").innerHTML= "<font " + "color" + "="  + ' "#800000" ' + ">" +"Two pendulums A and B have same amplitude .B is on a planet with value of g one ninth as that on earth . Ratio of time period of B with that of A is ?  " + "</font>"; 
	}

	else
	{
		document.getElementById("question").innerHTML="<font " + "color" + "="  + ' "#800000" ' + ">" +"Two pendulums A and B have same amplitude . Mass of A is four times that of B. Ratio of time period of A with that of B is ?  " + "</font>"; 
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
		if(ans==1)
			flag=1;
	}

	
	 if(flag==1)
  	{
      document.getElementById("result").innerHTML=  "<font " + "color" + "="  + ' "#0000ff" ' + ">" +  "Correct answer!"   +  "</font>";
      var x=count-1;

      

      if(L1[(x%3)]==0)
      	{
      		L1[(x%3)]=1;
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

      		if(L1[(x%3)]==1)
      	{

            L1[(x%3)]=0;
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

	 document.getElementById("value2").style.visibility = "visible";
     document.getElementById("value").style.visibility = "hidden";
     document.getElementById("submit").style.visibility = "hidden";
     document.getElementById("nextQuestion").style.visibility = "hidden";

	if(count2%3==0)
	{
		document.getElementById("question2").innerHTML=  "<font " + "color" + "="  + ' "#800000" ' + ">" +"Two pendulums A and B have same amplitude . Length of A is 9 times that of B and mass of B  is 3 times A. Ratio of time period of A with that of B is ?  " + "</font>";
	}

	else if(count2%3==1)
	{
		document.getElementById("question2").innerHTML= "<font " + "color" + "="  + ' "#800000" ' + ">" +"Two pendulums A and B have same amplitude . Length of A is 4 times that of B and B is on a pllanet with gravity one sixteenth of that on earth . Ratio of time period of B with A is ?  " + "</font>";
	}

	else
	{
		
		document.getElementById("question2").innerHTML="<font " + "color" + "="  + ' "#800000" ' + ">" +"Two pendulums A and B are identical. Amplitude of A is 1.57 rad and B is 0.18 rad. Ratio of time period of A with B is ?" +"<br>"+ "<input type=" + ' "radio" ' + "name=" + ' "ans" ' + "id=" + ' "1" ' + "checked>" + " 1 " + " "+" "  +"<input type=" + ' "radio" ' + "name=" + ' "ans" ' + "id=" + ' "g1" ' + ">" + "Greater than  1" +  "</font>";
		
	}

	document.getElementById("result2").innerHTML="";
	if(!(count2%3==2))
	document.getElementById("value2").style.visibility = "visible";
    else
    		document.getElementById("value2").style.visibility = "hidden";
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
			if(ans2===3)
				flag2=1;
	}

	else if(count2%3==2)
	{
			if(ans2==2)
				flag2=1;
	}

	else
	{
		if(document.getElementById("g1").checked==true)
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



	var scene= new THREE.Scene();
	var camera= new THREE.PerspectiveCamera(50,window.innerWidth/window.innerHeight,0.1,1000);


	var renderer=new THREE.WebGLRenderer();
		renderer.setSize(window.innerWidth,window.innerHeight);
		renderer.setClearColor(0xffffff);

	document.body.appendChild(renderer.domElement);


	var plane = new THREE.Mesh(
		new THREE.PlaneBufferGeometry( 1000,1000 ),
		new THREE.MeshBasicMaterial( { visible: false} )
	);
	scene.add( plane );


	var grid= new THREE.GridHelper(300,5);
	var color=new THREE.Color("rgb(255,255,255)");
	 	grid.setColors(color,0x778899);

		
	renderer.setClearColor( 0xaaccff);



	camera.position.z=80;
	camera.position.y=10;
	camera.position.x=3;
	camera.lookAt(scene.position);


	var loader = new THREE.ObjectLoader();
	var object = loader.parse(p);

	var protactor=object.children[0];
	
	var Rod= object.children[2];
	var pivot= object.children[1];

    var rod=Rod.children[0];
    var obj=Rod.children[1];

	scene.add(protactor);
	scene.add(Rod);
	scene.add(pivot);




	     function onWindowResize(){

    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();

    renderer.setSize( window.innerWidth, window.innerHeight );

    }

     window.addEventListener( 'resize', onWindowResize, false );


	protactor.scale.x=0.8;
	protactor.scale.z=0.8;
	protactor.position.y=10;
	Rod.position.y=10;
	pivot.position.y=10;
	Rod.position.y=10;

	
    Rod.rotation.z=Math.PI;
    

    var theta=0;
    increment=0;
	controls = new THREE.OrbitControls(camera,renderer.domElement);
	controls.addEventListener('change',render);
	flag=1;
	stimulate=0;



	
	var length;
	var mass;
	var gravity;

	var x,y,z,k,indicate;
	x=0;
    var min=0;
    var max=0;
    k=0;
    indicate=0;

    var time_period=0.0;
    var t_increment=0.0;
    var current_velocity=0.0;
    var current_acc=0.0;
    var angle;
    var Vmax;
    var radian= Math.PI/180;
    var signx;
    var signy;
    var asignx;
    var asigny;

	var object2=document.getElementById("info5");
	var object3=document.getElementById("info");
	var object4=document.getElementById("info4");
	var object5=document.getElementById("info6");
		var render=function()
	{	
			requestAnimationFrame(render);
			renderer.render(scene,camera);

			

			if(!stimulate)
			{
				
				object2.innerHTML= "ANGLE =" +parseFloat(Math.round((x) * 10)*10 / 100).toFixed(1) + "&deg;";
			}


			
					

			if(stimulate)
			{
					

					if((Rod.rotation.z>=(Math.PI-theta))&&flag&&Rod.rotation.z>=Math.PI)  // moving frm right to left in r s
					{
						
						angle=Rod.rotation.z-Math.PI;
						current_velocity=(Math.sqrt( Math.abs((Vmax*Vmax) - (2*gravity*length*(1-Math.cos(angle) ) ) ))/length);
						current_acc=gravity*Math.sin(angle)/length;
						increment=Math.abs((current_velocity*t_increment )+ (0.5*current_acc*t_increment*t_increment));  
						Rod.rotation.z-=increment;
						signx=-1;
						signy=-1;
						asigny=-1;
						asignx=-1;
					}

					else if((Rod.rotation.z>=(Math.PI-theta))&&flag&&Rod.rotation.z<=Math.PI) //moving from right  to left in l s
					{
						angle=-Rod.rotation.z+Math.PI;
						current_velocity=(Math.sqrt( Math.abs((Vmax*Vmax) - (2*gravity*length*(1-Math.cos(angle) ) ) ))/length);
						current_acc=gravity*Math.sin(angle)/length;
						increment=Math.abs((current_velocity*t_increment )- (0.5*current_acc*t_increment*t_increment));  
						Rod.rotation.z-=increment;
						signx=-1;
						signy=1;
						asignx=1;
						asigny=-1;
												
					}

					else flag=0;
					
					if((Rod.rotation.z<=(Math.PI-theta))||!flag)
					{
						flag=0;
						if(Rod.rotation.z<=(Math.PI-theta))
							indicate=1;
						else indicate=0;

						if((Rod.rotation.z<=(Math.PI+theta))&&(Rod.rotation.z>=Math.PI))   // moving frm left  to right in rs
						{
							angle=-Rod.rotation.z+Math.PI;
							current_velocity=(Math.sqrt( Math.abs((Vmax*Vmax) - (2*gravity*length*(1-Math.cos(angle) ) ) ))/length);
							current_acc=gravity*Math.sin(angle)/length;
							increment=Math.abs((current_velocity*t_increment )+ (0.5*current_acc*t_increment*t_increment));  
							Rod.rotation.z+=increment;
							signx=1;
							signy=1;
							asignx=-1;
							asigny=-1;
					 
						}

						else if((Rod.rotation.z<=(Math.PI+theta))&&(Rod.rotation.z<Math.PI))  // moving frm left to right in ls
						{
							angle=Rod.rotation.z-Math.PI;
							current_velocity=(Math.sqrt( Math.abs((Vmax*Vmax) - (2*gravity*length*(1-Math.cos(angle) ) ) ))/length);
							current_acc=gravity*Math.sin(angle)/length;
							increment=Math.abs((current_velocity*t_increment )- (0.5*current_acc*t_increment*t_increment));  
							Rod.rotation.z+=increment;
							signx=1;
							signy=-1;
							asignx=1;
							asigny=-1;

						}

						else
						{
							flag=1;
						}

					}

					y=parseFloat(Rod.rotation.z-Math.PI)*180/(Math.PI);
					z=parseFloat(x);
					k=Rod.rotation.z;


					if(indicate)
					{		

							object2.innerHTML= "ANGLE =" +parseFloat(Math.round((-z) * 10)*10 / 100).toFixed(1) + "&deg;";
							object3.innerHTML= "Time period = " + parseFloat(Math.round((time_period) * 10)*10 / 100).toFixed(1) + "<br>" +
										"Weight of bob = " +parseFloat(Math.round((mass*gravity) * 10)*10 / 100).toFixed(1) + "<br>" +
										"Kinetic Energy = " + parseFloat(Math.round((0.0) * 10)*10 / 100).toFixed(1) +"<br>"+
										"Potential Energy = " + parseFloat(Math.round((mass*gravity*length*(1-Math.cos(z*radian))) * 10)*10 / 100).toFixed(1)+"<br>"+
										"Total Energy = " + parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10)/100)).toFixed(2);
							object4.innerHTML= "Velocity in X direction = " +parseFloat(Math.round(signx*(Math.abs(current_velocity*length*Math.cos(angle)* 10)))*10 / 100).toFixed(1)+ " m/s"+
										"<br>" + 
										"Velocity in Y direction = " + parseFloat(Math.round(signy*(Math.abs(current_velocity*length*Math.sin(angle)* 10)))*10 / 100).toFixed(1)  +" m/s"+ "<br>" + "Angular Acceleration =" +parseFloat(Math.round((Math.abs((gravity/length)*Math.sin(angle)* 10)))*10 / 100).toFixed(1) ;
										object5.innerHTML="Maximum K.E = " + parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10)/100)).toFixed(2) +" J" + "<br>" + "Maximum P.E = " +
					 parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10))/100).toFixed(2) + " J" ;	
					}

					else if(k>=max)
					{
					object2.innerHTML= "ANGLE =" +parseFloat(Math.round((z) * 10)*10 / 100).toFixed(1)  +"&deg;";
					object3.innerHTML= "Time period = " + parseFloat(Math.round((time_period) * 10)*10 / 100).toFixed(1) + "<br>" +
										"Weight of bob = " +parseFloat(Math.round((mass*gravity) * 10)*10 / 100).toFixed(1) + "<br>" +
										"Kinetic Energy = " + parseFloat(Math.round((0.0) * 10)*10 / 100).toFixed(1) +"<br>"+
										"Potential Energy = " + parseFloat(Math.round((mass*gravity*length*(1-Math.cos(z*radian))) * 100) / 100).toFixed(1)+
										"<br>"+
										"Total Energy = " + parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10)/100)).toFixed(2);
					object4.innerHTML= "Velocity in X direction = " +parseFloat(Math.round(signx*(Math.abs(current_velocity*length*Math.cos(angle)* 10)))*10 / 100).toFixed(1)+ " m/s" +
										"<br>" + 
										"Velocity in Y direction = " +  parseFloat((Math.round(signy*current_velocity*length*Math.sin(angle))* 10)*10 / 100).toFixed(1)  +"m/s" + "<br>" +"Angular Acceleration =" +parseFloat(Math.round((Math.abs((gravity/length)*Math.sin(angle)* 10)))*10 / 100).toFixed(1) ; 					
					object5.innerHTML="Maximum K.E = " + parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10)/100)).toFixed(2) +" J" + "<br>" + "Maximum P.E = " +
					 parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10))/100).toFixed(2) + " J" ;						
					
					}

					else
					{

					object2.innerHTML= "ANGLE =" +parseFloat(Math.round((y) * 10)*10 / 100).toFixed(1)+ "&deg;";
					object3.innerHTML= "Time period = " + parseFloat(Math.round((time_period) * 100) / 100).toFixed(2) +" s" +"<br>" +
										"Weight of bob = " +parseFloat(Math.round((mass*gravity) * 100) / 100).toFixed(2) +" N"+ "<br>" +
										"Kinetic Energy = " + parseFloat(Math.round((0.5*mass*current_velocity*current_velocity*length*length) * 10)*10 / 100).toFixed(1) +" J"+"<br>"+
										"Potential Energy = " + parseFloat(Math.round((mass*gravity*length*(1-Math.cos(angle))) )*10 / 10).toFixed(1)+" J"+  "<br>"+
										"Total Energy = " + parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10)/100)).toFixed(2) + "J";

					object4.innerHTML= "Velocity in X direction = " +parseFloat(Math.round(signx*(Math.abs(current_velocity*length*Math.cos(angle)* 10)))*10 / 100).toFixed(1)+ " m/s" +
										"<br>" + 
										"Velocity in Y direction = " +parseFloat(Math.round(signy*(Math.abs(current_velocity*length*Math.sin(angle)* 10)))*10 / 100).toFixed(1)  + " m/s"+"<br>" + "Angular Acceleration =" +parseFloat(Math.round((Math.abs((gravity/length)*Math.sin(angle)* 1000))) / 1000).toFixed(2)+"rad/s"+"<sup>"+"2"+"</sup>";  
					object5.innerHTML="Maximum K.E = " + parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10)/100)).toFixed(2) +" J" + "<br>" + "Maximum P.E = " +
					 parseFloat((Math.round(0.5*Vmax*Vmax*mass*10*10))/100).toFixed(2) + " J" ;												   
					}

			}
			
	}

	render();


var x1=300;
var x2;
var l1=24;
var g1=10;
var t1=2*Math.PI*(Math.sqrt(l1/g1))*(1+((1/16)*theta*theta)+((11/3072)*(theta*theta*theta*theta)));


function myf()

{
		


		if(document.getElementById("stimulate").value=="SET")
		{
			
			x=document.getElementById("iangle").value
			length=document.getElementById("length").value;
			mass=document.getElementById("mass").value;
			gravity=document.getElementById("g").value;


		      if (	(x>=0)&&(x<=179)  &&  (length>=1)&&(length<=40)  && (mass>=1)&&(mass<=40) && (gravity>=1)&&(gravity<=20) )
		      	{
					theta=x*Math.PI/180;
					document.getElementById("stimulate").blur();
					document.getElementById("stimulate").value="STIMULATE";
					Rod.rotation.z=Math.PI+theta;
					min=Math.PI-theta;
					max=Math.PI+theta;
					Vmax=Math.sqrt((2*gravity*length*(1-Math.cos(x*radian))));
					time_period=2*Math.PI*(Math.sqrt(length/gravity))*(1+((1/16)*theta*theta)+((11/3072)*(theta*theta*theta*theta)));
					var s= (length)/(2*rod.position.y);
					rod.scale.y=(s);
					rod.position.y=rod.scale.y*rod.position.y;
					obj.position.y=2*rod.position.y-1.5;
				}


				else
				{

					if(!((x>=0)&&(x<=179)))
					{
						alert("Initial angle not in proper range ! Minimum = 0 and Maximum = 179");
					}

					if(!((length>=1)&&(length<=40)))
					{
						alert("Length not in proper range ! Minimum = 1 and Maximum = 40");	
					}

					if(!((mass>=1)&&(mass<=40)))
					{
						alert("Mass not in proper range ! Minimum = 1 and Maximum = 40");		
					}	

					if(!((gravity>=1)&&(gravity<=20)))
					{
						alert("Gravity not in proper range ! Minimum = 1 and Maximum = 20");
					}


				}
					



		}

		 else if(document.getElementById("stimulate").value=="STIMULATE")
		{
		
			num=0;
			stimulate=1;
			document.getElementById("stimulate").blur();
			document.getElementById("stimulate").value="RESET";
			x2=(x1*t1*Math.sqrt(length*g1))/(time_period*(Math.sqrt(gravity*l1)));
			t_increment=time_period/x2;
			initial_velocity=0;
			flag=1;
		}

		else
		{
			x=0;
			Rod.rotation.z=Math.PI;
			document.getElementById("stimulate").blur();
			document.getElementById("stimulate").value="SET";
			stimulate=0;
			rod.position.y=12;
			rod.scale.y=1;
			obj.position.y=2*rod.position.y-1;
		}
	
}

function PauseF()
{
	if(document.getElementById("pause").value=="PAUSE")
	{

	document.getElementById("pause").blur();
	document.getElementById("pause").value="RESUME";
	stimulate=0;
	}




	else
	{
		document.getElementById("pause").blur();
		document.getElementById("pause").value="PAUSE";
		stimulate=1;	
	}
}


</script>
<iframe name="hiddenFrame" style="display:none"></iframe> 
</body>
</html>


