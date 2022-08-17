/**
 *
 
 js file for writePost.jsp
  
 */
 
function toList(){
	location.href = "pages/postList.jsp"
}
 
function validateForm( form ){
	
	if( form.title.value == "" ){
		alert( "제목을 입력하세요." );
		form.title.focus();
		return false;
	}
	
	if( form.content.value == "" ){
		alert( "내용을 입력하세요." );
		//form.title.focus();
		return false;
	}
	
}