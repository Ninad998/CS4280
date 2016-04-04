<%-- 
    Document   : compareProducts
    Created on : Apr 4, 2016, 8:37:58 PM
    Author     : suhag
--%>
<%@include file="common/header.jsp" %>
<!-- Main Container Starts -->
		<div id="main-container">
		<!-- Breadcrumb Starts -->
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li class="active">Compare Products</li>
			</ol>
		<!-- Breadcrumb Ends -->
		<!-- Main Heading Starts -->
			<h2 class="main-heading text-center">
				Compare Products
			</h2>
		<!-- Main Heading Ends -->
		<!-- Compare Table Starts -->
			<div class="table-responsive compare-table">
				<table class="table table-bordered">
					<thead>
						<tr>
							<td>S.NO</td>
							<td>Image</td>
							<td>Product</td>
							<td>Price</td>
							<td>Model</td>
							<td>Brand</td>
							<td>Availability</td>
							<td>Rating</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>
								<img src="images/product-images/thumb1.jpg" alt="image" title="image" class="img-thumbnail" />
							</td>
							<td class="name">
								<a href="product.html">Simply Organic seeds</a>
							</td>							
							<td>
								 $120.68
							</td>
							<td>
								product 11 
							</td>
							<td>
								Elite 
							</td>
							<td>
								<span class="label label-success">In Stock</span>
							</td>
							<td class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o"></i>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>
								<img src="images/product-images/thumb2.jpg" alt="image" title="image" class="img-thumbnail" />
							</td>
							<td class="name">
								<a href="product.html">Simply Organic seeds</a>
							</td>							
							<td>
								 $220.68
							</td>
							<td>
								product 12 
							</td>
							<td>
								Elite 
							</td>
							<td>
								<span class="label label-danger">Out of Stock</span>
							</td>
							<td class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>
								<img src="images/product-images/thumb1.jpg" alt="image" title="image" class="img-thumbnail" />
							</td>
							<td class="name">
								<a href="product.html">Simply Organic seeds</a>
							</td>							
							<td>
								 $320.68
							</td>
							<td>
								product 13 
							</td>
							<td>
								Elite 
							</td>
							<td>
								<span class="label label-success">In Stock</span>
							</td>
							<td class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o"></i>
								<i class="fa fa-star-o"></i>
								<i class="fa fa-star-o"></i>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		<!-- Compare Table Ends -->
		</div>
	<!-- Main Container Ends -->
<%@include file="common/footer.jsp" %>
