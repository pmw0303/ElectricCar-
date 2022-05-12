function sendmsg(){
	
	let nickname = document.getElementById("nickname").value;
	let chatting = document.getElementById("chatting").value;
	$.ajax({
		url : "chatting",
		data : {"nickname" : nickname, "chatting" : chatting} , // 통신할때 보내는 데이터
		success : function(result){ // 통신 성공후 받는 데이터
			if(result == "1"){
				$("#nickname").val("");
				$("#chatting").val("");
			}
			else{
			}
		}
	});
}

$(function() {
	timer = setInterval( function () {
	    $.ajax ({
	        url : "receive",
	        cache : false,
	        success : function ( result ) {
				var nick = result.split(",");
				var conts = "";
				for(var i = 0 ; i <nick.length-1 ; i++){
					conts +=
			 		'<div class="box">'+
						'<div class="nickname" style="margin:2px;"> 닉네임 : '+nick[i].split(":")[0]+'</div>'+
						'<div class="chatting" style="margin:2px;">'+nick[i].split(":")[1]+'</div>'+
					'</div>'
				}
				$("#contentlist").html(conts);
				$('#contentlist').scrollTop($('#contentlist')[0].scrollHeight);
	        }
	    });
	    },500);
});