window.addEventListener("load", () => {
    const page = 1;

    fetch("/mypage/list/crochet/" + page)
    .then(resp => resp.json())
    .then(result => {
        console.log(result);

        if(result.length < 1) {
            
        } else {
            const ul = document.getElementById("crochet-list");

            result.forEach(element => {
                const {croId, croTitle} = element;

                const li = document.createElement("li");
            
                li.innerHTML = `<a href="/crochet/edit?croId=${croId}"">${croTitle}</a>`;
                
                ul.append(li); 
            });

            document.querySelector("#crochet-list .empty").classList.add("hide");
            // $("#crochet-list .empty").removeClass("hide");
        }        
    });

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
});