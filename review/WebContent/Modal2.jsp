<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
	$(function() {
		$(".boardInfo").on("click",function(event){
			var modal = $("#exampleModal")
			var no = $(event.target).data("no");
			//ajax
			$.ajax({
				url : 'getData2?no=' + no,
				dataType : 'json',
				success : function(result) {
					modal.find('.card-title').text(result.title);
					modal.find('.card-text').text(result.content);
					modal.modal('show');
				}
			});

		})
	})
</script>
</head>
<body>
	<!-- Button trigger modal -->
	<table border = "1">
		<tr>
			<td>0</td>
			<td class="boardInfo" data-no="0" >title0</td>
		</tr>
			<tr>
			<td>1</td>
			<td class="boardInfo" data-no="1">title1</td>
		</tr>
			<tr>
			<td>2</td>
			<td class="boardInfo" data-no="2">title2</td>
		</tr>
	</table>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="card" style="width: 18rem;">
						<img src="..." class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-primary">Go somewhere</a>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>