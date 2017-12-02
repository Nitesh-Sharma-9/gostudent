  // AJAX - Asynchronized Java Script with XML 
  // use/need - for refresh the page selected/dynamic part
  function view(st)
   {
      if (window.ActiveXObject) // for Internet explorer
        x = new ActiveXObject("Microsoft.XMLHTTP");
      else
        x = new XMLHttpRequest(); // for other browser 
      var url="City.jsp?s="+st.value;
      x.onreadystatechange = viewState; // call the ready state change function 
      x.open("GET", url, true);
      x.send(null); // for pass the post method argument. 
     // x.send("uid=u&ps=ps"); // for pass the post method argument. 
   }
   function viewState()
   {
      //alert(x.readyState); 
      if (x.readyState==4 || x.readyState=="complete")
        document.getElementById("cty").innerHTML=x.responseText;
   }
 