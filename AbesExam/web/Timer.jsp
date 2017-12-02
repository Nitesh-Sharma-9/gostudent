<html>
    <head>
        <style type="text/css">
            .clockStyle{
                background-color: #999;
                border: #999 2px inset;
                padding: 6px;
                color: #ff0000;
                font-family: "Arial Black" , Gadget , sans-serif;
                font-size: 16px;
                font-weight: bold;
                letter-spacing: 2px;
                display: inline;
                margin-left: 800px;
            }
            
        </style>
        <%!
            int h,m,s;
        %>
    </head>
    <body>
        <div id="clockDisplay" class="clockStyle"></div>
        <script type="text/javascript" language="javascript">
           
                var h=0;
                var m=1;
                var s=0;
                function renderTime(){
                
                if(s<10)
                {
                    s="0"+s;
                }
                
                    
                var myClock=document.getElementById('clockDisplay');
                if(m<10)
                {
                  myClock.innerHTML="0"+h+":0"+m+":"+s;
                  document.title="0"+h+":0"+m+":"+s;
                  
                }
                else
                {
                  myClock.innerHTML = "0"+h+":"+m+":"+s;
                  document.title="0"+h+":"+m+":"+s;
                }
                 if(m==0 && s==0)
                {
                    alert("Time UP...... 00:00:00");
                    document.forms[0].action="ResultAction";
                    document.forms[0].submit();
                    
                }
                setTimeout('renderTime()',1000);
               
                if(s==0)
                    s=59;
                else
                    s--;
                if(m!=0  && s==59)
                    m--;  
                
            }
            renderTime();
        </script>
    </body>
</html>