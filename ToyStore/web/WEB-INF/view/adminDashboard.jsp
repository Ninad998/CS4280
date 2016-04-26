


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin Console</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="css/plugins/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <style>
            .btn:hover {
                background: black;
            }
            .btn {
                background: #009688;
            }
        </style>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/ToyStore/adminDashboard">Admin Console</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Admin <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                            </li>
                            <li>
                                <a href="/ToyStore/adminInbox"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="/ToyStore/adminLogout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="/ToyStore/adminDashboard"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="/ToyStore/adminCustomer"><i class="fa fa-fw fa-bar-chart-o"></i> Customers</a>
                        </li>
                        <li>
                            <a href="/ToyStore/adminProducts"><i class="fa fa-fw fa-table"></i>Products</a>
                        </li>
                        <li>
                            <a href="/ToyStore/adminApprovals"><i class="fa fa-fw fa-edit"></i>Approvals</a>
                        </li>
                        <li >
                            <a href="/ToyStore/adminAddProducts"><i class="fa fa-plus-square-o"></i> Add products</a>
                        </li>
                        <li>
                            <a href="/ToyStore/adminTransactions"><i class="fa fa-money fa-fw"></i> Transactions/ Order</a>
                        </li>
                        <li>
                            <a href="/ToyStore/adminRecycledProducts"><i class="fa fa-fw fa-table"></i>Recycled Products</a>
                        </li>
                        <li>
                            <a href="/ToyStore/adminDiscount"><i class="fa fa-plus-square-o"></i> Add Discount</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Dashboard
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active">
                                    <i class="fa fa-dashboard"></i> Dashboard
                                </li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-fw fa-user fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">${noOfUsers}</div>
                                            <div>Number of Users</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/ToyStore/adminCustomer">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-tasks fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">${pendingApprovals}</div>
                                            <div>Pending Approvals</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/ToyStore/adminApprovals">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-yellow">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-shopping-cart fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">${productsSold}</div>
                                            <div>Products sold</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/ToyStore/adminTransactions">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-red">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-support fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">${totalNoOfProducts}</div>
                                            <div>Total Number of Products</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/ToyStore/adminProducts">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i> Approvals Panel</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="list-group">
                                        <div class="row">
                                            <!-- Product #1 Starts -->
                                            <div class="col-xs-12">
                                                <div class="product-col list clearfix" style=" padding: 15px 15px 10px;  margin-bottom: 20px; background: #fff; border: 1px solid #e8e8e8;">
                                                    <c:choose>
                                                        <c:when test="${ latestApprovalItem == null}">
                                                            <div class="caption" style="color: #252a2f;font: 14px/22px 'Open Sans', Arial, Helvetica, sans-serif;padding: 20px 0;">
                                                                <p>No pending approvals</p>
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <div class="image" style="float: left; padding: 20px 30px 10px 0;">
                                                                <img src="/ToyStore/getImage?productId=${latestApprovalItem.id}" alt="product" class="img-responsive" style="width: 170px"/>
                                                            </div>
                                                            <div class="caption" style="color: #252a2f;font: 14px/22px 'Open Sans', Arial, Helvetica, sans-serif;padding: 20px 0;">
                                                                <h4 style="color: #252a2f; font-weight: bold; font-size: 16px; text-transform: uppercase;"><a style= "color: #252a2f;"href="/ToyStore/adminViewRecycled?productId=${approveProduct.name}">${latestApprovalItem.name}</a></h4>
                                                                <div class="description" style=" padding-right: 20px; padding: 5px 0;font: 14px/22px 'Open Sans', Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify;">
                                                                    ${latestApprovalItem.description}
                                                                </div>
                                                                <div class="price" style=" color: #252a2f;font: 14px/22px 'Open Sans', Arial, Helvetica, sans-serif; padding: 10px 0;">
                                                                    <p class="product-owner" style=" font-size: 14px; color: #2f353b;">Product Owner: ${latestApprovalItem.owner}</p>
                                                                    <span class="price-new" style=" color: #ef4135; font-size: 24px;padding-right: 5px;">$ ${latestApprovalItem.price}</span>
                                                                </div>
                                                                <div class="cart-button button-group" style="padding-top:10px">
                                                                    <c:choose>
                                                                        <c:when test="${ latestApprovalItem.approved == false}">
                                                                            <form action="/ToyStore/approveProduct" method="post">
                                                                                <input type="hidden" name="productId" value="${latestApprovalItem.id}">
                                                                                <button type="submit" class="btn btn-success" style="font-size: 14px;text-transform: uppercase;" value="/ToyStore/approveProduct">
                                                                                    approve
                                                                                    <i class="fa fa-check" style="margin-right: 5px;"></i>
                                                                                </button>
                                                                            </form>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <button type="button" class="btn btn-cart disabled" style="font-size: 14px;color: #fff;text-transform: uppercase;" disabled="disabled">
                                                                                approved
                                                                                <i class="fa fa-check" style="margin-right: 5px;"></i>
                                                                            </button>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </div>
                                                            </div>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                            </div>
                                            <!-- Product #1 Ends -->
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <a href="/ToyStore/adminApprovals">View All Approvals <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Transactions/order Panel</h3>
                                </div>
                                <div class="panel-body">
                                    <c:choose>
                                        <c:when test="${transactions == null}">
                                            <div><p>No transactions available</p></div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="table-responsive">
                                                <table class="table table-bordered table-hover table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>Order number</th>
                                                            <th>Customer ID</th>
                                                            <th>Total amount</th>
                                                            <th>date </th>
                                                            <th>Discount</th>
                                                            <th>credit amount used</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${transactions}" var="item">
                                                            <tr>
                                                                <td>${item.id}</td>
                                                                <td>${item.customerId.email}</td>
                                                                <td>${item.amount}M</td>
                                                                <td>${item.dateCreated}</td>
                                                                <td>${item.discount}</td>
                                                                <td>${item.credit}</td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>

                                    <div class="text-right">
                                        <a href="/ToyStore/adminTransactions">View All Transactions <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.container-fluid -->
                <div class="copyright container">
                    <div class="clearfix">
                        <!-- Starts -->
                        <p class="pull-right" >
                            <i class="fa fa-copyright" aria-hidden="true"></i> Toy Store. designed By <a href="#">Suhag Byaravalli Arun</a> and <a href="#">Ninad Tungare</a>. This web site exists to fulfill the coursework requirement of CS4280.
                            Do not use your real personal data as input.

                        </p>
                        <!-- Ends -->
                    </div>
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="js/plugins/morris/raphael.min.js"></script>
        <script src="js/plugins/morris/morris.min.js"></script>
        <script src="js/plugins/morris/morris-data.js"></script>

    </body>

</html>

