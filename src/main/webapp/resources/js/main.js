
// 페이지가 로드되면 실행
window.onload = function() {
	// 각 item 요소에 대해 클릭 이벤트를 추가
	var items = document.querySelectorAll('.item');
	items.forEach(function(item) {
		var likeButton = item.querySelector('.like-button');
		likeButton.addEventListener('click', function(event) {
			// 클릭 이벤트의 전파를 막아서 부모 요소의 클릭 이벤트를 방지
			event.stopPropagation();
			// 클릭한 버튼이 포함된 item 요소의 fid 값을 가져옴
			var fid = item.dataset.fid;
			// 좋아요 버튼 클릭 이벤트 처리 (콘솔에 로그를 출력)
			console.log('좋아요 버튼이 클릭되었습니다. fid:', fid);
		});
		
		
		item.addEventListener('click', function(event) {
			// 클릭한 item의 fid 값을 가져옴
			var fid = this.dataset.fid;
			// 조회 페이지 URL 생성
			var getPageURL = 'get?fid=' + fid;
			// 페이지 이동
			window.location.href = getPageURL;
        });
    });
};
