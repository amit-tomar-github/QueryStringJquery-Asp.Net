<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TarotImgTesting.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #includedContent {
            border:2px solid orange;
        }
    </style>
    <script type="text/javascript">
       
        $(function () {
        
        });
    </script>
    
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <div class="row">
        <div class="col-md-12">
            <div id="includedContent"></div>
        </div>
    </div>
    <script type="text/javascript">
        var queryString = new Array();
        $(function () {
            var count = 2;
            if (count == 1) {
                $("#includedContent").load("Contact.aspx");
            }
            else if (count == 2) {
                $("#includedContent").load("Account/Login.aspx");
            }
            else {
                alert("Dude wrong entry");
            }

            if (queryString.length == 0) {
                if (window.location.search.split('?').length > 1) {
                    var params = window.location.search.split('?')[1].split('&');
                    for (var i = 0; i < params.length; i++) {
                        var key = params[i].split('=')[0];
                        var value = decodeURIComponent(params[i].split('=')[1]);
                        queryString[key] = value;
                    }
                }
            }
            if (queryString["name"] != null && queryString["technology"] != null) {
                var data = "<u>Values from QueryString</u><br /><br />";
                data += "<b>Name:</b> " + queryString["name"] + " <b>Technology:</b> " + queryString["technology"];
                // $("#lblData").html(data);
                alert(data);
            }

        });
    </script>
</asp:Content>
