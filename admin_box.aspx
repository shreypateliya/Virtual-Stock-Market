<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true"
    CodeBehind="admin_box.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-9 col-xl-10 col-md-8 ml-auto">
                    <div class="row pt-md-5 mt-md-3 mb-5">
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card card-comman bg-secondary">
                                <div class="card-body py-5">
                                    <div class="d-flex justify-content-between">
                                        <i class="fa fa-user fa-3x text-warning "></i>
                                        <div class="text-right">
                                            <h5>
                                                USER MANAGEMENT
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-footer text">
                                    <a href="admin_box.aspx" class="stretched-link"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card card-comman bg-primary">
                                <div class="card-body py-5">
                                    <div class="d-flex justify-content-between">
                                        <i class="fa fa-bullhorn fa-3x text-warning"></i>
                                        <div class="text-right">
                                            <h5>
                                                ADVERTISEMENT
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-footer text">
                                    <a href="#" class="stretched-link"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card card-comman bg-danger">
                                <div class="card-body py-5">
                                    <div class="d-flex justify-content-between">
                                        <i class="fa fa-building fa-3x text-warning"></i>
                                        <div class="text-right">
                                            <h5>
                                                COMPANY
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-footer text">
                                    <a href="#" class="stretched-link"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card card-comman bg-info">
                                <div class="card-body py-5">
                                    <div class="d-flex justify-content-between">
                                        <img src="images/Stock_market.png" height="50" class="text-warning mb-1">
                                        <div class="text-right">
                                            <h5>
                                                SHARE MANAGEMENT
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-footer text">
                                    <a href="#" class="stretched-link"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
