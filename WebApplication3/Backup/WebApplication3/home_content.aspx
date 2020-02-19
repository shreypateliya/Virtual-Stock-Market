<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="home_content.aspx.cs" Inherits="WebApplication3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <figure>
        <div class="fixed-wrap">
            <div id="fixed">
            </div>
        </div>
    </figure>
    <!--fixed imagebackgrund-->
    <!--Emoji section-->
    <button class="btn btn-primary z1" data-toggle="collapse" data-target="#emoji">
        fun</button>
    <div id="emoji" class="collapse">
        <div class="container-fluid padding">
            <div class="row text-center">
                <div class="col-sm-6 col-md-3">
                    <i class="fa fa-facebook"></i>
                </div>
                <div class="col-sm-6 col-md-3">
                    <i class="fa fa-facebook"></i>
                </div>
                <div class="col-sm-6 col-md-3">
                    <i class="fa fa-facebook"></i>
                </div>
                <div class="col-sm-6 col-md-3">
                    <i class="fa fa-facebook"></i>
                </div>
                <div class="col-sm-6 col-md-3">
                    <i class="fa fa-facebook"></i>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <!--Emoji section-->
    <!--meet the team-->
    <div class="container-fluid padding">
        <div class="row welcom text-center">
            <div class="col-12">
                <h1 class="display-4">
                    Meet the team</h1>
            </div>
        </div>
    </div>
    <!--meet the team-->
    <!--cards-->
    <div class="container-fluid pading">
        <div class="row padding">
            <div class="col-md-4">
                <div class="card">
                    <i class="fa fa-picture-o fa-5x"></i>
                    <div class="card-body">
                        <h4 class="card-title">
                            shikhar shah</h4>
                        <p class="card-text">
                        </p>
                        <a href="#" class="btn btn-outline-secondary">See Profile</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <i class="fa fa-picture-o fa-5x"></i>
                    <div class="card-body">
                        <h4 class="card-title">
                            shrey pateliya</h4>
                        <p class="card-text">
                        </p>
                        <a href="#" class="btn btn-outline-secondary">See Profile</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--card-->
    <hr />
    <!--two column-->
    <div class="container-fluid p-auto">
        <div class="row padding">
            <div class="col-lg-6">
                <h2>
                    If you build it</h2>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                    Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                    unknown printer took a galley of type and scrambled it to make a type specimen book.
                    It has survived not only five centuries, but also the leap into electronic typesetting,
                    remaining essentially unchanged. It was popularised in the 1960s with the release
                    of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
                    publishing software like Aldus PageMaker including versions of Lorem Ipsu
                </p>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                    Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                    unknown printer took a galley of type and scrambled it to make a type specimen book.
                    It has survived not only five centuries, but also the leap into electronic typesetting,
                    remaining essentially unchanged. It was popularised in the 1960s with the release
                    of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
                    publishing software like Aldus PageMaker including versions of Lorem Ipsu
                </p>
                <br>
            </div>
            <div class="col-lg-6">
                <img src="images/chart.png" cssclass="img-fluid" width="50%" height="auto" />
            </div>
        </div>
    </div>
    <!--two column-->
    <hr class="my-4">
    <!--connect-->
    <!--connect-->
    <div class="modal" tabindex="-1" role="dialog" id="Div2" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        FEEDBACK</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Feedback here" TextMode="MultiLine"
                        CssClass="ta" Rows="6"></asp:TextBox>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Button3" runat="server" Text="Submit" CssClass="btn btn-primary"
                        data-dismiss="modal" />
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
