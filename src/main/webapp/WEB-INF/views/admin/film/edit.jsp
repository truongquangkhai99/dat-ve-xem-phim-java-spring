<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="filmURL" value="/admin-film-list"/>
<c:url var="editFilmURL" value="/admin-film-edit"/>
<c:url var="filmAPI" value="/api-film"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phim</title>

</head>
<body id="page-top">

	<div id="content-wrapper">
		<div class="container-fluid">
			<c:if test="${not empty message}">
				<div class="alert alert-${alert}">
  					${message}
				</div>
			</c:if>
			<form:form role="form" id="formSubmit" modelAttribute="model">
				<div class="row">
					<div class="col-lg-3"></div>
					<div class="col-lg-6">
						<div class="form-group">
							<label for="title">Tên phim</label> 
							<form:input path="title" cssClass="form-control" placeholder="Nhập tên phim"/>
						</div>

						<div class="form-group">
							<label for="title">Poster</label>
							<div class="custom-file">
						    	<input type="file" class="custom-file-input" id="customFile">
						    	<label class="custom-file-label" for="customFile">Chọn ảnh</label>
						 	</div>
						</div>
						
						<div class="form-group">
							<label for="cast">Diễn viên</label>
							<form:input path="cast" cssClass="form-control" placeholder="Nhập diễn viên"/>
						</div>

						<div class="form-group">
							<label for="director">Đạo diễn</label>
							<form:input path="director" cssClass="form-control" placeholder="Nhập đạo diễn"/>
						</div>

						<div class="form-group">
							<label for="genre">Thể loại</label>
							<form:input path="genre" cssClass="form-control" placeholder="Nhập thể loại"/>	
						</div>

						<div class="form-group">
							<label for="rated">Giới hạn tuổi</label>
							<form:input path="rated" cssClass="form-control" placeholder="Cấm khán giả dưới..."/>
						</div>

						<div class="form-group">
							<label for="runningTime">Độ dài</label>
							<form:input path="runningTime" cssClass="form-control" placeholder="Độ dài của phim"/>
						</div>

						<div class="form-group">
							<label for="trailer">Trailer</label>
							<form:input path="trailer" cssClass="form-control" placeholder="Link trailer..."/>
						</div>

						<div class="form-group">
							<label for="releaseDate">Ngày ra mắt</label>
							<form:input path="releaseDate" cssClass="form-control" placeholder="Ngày ra mắt..."/>
						</div>

						<div class="form-group"></div>

						<fieldset class="form-group">
							<label>Mô tả ngắn</label>
							<form:textarea path="description" rows="4" cssClass="form-control" id="description"/>
						</fieldset>
						<form:hidden path="id" id="filmId"/>
						<fieldset class="form-group" style="margin: 0, auto;">
							<c:if test="${not empty model.id}">
								<button type="button" id="btnAddOrUpdateFilm"
									class="btn btn-primary">Cập nhật</button>
							</c:if>
							
							<c:if test="${empty model.id}">
							<button type="button" id="btnAddOrUpdateFilm"
								class="btn btn-primary">Thêm mới</button>
							</c:if>
							<a href="<c:url value='/admin-film-list?page=1&limit=8'/>">
								<button type="button" class="btn btn-secondary">Hủy</button>
							</a>
						</fieldset>
					</div>
					<div class="col-lg-3"></div>
				</div>
			</form:form>
		</div>
	</div>

	
</body>
</html>