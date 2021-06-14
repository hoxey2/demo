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
}
