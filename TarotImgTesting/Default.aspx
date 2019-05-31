<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TarotImgTesting._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>
    <div class="row">
        <div class="col-md-8">
          <%-- <img src="Images/judgement.jpg" style="position:absolute"/>--%>
          <%--  <div class="card">
                <img src="Images/the-fool.jpg" style="width:200px"/>
            </div>
            <div class="card">
            <img src="Images/the-hierophant.jpg" style="position:absolute;left:50px;width:200px;top:10px"/>
            </div>
            <div class="card">
            <img src="Images/the-magician.jpg" style="position:absolute;left:100px;width:200px;top:20px"/>
                 </div>--%>
            <%--<img src="Images/the-sun.jp
                g" style="position:absolute;left:50px"/>--%>

              <div class="card" id="First">
                <img src="Images/the-fool.jpg" style="width:200px;height:300px;">
            </div>
            <div class="card" style="left:50px;" id="Second">
            <img src="Images/the-hierophant.jpg" style="width:200px;height:300px;"/>
            </div>
            <div class="card" style="left:100px;" id="Third">
            <img src="Images/the-magician.jpg" style="width:200px;height:300px;"/>
                 </div>
           
        </div>
        <div class="row">
            <div class="col-md-12">
                 <div class="counter">
            <label id="lblCounter">Counter : </label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
              <button id="btnSubmit" type="button" value="Submit">Submit</button>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            var counter = 0
            var itemId = "";
            $(".card").click(function () {
                $(".card").addClass("cardSelected");
                alert("it works!");
                counter = counter + 1;
                $("#lblCounter").text("Counter : " + counter.toString());
                itemId = $(this).attr('id');
                alert("Item Id:" + itemId.toString());
            });

            $("#btnSubmit").click(function () {
                //window.location.href = "About.aspx";
                var url = "About.aspx?name=" + encodeURIComponent(itemId) + "&technology=" + encodeURIComponent("test");
                window.location.href = url;
            });

        });
    </script>
    <style type="text/css">
        .card {
            cursor:pointer;
            position:absolute;
            width:200px;
            float:left;
            height:300px;
        }
           
        .cardSelected {
            top:10px;
            border:2px solid black;
        }
    </style>
</asp:Content>
