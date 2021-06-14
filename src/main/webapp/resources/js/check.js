window.onload = function() {

console.log("............check.js");

var member_id = sessionStorage.getItem("member_id");
//var memberId = `${member.id}`;

console.log(member_id);

 $.ajax({
                url : '/asset/assetChk',
                type: 'POST',
                data: member_id,
                contentType : "application/json; charset=UTF-8",
                success : function(result){
                console.log("result::" + result);

                    if(result == '1'){
                         $("#regBtn").remove();

                    } else if(result == '0'){
                         $("#getBtn").remove();
                    }
                },
                error: function(){
                console.log("fail");
                }
            });

console.log("!!!!!!!!!!!!check.js");


console.log("memberId::"+member_id);
 $.ajax({
                url : '/account/accountChk',
                type: 'POST',
                data: member_id,
                contentType : "application/json; charset=UTF-8",
                success : function(result1){
                console.log("result1::" + result1);

                    if(result1 == '1'){
                         $("#acRegBtn").remove();

                    } else if(result1 == '0'){
                         $("#acGetBtn").remove();
                    }
                },
                error: function(){
                console.log("fail");
                }
            });

                if(member_id == null ) {
                    $("#logoutBtn").remove();
                }else if(member_id != null ) {
                    $("#loginBtn").remove();
                }
}