	function checkId(value){
			
			if(!(isNaN(value))){
				if(value.length>13){
				document.getElementById("err").innerHTML="กรุณากรอกให้ถูกต้อง";
				document.getElementById("exampleInputUser").value="";
				document.getElementById("exampleInputUser").focus();
				document.getElementById("err").style.color="red";
				
				}else if(value.length<=13){
					document.getElementById("exampleInputUser").value;
					document.getElementById("err").style.color="white";
					

				}
				
			}else{
				document.getElementById("err").innerHTML="กรุณาข้อมูลที่เป็นตัวเลขเท่านั้น";
				document.getElementById("exampleInputUser").value="";
				document.getElementById("err").style.color="red";
				}
		}

	function CheckText(value){
			var count = value.length;
		
			for(var i=0;i<count;i++){
				if(!(isNaN(value.charAt(i)))){
					document.getElementById("error").innerHTML="กรุณาข้อมูลที่เป็นตัวอักษรเท่านั้น";
					document.getElementById("exampleInputName").value="";
					document.getElementById("exampleInputName").focus();
					document.getElementById("error").style.color="red";
					
					
				}else{
					document.getElementById("exampleInputName").value;
					document.getElementById("error").style.color="white";
					
				}
			}
	}

	function checkNum(value){
			
			if(!(isNaN(value))){
				if(value.length!=10){
				document.getElementById("error2").innerHTML="กรุณากรอกให้ถูกต้อง";
				document.getElementById("exampleInputTel").value="";
				document.getElementById("exampleInputTel").focus();
				document.getElementById("error2").style.color="red";
				
				}else if(value.length==10){
					document.getElementById("exampleInputTel").value;
					document.getElementById("error2").style.color="white";


				}
				
			}else{
				document.getElementById("error2").innerHTML="กรุณาข้อมูลที่เป็นตัวเลขเท่านั้น";
				document.getElementById("exampleInputTel").value="";
				document.getElementById("error2").style.color="red";
				}
		}