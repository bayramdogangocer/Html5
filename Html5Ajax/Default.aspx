<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--<!DOCTYPE html>--%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>HTML5 Ajax Homework </title>

    <!-- Linking styles -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>
<body> 
  <form  id="form1" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server">
  </asp:ScriptManager>
    <nav id="helpers"><!-- Defining the floating helpers of the page -->
      <button title="Previous" id="nav-prev" class="nav-prev">&lt;-</button> 
      <button title="Jump to slide" id="slide-no">3</button> 
      <button title="Next" id="nav-next" class="nav-next">-&gt;</button>
      <menu>
        <button type="checkbox" data-command="notes" title="View Notes">Notes</button>
        <button type="checkbox" data-command="help" title="View Help">Help</button>
        <button type="checkbox" data-command="back" title="Back to tutorial">Back</button>
      </menu>
    </nav>
    <div class="presentation"><!-- Defining the main presentation -->
      <div id="presentation-counter">Loading...</div>

      <div class="slides"><!-- Defining slides -->
      
        <div class="slide" id="slide1"><!-- Defining single slide -->
          <section class="middle">
            <p>HTML5 Ajax homework</p><h2>Bayram Dogan Gocer</h2><h3>2008510026</h3>
            <p>Press <span id="left-init-key" class="key">&rarr;</span> key to continue.</p>
          </section>
          <aside class="note"><!-- hidden notes of slide -->
            <section>
              Notes for first slide
            </section>
          </aside> 
        </div>
        <div class="slide" id="slide2">
          <header>Slides controls</header>
          <section>
            <ul>
              <li><span class="key">&larr;</span> and <span class="key">&rarr;</span> to move forward/back.</li>
              <li><span class="key">spacebar</span> to move forward.</li>
              <li><span class="key">N</span> to toggle hidden notes.</li>
              <li><span class="key">H</span> to toggle help.</li>
            </ul>
          </section>
          <aside class="note">
            <section>
              Notes for second slide
            </section>
          </aside> 
        </div>
        <div class="slide" id="slide3">
          <section class="middle">
            <hgroup>
              <h2>
                Ajax Samples 
              </h2>
              <h5>
              Calendar
              </h5>
            </hgroup>
              <asp:TextBox ID="txtBox" runat="server"></asp:TextBox>
              <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtBox">
              </asp:CalendarExtender>
               <hgroup>
                <h5>
                BaloonPopup
              </h5>     
                </hgroup>
               <asp:TextBox ID="TxtbxPop" runat="server"></asp:TextBox>
    <asp:Panel ID="Pan1" runat="server">
       Enter Your Password
           </asp:Panel>
              
               <%--<asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" 
        CustomCssUrl="" DynamicServicePath="" Enabled="True" ExtenderControlID="" BalloonPopupControlID="pan1"
        TargetControlID="TxtbxPop">
    </asp:BalloonPopupExtender>--%>
    <asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server"
        TargetControlID="TxtbxPop"
        BalloonPopupControlID="pan1"
        Position="BottomRight" 
        BalloonStyle="Cloud"
        BalloonSize="Small"
        CustomCssUrl="CustomStyle/BalloonPopupOvalStyle.css"
        CustomClassName="oval"
        UseShadow="true" 
        ScrollBars="Auto"
        DisplayOnMouseOver="true"
        DisplayOnFocus="false"
        DisplayOnClick="true" />
               <hgroup>
              <h5>
              Color Picker
              </h5>
            </hgroup>
            <asp:TextBox ID="txtBox2" runat="server"></asp:TextBox>
              <asp:ColorPickerExtender ID="ColorPickerExtender1" runat="server" TargetControlID="txtBox2">
              </asp:ColorPickerExtender>
              <hgroup>
              <h5>
              Password Control
              </h5>
            </hgroup>
             <asp:TextBox ID="txtBox3" runat="server"></asp:TextBox>
              <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtBox3">
              </asp:PasswordStrength>
             
          </section>
        </div>
     
        <div class="slide" id="slide4">
          <section class="middle">
            <hgroup>
              <h3>
                Html5 samples
              </h3>
              <h4>
                Audio
              </h4>
        <audio controls="controls">
          <source src="song.ogg" type="audio/ogg" />
        </audio>
                      <h4>
                Video

              </h4>
        <video width="320" height="240" controls="controls">
  <source src="movie.mp4" type="video/mp4" />
  <source src="movie.ogg" type="video/ogg" />
  Your browser does not support the video tag.
</video>
            </hgroup>
          </section>
        </div>
        <div class="slide" id="slide5">
          <section class="middle">
            <hgroup>
              <h2>
               Html5 samples
              </h2>
              <h3>
                 Drag
              </h3>
              <style type="text/css">
        #div1, #div2
        {float:left; width:100px; height:85px; margin:60px;padding:60px;border:1px solid #aaaaaa;}
        </style>
<script type="text/javascript">
    function allowDrop(ev) {
        ev.preventDefault();
    }

    function drag(ev) {
        ev.dataTransfer.setData("Text", ev.target.id);
    }

    function drop(ev) {
        var data = ev.dataTransfer.getData("Text");
        ev.target.appendChild(document.getElementById(data));
        ev.preventDefault();
    }
</script>
 

            <div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
         <img src="deu.png" draggable="true" ondragstart="drag(event)" id="drag1" width="138" height="81" />
            </div>
            <div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
            </hgroup>
            <p></p>
          </section>
        </div>

      </div>

      <div id="hidden-note" class="invisible" style="display: none;">
      </div> <!-- hidden note -->

      <aside id="help" class="sidebar invisible" style="display: hidden;"><!-- Defining sidebar help -->
        <table>
          <caption>Help</caption>
            <tr>
              <th>Move forward/back</th>
              <td>&larr;&nbsp;&rarr;</td>
            </tr>
            <tr>
              <th>Move forward</th>
              <td>spacebar</td>
            </tr>
            <tr>
              <th>Hidden Notes</th>
              <td>N</td>
            </tr>
            <tr>
              <th>Help</th>
              <td>H</td>
            </tr>
        </table>
      </aside>

    </div>

    <script type="text/javascript" src="js/script.js"></script>
    </form>
</body>
</html>