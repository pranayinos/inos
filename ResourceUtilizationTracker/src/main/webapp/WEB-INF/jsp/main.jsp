<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="well well-lg" id="content-replaceable">
<div class="col-sm-12 text-center"><h4 class="head"> Current Status </h4></div>

<form role="form" name="statusUpdate" method="post" action="http://localhost:4567/login" id="login">
   <div class="radio">
		<label class="label-pad"><input type="radio" name="optradio" value="Lunch">Lunch</label>
	</div>
	<div class="radio">
		<label class="label-pad"><input type="radio" name="optradio" value="Meeting">Meeting</label>
	</div>
	<div class="radio">
		<label class="label-pad"><input type="radio" name="optradio" value="Meeting">Free</label>
	</div>
	<div class="radio" style="display: inline-block;">
		<div class="float-extreme-left"><label class="label-pad"><input type="radio" name="optradio" id="task">Task </label></div>
		<div class="float-mid-left">
			<input type="text" class="form-control input-sm hide" id="currenttask" placeholder="Current Task" name="currenttask">
		</div>
	</div>
	
	<div class="col-sm-12 top-10"><button class="btn btn-primary btn-block">Update Status</button></div>
	<div class="col-sm-12" id="display">&nbsp;</div>
</form>
</div>
