<% 
String url = request.getParameter("lis_outcome_service_url");
String did = request.getParameter("lis_result_sourcedid");
String key = request.getParameter("oauth_consumer_key");
String back = request.getParameter("back_url");
%>
<!doctype html>

<html>
<head>
<style>
body { 
    
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size:70% 50%;
}
</style>


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

#hello{
        float: left;
        
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
         height:12%;
        position:absolute;
      width:90%;
        top:80%;
      }


#text{
        float: left;
        
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
         height:12%;
        position:absolute;
      width:100%;
        top:14%;
        color:#cc0000;
        text-align: center;
        font-weight: bold;
        font-size: 150%;
      }



      #info{
        float: left;
        
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
         height:12%;
        position:absolute;
      width:60%;
        top:7%;
      }


      #score{

      		float: left;
        
        padding: 0.6%;
        font-size: 128%;
        z-index:1;
         height:12%;
        position:absolute;
      width:10%;
        top:3%;
        left:80%;
        color:#800080;
        font-weight: bold;
        font-size: 150%;

      }




      #developer{
				float: center;
				padding: 1%;
				font-size: 100%;
				left:11%;
				top:1%;
				z-index:1;
				position:absolute;

			}



      
			#logo{
				float: left;
				margin-left:0%;
				top:1%;
				z-index:1;
				position:absolute;
			}


			#explain{
				float: left;
				left:5%;	
				top:20%;
				z-index:1;
				text-align: center;
				position:absolute;
				font-size: 200%;
				 font-style: oblique;

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



</head>
<body   bgcolor="#43ABC9"  onload="myFunction();sudo_start();" style="overflow:hidden;margin:0;padding:0;">


<div id="explain" >Press SIMULATE to perform experiment or GAME to play the game.<br>The game consists of 4 questions. <br>Your aim is set the target , the grey disc  so that the projectile hits it according to the given task .<br>Use 'A' and 'D' key of the keybord to move the target left and right respectively.<br>Press the play button to start the game , a projectile motion will start with some parameters.<br> Then press  TASK to see the question .<br> Then press SET TARGET button ,parameters will change according to the question , then set the target at correct position according to the new parameters.<br> Then see the result.</div>


<div id="logo"><img src="img/logo.png" height=42 width=150></div>
<div id="developer"> Developer: RAHUL KHANDELWAL | Title: PROJECTILE MOTION	</div>


<div id="canvas1">
			<div class="main1">
				<h1 id="head1">YOUR ASSESSMENT REPORT HAS BEEN SUBMITTED.</h1>
				
			
			</div>
</div>

<div id="info">
ANGLE:<input type="button" class="btn" name="angle" min="0" max="90" step="1" value="30" id="angle">  SPEED: <input class="btn" type="button" name="speed" min="0" max="50" step="1" value="25" id="speed"> MASS:<input type="button" class="btn" name="mass" min="0" max="100" step="10" value="50" id="mass"> GRAVITY:<input type="button" class="btn" name="GRAVITY" min="1" max="20" step="1" value="10" id="g">
</div>

<div id="text">

</div>

<div id="score"></div>



<div id="hello">
  <a  href="ProjectileUpload.html" target="_blank"><input id="explore" class="btn" type="button" value="SIMULATE" style="height:40px;width:7%;" /></a>
 
    <input id = "start" class="btn" type = "button" value = "START" style="height:40px;width:7%" onclick="myFunction()" />   
  <input id = "play" class="btn" type = "button" value = "PLAY" style="height:40px;width:7%"  onclick="score()"/>  
  <input id="task" class="btn" type="button" value="TASK" style="height:40px;width:7%"/>
  <input id = "setTarget" class="btn" type = "button" value = "SET TARGET" style="height:40px;width:9%"/>  
  <input id="result" class="btn" type="button" value="RESULT" style="height:40px;width:7%"/>
  <!--input id="clear" type="button" value="CLEAR" style="height:50px;width:75px"/-->
  <input id="restart" class="btn" type="button" value="NEXT QUESTION" style="height:40px;width:12% "/> 
    <input id="waitB" class="btn" type="button" value="waitB" style="height:40px;width:12% "/>  

