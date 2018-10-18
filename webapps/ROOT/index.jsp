<html>
	<head>
		<style>
			body {
				background: #f39c12;
			}
			.center-on-page {
				position: absolute;
				top: 50%;
				left: 50%;
				transform: translate(-50%,-50%);
			}
			h1 {
				text-align: center;
			}
			
			select {
				-webkit-appearance: none;
				-moz-appearance: none;
				-ms-appearance: none;
				appearance: none;
				outline: 0;
				box-shadow: none;
				border: 0 !important;
				background: #2c3e50;
				background-image: none;
			}
			
			.select {
				position: relative;
			    display: block;
			    width: 20em;
			    height: 3em;
			    line-height: 3;
			    background: #2c3e50;
			    overflow: hidden;
			    border-radius: .25em;
			}
			
			select {
			    width: 100%;
			    height: 100%;
			    margin: 0;
			    padding: 0 0 0 .5em;
			    color: #fff;
			    cursor: pointer;
			} 
			select::-ms-expand {
			    display: none;
			}
			
			.select::after {
				content: '\25BC';
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				padding: 0 1em;
				background: #34495e;
				pointer-events: none;
			}
			.select:hover::after {
				color: #f39c12;
			}
			.select::after {
				-webkit-transition: .25s all ease;
				-o-transition: .25s all ease;
				transition: .25s all ease;
			}
		</style>
	</head>
	<div align="center">
	<form action="index.jsp">
	<select name="disaster" class="select" onchange="this.form.submit()">
		<option value="0">Choose a natural disaster</option>
		<option value="1">Flood</option>
		<option value="2">Earthquake</option>
		<option value="3">Tsunami</option>
		<option value="4">Volcanic Eruption</option>
		<option value="5">Hurricane/Cyclone</option>
		<option value="6">Tornado</option>
		<option value="7">Wildfire</option>
		<option value="8">Avalanche</option>
	</select>
	</form>
	</div>
	<hr>
	<%
		String dis = request.getParameter("disaster");
		if(dis==null || dis.equals("null")){
	%>
			<iframe width="100%" height="80%" src="0.html" style="border: 0 !important;"/>
	<%
		}else if(Integer.parseInt(dis)<9){
	%>
			<iframe width="100%" height="80%" src="<%=dis%>.html" style="border: 0 !important;"/>
	<%
		}else{
	%>
			<iframe width="100%" height="80%" src="0.html" style="border: 0 !important;"/>
	<%
		}
	%>
</html>
