/**
 * Created by dello on 2016/6/28.
 */
function getAttentionsJbexinfList(userId,map,markers){
    ajax("/getJbrxinfoByAttentionUser",{userId:userId},"post",function(data){
        getJbexinfoList(data,map,markers);
    });
}

function getJbexinfoList(data,map,markers){
    var markers=[];
    if(data.success=="true"){
        var result=data.result;
        for(var i=0;i<result.length;i++){
            var item=result[i];
            var content="<lable class='label label-primary'>"+"标题: "+item.title+"<br/>"+"细节: "+item.detail+"</lable>";
            //var content=item.title;
            var marker=addMakreOnMap(item.dotX,item.dotY,content,map);
            markers.push(marker);
        }
    }
}
