window.addEventListener("load", () => {
    let croPage = 1;
    
    selectCrochetList(croPage);
    
    $('#cro-next-page, #cro-prev-page').on("click", function() {
    	//데이터가 쌓이지 않도록 제거
		$('#crochet-list').empty();
		
		//클릭한 버튼의 id에 따라 croPage 값 수정
    	if(this.id == "cro-next-page") { //다음
    		croPage = croPage + 1;
    	} else { //이전
    		croPage = croPage - 1;
    	}
		
		if(croPage > 1) { //croPage 값이 2이상일 경우 이전버튼 활성화
			$('#cro-prev-page').removeAttr('disabled');
		} else {
			$('#cro-prev-page').attr('disabled', 'disabled');
		}
		
		//코바늘 조회
		selectCrochetList(croPage);
	});
	
	let page = 1;
    

    fetch("/mypage/list/knitting/" + page)
    .then(resp => resp.json())
    .then(result => {
        console.log(result);

        if(result.length < 1) {
            
        } else {
            const ul = document.getElementById("knitting-list");

            result.forEach(element => {
                const {knitId, knitTitle} = element;

                const li = document.createElement("li");
            
                li.innerHTML = `<a href="/knitting/edit/${knitId}">${knitTitle}</a>`;
                
                ul.append(li); 
            });

            document.querySelector("#knitting-list .empty").classList.add("hide");
            // $("#knitting-list .empty").removeClass("hide");
        }        
    });
    
    //코바늘 조회 함수
    function selectCrochetList(page) {
		fetch("/mypage/list/crochet/" + page)
	    .then(resp => resp.json())
	    .then(result => {
	        console.log(result);
	
	        if(result.length < 1) {
	            document.querySelector("#crochet-list .empty").classList.remove("hide")
	        } else {
	            const ul = document.getElementById("crochet-list");
	
	            result.forEach(element => {
	                const {croId, croTitle} = element;
	
	                const li = document.createElement("li");
	            
	                li.innerHTML = `<a href="/crochet/edit?croId=${croId}"">${croTitle}</a>`;
	                
	                ul.append(li); 
	            });
	            
				const listItem = document.querySelector("#crochet-list li"); //코바늘 데이터 목록
				const emptyMessage = document.querySelector("#crochet-list .empty"); //에러메시지 데이터
				
				if (listItem && emptyMessage) { //널값유무 확인
				    if (!listItem.classList.contains("hide")) { //'hide' 클래스가 없을 경우 'hide' class 추가
				        emptyMessage.classList.add("hide");
				    }
				}
				
				if(result.length < 5) { //5개 미만이만 다음 버튼 비활성화
					$('#cro-next-page').attr('disabled', 'disabled');
				} else { // 5개이면 다음버튼 활성화
					$('#cro-next-page').removeAttr('disabled');
				} //0개면 윗 코드에서 ("#crochet-list .empty")의 'hide' 속성 제거
	            // $("#crochet-list .empty").removeClass("hide");
	        }        
	    });
	}
}); 
    


