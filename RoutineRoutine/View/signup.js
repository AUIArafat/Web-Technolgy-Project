var fname=false, femail=false, fpass=false, fcpass=false;

    function valid(){
        if(fname){
            if(femail){
                if(fpass){
                    if(fcpass){
                        document.signup.submit.disabled=false;
                        var btn = document.getElementById("sub");
                        btn.style.backgroundColor='#428bca';
                        btn.style.cursor='pointer';
                    }
                    else verify(document.signup.cpass);
                }
                else verify(document.signup.pass);
            }
            else verify(document.signup.email);
        }
        else verify(document.signup.id);
    }

    function showHint() {
        //document.getElementById("spinner").style.visibility= "visible";
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                resp=xmlhttp.responseText;
                document.getElementById("txtHint").innerHTML = resp;
            }
        };
        var url="jsondb.php?id="+document.signup.id.value;
        //alert(url);
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }

    function verify(val){
        //showHint();
        id = document.signup.id.value;
        email = document.signup.email.value;
        pass = document.signup.pass.value;
        cpass = document.signup.cpass.value;
        if(val.getAttribute("name")=="id"){
            var ok = document.getElementById("img");
            var error = document.getElementById("img1");
            if(id.length>3){
                ok.style.display = 'block';
                error.style.display = 'none';
                fname=true;
                showHint();
            }   
            else{
                error.style.display = 'block';
                fname=false;
                showHint();
            }
        }
        else if(val.getAttribute("name")=="email"){
            var ok = document.getElementById("eimg");
            var error = document.getElementById("eimg1");
            var check1 = email.indexOf("@"); 
            var check2 = email.indexOf(".com");
            if(check1 > 0 && check2 > 0){
                ok.style.display = 'block';
                error.style.display = 'none';
                femail=true;

            }
            else
            {
                error.style.display = 'block';
                femail=false;
            }
        }
        else if(val.getAttribute("name")=="pass"){
            var ok = document.getElementById("pimg");
            var error = document.getElementById("pimg1"); 
            if(pass.length<6){
                error.style.display = 'block';
                fpass=false;
            }
            else{

                fpass=true;
                ok.style.display = 'block';
                error.style.display = 'none';

            }
        }

        else if(val.getAttribute("name")=="cpass"){
            var ok = document.getElementById("cimg");
            var error = document.getElementById("cimg1"); 
            if(pass!=cpass){
                error.style.display = 'block';
                fcpass=false;

            }
            else{

                fcpass=true;
                ok.style.display = 'block';
                error.style.display = 'none';

            }
        }
         valid();
    }

