<!DOCTYPE html>
<html>
<head>
	<title>ciBlog</title>
	<link rel="stylesheet" type="text/css" href="https://bootswatch.com/superhero/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/style.css">
	<!-- ckeditor -->
	<script src="https://cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<?php echo base_url(); ?>">ciBlog</a>
		</div>
		<div id="navbar">
			<ul class="nav navbar-nav">
				<li><a href="<?php echo base_url(); ?>">Home</a></li>
				<li><a href="<?php echo base_url(); ?>posts">Blog</a></li>
				<li><a href="<?php echo base_url(); ?>about">About</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			<li><a href="<?php echo base_url(); ?>posts/create">Create Post</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="container">