</div>

</body>


<script>
function myFunction() {
    	//document.body.style.backgroundColor = "#f3f3f3";
    	//document.body.style.backgroundImage = "url('r4.jpg')";
    	//document.getElementById("info").style.visibiility="visible";
        //document.getElementById("info").style.visibility="visible";
        $(document).ready(function() 
				{
					$("#setTarget").hide();$("#result").hide();$("#task").hide();$("#clear").hide();$("#restart").hide();$("#play").hide();$("#waitB").hide();   
				});

				document.getElementById("info").style.visibility="hidden";
		
    
}
</script>



<script src="js/three.js"></script>
<script src="js/dat.gui.min.js"></script>
<script type="text/javascript" src="js/OrbitControls.js"></script>
<script src="js/TrackballControls.js"></script>
	<script src="js/threex.keyboardstate.js"></script>
<script type = "text/javascript" src = "js/ajax.js"></script>
<script type = "text/javascript" language = "javascript"></script>
   
<script>   

var nq=0;

function sudo_start()
{
	$("#play").show( 1 );$("#setTarget").hide( 1 );$("#result").hide( 1 );$("#task").hide( 1 );$("#start").hide( 1 );$("#clear").hide( 1 );$("#waitB").hide(1);
}

		var i=0;
		var question=0;

     $(document).ready(function() {

        $("#restart").click(function () {

        	if(question<4)
        	{

        		if(question==0)
        			{
        			document.getElementById("speed").value = 25;
        			document.getElementById("angle").value = 30;
        			}

        		else if(question==1)
        			{
					document.getElementById("speed").value = 35;        		
					document.getElementById("angle").value = 30;
					}

				else if(question==2)
        			{
					document.getElementById("speed").value = 40;        		
					document.getElementById("angle").value = 40;
					document.getElementById("mass").value = 150;
					}					


				else if(question==3)
        			{
					document.getElementById("speed").value = 30;        		
					document.getElementById("angle").value = 30;
					document.getElementById("g").value=10;
					}


           		$("#play").show( 1 );$("#setTarget").hide( 1 );$("#result").hide( 1 );$("#task").hide( 1 );$("#restart").hide( 1 );$("#clear").hide( 1 );$("#waitB").hide();

           		//removeI();
           		

           	}


           	else
           	{
           		$("#restart").hide(1);
           		endF();
           	}




        });

        $("#play").click(function () {

        	document.getElementById("info").style.visibility="visible";
        	document.getElementById("text").innerHTML="";
        	document.getElementById("explain").style.zIndex=-1;

           $("#play").hide( 1 );$("#task").show( 1 );getValues(this);
        });


        $("#task").click(function () {
           $("#task").hide( 1 );$("#setTarget").show( 1 );getValue(this);
        });

         $("#setTarget").click(function () {
           $("#setTarget").hide( 1 ); $("#result").show( 1 );getValues(this);
        });

        $("#result").click(function () {
          
           $("#setTarget").hide( 1 );$("#clear").show( 1 );$("#result").hide( 1 );
           getValues(this);
        });

         $("#waitB").click(function () {
           $("#restart").show(1);
        });            

			
     });




     

     function onWindowResize(){

    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();

    renderer.setSize( window.innerWidth, window.innerHeight );

    }


    window.addEventListener( 'resize', onWindowResize, false );

     var text2 = document.createElement('div');
	text2.style.position = 'absolute';
	//text2.style.zIndex = 1;    // if you still don't see the label, try uncommenting this
	//text2.style.width = 200;
	text2.style.height = 200;
	text2.style.backgroundColor = "#9E1E9E";
	text2.style.top = 50 + 'px';
	text2.style.left = '40%';
	//text2.style.right = '40%';
	text2.style.fontSize=20+'px';
	document.body.appendChild(text2);



     function foo(button)
     {
        var x=0;
        submit=button;
        if(submit.value=="PLAY")
           x+=1;
     }


     function endF()
     {
 
    	document.getElementById("text").innerHTML=   " "+"Game Over" + "<br>" + "Your Score - " +s + "/4";

    	var sendScore=(s/4);

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
	var camera= new THREE.PerspectiveCamera(45,window.innerWidth/window.innerHeight,0.1,10000);


	var renderer=new THREE.WebGLRenderer();
	renderer.setSize(window.innerWidth,window.innerHeight);
	renderer.setClearColor(0x43ABC9);



	plane = new THREE.Mesh(
		new THREE.PlaneBufferGeometry( 1000,1000 ),
		new THREE.MeshBasicMaterial( { visible: false} )
	);
	//scene.add( plane );

	var cmaterial = new THREE.MeshBasicMaterial({color: 0x555555});
	var cradius = 5;
	var csegments = 36; 
	var circleGeometry = new THREE.CircleGeometry( cradius, csegments );              
	var circle = new THREE.Mesh( circleGeometry, cmaterial );
	circle.position.x=000000;
	circle.position.y=0;
	circle.rotation.x=-3.142*0.5;
	scene.add(circle);


	var maxRange= 2500/ 10;
	var offset=-maxRange/2;

	var scalegeometry= new THREE.BoxGeometry(maxRange,5,1);
	var scalematerial=new THREE.MeshBasicMaterial({color:0xccccff});
	var scale= new THREE.Mesh(scalegeometry,scalematerial);



	
	scale.position.x=0;
	scale.position.z=-10;
	scale.position.y=3;
	scene.add(scale);


	var grid= new THREE.GridHelper(180,5);
	var color=new THREE.Color("rgb(255,255,255)");
	grid.setColors(color,0x3d3d29);
	scene.add(grid);
	grid.position.y=-2.80;
	


	

	//renderer.setClearColor( 0x778899);

	camera.position.y=60;
	camera.position.z=175;
	camera.position.x=0;//maxRange/2+offset;
	
	var flag=0
	var theta;
	var velocity;
	var gravity;
	var i=0,j=1;



	var n;
	var prev=0,current=-maxRange/2;


	for(n=0;n<25;n++)
	{
		var material = new THREE.LineBasicMaterial({
						color: 0x0000ff
						});


		 current+=10;

		var geometry = new THREE.Geometry();
		geometry.vertices.push(
		new THREE.Vector3( current, 0, -9 ),
		new THREE.Vector3( current, 5, -9 )
		//new THREE.Vector3( 10, 0, 0 )
		);

		prev=current;

		var line = new THREE.Line( geometry, material );
		scene.add( line );
	}



	var cpx,cpy;


	var keyboard= new THREEx.KeyboardState();

var s=0;


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
				mesh.position.y=-3;





function score()
{
	
   
   document.getElementById("score").innerHTML="SCORE- "+s+ "/4";

}



function gameOver()
{

}

	function stimulate(i,j,k)
{
	
	
	var done=0;
	var angle=(theta)*3.142/180;
	var v=velocity;
	var g=gravity;
	var T= ((2*v)/g*(Math.sin(angle)));
	var t=0;
	var increment=T/300;
	var hmax=v*v*Math.sin(angle)*Math.sin(angle)/(2*g);
	var range= v*v*Math.sin(2*angle) / g;
   
    var geometry = new THREE.SphereGeometry(3,50,50);
	var material= new THREE.MeshBasicMaterial({color:0xffff00});
	var cube= new THREE.Mesh(geometry,material); 
	
	cube.position.x=offset;
	cube.position.y=0;
	cube.position.z=0;
	scene.add(cube);


	




	

	function calx(t)
	{
		return (v*t*Math.cos(angle)+offset);
	}

	function caly(t)
	{
		return ((v*t*Math.sin(angle))-((0.5*g*t*t)));
	}

		var curve = new THREE.QuadraticBezierCurve(
		new THREE.Vector3( offset, 0, 0 ),
		new THREE.Vector3( (range/2)+offset, hmax*2, 0 ),
		new THREE.Vector3( range+offset, 0, 0 )
	);

	var path = new THREE.Path( curve.getPoints( 50 ) );
	var geometry = path.createPointsGeometry( 50 );
	var material = new THREE.LineBasicMaterial( { color : 0x0000ff } );	
	var curveObject = new THREE.Line( geometry, material );
	scene.add(curveObject);
	
	var controls = new THREE.OrbitControls(camera,renderer.domElement);
		controls.addEventListener('change',render);

		
				if(keyboard.pressed("D")==true)
				{
					circle.position.x+=.3;
					cpx=circle.position.x;
				}


				if(keyboard.pressed("A")==true)
				{
					circle.position.x-=.3;
					cpx=circle.position.x;
				}		

	
				var id;
	var render=function()
	{	

			
			requestAnimationFrame(render);
			renderer.render(scene,camera);
			


			if(i==1)
			{
			



				t+=2*increment;
			
				if(t<=T)
				{
				cube.position.x=calx(t);
				cube.position.y=caly(t);
				if((k-cube.position.x)<=7&&(k-cube.position.x)>=-7&&(T-t)>=0&&(T-t)<=4*increment&&!done)
					{done=1;s+=1;document.getElementById("text").innerHTML=  "CONGRATS YOU WON ! ";score();
						document.getElementById("waitB").click();
					}

				

				}


				else
				{
					if(!done&&k!=1000000)
					{
						done=1;
						document.getElementById("text").innerHTML= "SORRY YOU LOOSE! ";score(); 
						document.getElementById("waitB").click();
						
					}
				}
				
			}


			if(j==1)
			{

				if(keyboard.pressed("D")==true)
				{
					circle.position.x+=.3;
					cpx=circle.position.x;
				}


				if(keyboard.pressed("A")==true)
				{
					circle.position.x-=.3;
					cpx=circle.position.x;
				}

			}


			//scene.add(text2);
			
			
	}

	render();


}





	
var count=0;
var submit;





function getValues(button)
{   
	submit=button;
	var k;
	if(submit.value=="PLAY")
	{

		if(s<4)
		{
	document.body.appendChild(renderer.domElement);
	theta=(document.getElementById("angle").value);
    velocity=(document.getElementById("speed").value);
    gravity=(document.getElementById("g").value);
    
    	
   			k=1000000;
   			count+=1;
   			i=1;
   			if(count==1)
   				scene.remove(circle);
   			stimulate(i,j,k);
   			
   		
   		}


   		else
   		{

   		}
 

}



	if(submit.value=="SET TARGET")
	{
			if(question==1)
    		document.getElementById("speed").value = 50;
    		else if(question==2)
    			document.getElementById("angle").value = 60;
    		else if(question==3)
    			document.getElementById("mass").value = 150;
    		else 
    			document.getElementById("g").value = 5;
    		
    		i=0;j=1;
    		//count+=1;
    		scene.add(circle);
    		k=1000000;
    		stimulate(i,j,k);
    	

	}


	if(submit.value=="RESULT")
	{

			theta=(document.getElementById("angle").value);
    		velocity=(document.getElementById("speed").value);
    		gravity=(document.getElementById("g").value);
		    i=1;j=0;
    		k=circle.position.x;
    		stimulate(i,j,k);
	}


	if(submit.value=="CLEAR")
	{
		
    		
    		i=0;j=1;
    		count+=1;
    		scene.add(circle);
    		k=1000000
    		stimulate(i,j,k);
    	

	}





}





function getValue(button)
{
	if(question==0)
	{
        document.getElementById("text").innerHTML="Set Target when current Speed is doubled keeping the other parameters constant ";
	
	}
	else if(question==1)
	{
		 document.getElementById("text").innerHTML="Set Target when current angle is doubled keeping the other parameters constants  ";
		
	}

	else if(question==2)
	{
		document.getElementById("text").innerHTML="Set Target when current mass is tripled keeping the other parameters constants  ";
	
	}

	else
	{
		document.getElementById("text").innerHTML="Set Target when current gravity is halfed keeping the other parameters constants  ";
		
	}

	question+=1;

	
}




</script>

  
<iframe name="hiddenFrame" style="display:none"></iframe> 
</body>
</html>
