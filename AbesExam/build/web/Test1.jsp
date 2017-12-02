<!DOCTYPE html>
<html lang="en">
<head>
<title>Softworkers</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquery-3.0.0.min.js"></script>
  <script src="bootstrap.min.js"></script>
  <script>
      function myFunction(elmnt, clr) {
    elmnt.style.color =clr;
}
  </script>
  <style type="text/css">
    
  #login
  {
      margin-left:0px;
	  margin-top:100px;
	  margin-right:5px;
  }
  .main
  {
          border:2px solid #cccccc;
          width:1200px;
          height: 10700px;
          border-radius: 5px;
          //background-image: url("images/fr.gif");
          background-color: #ffffff;
          margin-left: 150px;
          margin-top: 50px;

  }
  .c
  {
      margin-left: 20px;
      margin-top: 1px;
      width: 800px;
  }
  .tx
  {
       margin-left: 10px;
       font-size: 14px; 
       color: #000000;
  }
  #tx1
  {
       margin-left: 10px;
       font-size: 14px; 
       color: #000000;
  }
 
  </style>
</head>
<body bgcolor="#FFFFFF" class="main">
    <form action="ResultAction" method="post">
<nav id="login" class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-default">
      <b class="navbar-brand " ></b>    
	  </div>
    <ul class="nav navbar-nav">
      <li><a  class="navbar-brand" href="#">Home</a></li>
      <li><a href="#">  Aptitude  </a></li>
      <li><a href="#">  Logical Reasoning</a></li>
      <li><a href="#">  Verbal ability </a></li>
      <li><a href="#">  Programming</a></li>
     </ul>
  </div>
</nav>
    <h4 style="margin-left: 10px; color: #f10707"> Welcome to Softworkers.com !</h4>  
    <hr><h4 style="margin-left: 10px; color: #999999">Here, you can read programming questions and answers for your interview and placement preparation.</h4><hr>
    <p style="margin-left: 10px; color: #07d114">C Programing Test</p>
    <br>
    <p class="tx"><b id="var1">1</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var1"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var1"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var1"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var1"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <p class="tx"><b id="var2">2</b>.In mathematics and computer programming, which is the correct order of mathematical operators ?</p>
    <input style="margin-left: 20px" type="radio" name="var2"  value="A"  /> <span id="tx1">A. Addition, Subtraction, Multiplication, Division</span><br>
    <input style="margin-left: 20px" type="radio" name="var2"  value="B" /> <span id="tx1">B. Division, Multiplication, Addition, Subtraction</span><br>
    <input style="margin-left: 20px" type="radio" name="var2"  value="C" /><span id="tx1"> C. Multiplication, Addition, Division, Subtraction</span><br>
    <input style="margin-left: 20px" type="radio" name="var2"  value="D" /><span id="tx1"> D. Addition, Division, Modulus, Subtraction</span><br>
    <br>
 <p class="tx"><b id="var3">3</b>.How will you free the allocated memory ?</p> 
    <input style="margin-left: 20px" type="radio" name="var3"   value="A" /> <span id="tx1">A. remove(var-name);</span><br>
    <input style="margin-left: 20px" type="radio" name="var3"   value="B" /> <span id="tx1">B. free(var-name);</span><br>
    <input style="margin-left: 20px" type="radio" name="var3"   value="C" /><span id="tx1"> C. delete(var-name);</span><br>
    <input style="margin-left: 20px" type="radio" name="var3"   value="D" /><span id="tx1"> D. dalloc(var-name);</span><br>
 <br>
    <p class="tx"><b id="var1">4</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var4"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var4"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var4"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var4"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">5</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var5"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var5"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var5"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var5"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">6</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var6"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var6"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var6"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var6"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">7</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var7"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var7"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var7"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var7"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">8</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var8"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var8"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var8"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var8"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">9</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var9"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var9"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var9"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var9"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">10</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var10"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var10"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var10"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var10"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">11</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var11"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var11"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var11"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var11"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">12</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var12"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var12"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var12"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var12"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">13</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var13"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var13"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var13"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var13"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">14</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var14"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var14"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var14"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var14"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">15</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var15"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var15"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var15"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var15"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">16</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var16"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var16"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var16"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var16"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">17</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var17"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var17"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var17"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var17"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">18</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var18"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var18"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var18"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var18"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">19</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var19"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var19"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var19"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var19"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
 <br>
    <p class="tx"><b id="var1">20</b>.How many times "Softworkers" is get printed?</p>
<div class="c">
    <pre><h4>
#include&lt;stdio.h&gt;
int main()
{
  int x;
  for(x=-1; x&lt;=10; x++)
  {
    if(x &lt; 5)
     continue;
    else
     break;
    printf("Softworkers");
  }
  return 0;
}

</h4></pre>
</div>
    <input style="margin-left: 20px" type="radio" name="var20"  value="A"/><span id="tx1">A. 1</span><br>
    <input style="margin-left: 20px" type="radio" name="var20"  value="B"/><span id="tx1">B. 0</span><br>
    <input style="margin-left: 20px" type="radio" name="var20"  value="C" /><span id="tx1">C. 5</span><br>
    <input style="margin-left: 20px" type="radio" name="var20"  value="D"/><span id="tx1">D. 10</span><br>
    <br>
    <input style="margin-left: 600px" type="submit" value="Submit" class="btn-success"/>
</form> 
</body>
</html>
