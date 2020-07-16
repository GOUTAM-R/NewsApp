$(document).ready(function() {
            var id=localStorage['id'];
              $.ajax({

                    url:"get_user.php",
                    type:"post",
                    data:{
                        "id":id
                    },
                    success:function(data){
                        
                        var obj=JSON.parse(data);
                         $.each(obj,function(index,value){
                            $("#user_name").html(value.name);
                         });
                        

                        
                    }
                });  
          });