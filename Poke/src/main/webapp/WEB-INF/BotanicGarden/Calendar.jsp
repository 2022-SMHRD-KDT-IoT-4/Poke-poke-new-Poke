<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
   <script type="text/javascript">   
   // var plant_nickname=[];
   $(document).ready(function() {
      getData();
      
      

      
   });
   

   function getData(){
      $.ajax({
         // url -> 데이터의 주소
         url : 'plantCalendar.do',
         // 쿼리스트링 ? get / jsp에서 post로 설정? -> post
         type : 'post',
         // data :{id = "id 보내줘야함"},
         success : function(res){
            let list = "";
            $.each(res, function(index, res2){

               $.each(res2, function(index2,res3){
                  
               list += "<a href ='javascript:goView(\""+res2[index2].plantcare_seq+"\")' >"+res2[index2].plant_nickname+"</a><br>";
               list += "<span>"+res2[index2].last_date+"</span><br>";
               })
               
            })
            $("#testtest").html(list);
         },
         error : function(){
            alert('error!')
         }
      });
      getNextWaterData();   
   }
   
   // 다음 물 주는 정보 가져와서 뿌리기
   function getNextWaterData(){
         $.ajax({
            // url -> 데이터의 주소
            url : 'plantwater.do',
            // 쿼리스트링 ? get / jsp에서 post로 설정? -> post
            type : 'post',
            // data :{id = "id 보내줘야함"},
            success : function(res){
               console.log(res);
               let list = "";
               $.each(res, function(index, res2){
            	   list += "<span><a>"+res[index].plant_nickname+"</a><input id = 'check1' onclick = 'goPlantCare()' type = 'checkbox'</span>"
                  list += "<span>"+res[index].last_date+"</span><br>";
                  
               })
               $("#nextWater").html(list);
            },
            error : function(){
               alert('error!')
            }
         })
      }
   
   
   // \diary와 height 기록 해서 등록 누르면 insert 되는 함수
   function palntCareInsert(){
      
      var fDate = $("#frm").serialize();
      $.ajax({
         
         url : 'plantCalendarInsert.do',
         type : 'post',
         data : fDate,
         success : getData,
         error: function(){
            alert("error");
         }
      });
   }
   
   
   

   
   
   
   

      // 내용보여주는 함수
      function goView(plantcare_seq) {

         
         $.ajax({
            url : "plantCareView.do",
            type : "get",
            data : {
               "plantcare_seq" : plantcare_seq
            },
            dataType : "json",
            success : function(data) { // data = {    , "count":5}
               
         
                     //$("#diary").text(data.plant_diary)
            $("#diary").html("<textarea id = 't' rows = '7'  readonly class = 'form-control'>"
            + data.plant_diary + "</textarea><Br><span id = u><input type = 'button' class = 'btn_amend' id = 'update' onclick = 'goUpdate(\""+data.plantcare_seq+"\")'value = '변경'></span>")
            
            },
            error : function() {
               alert("error");
            }
         });

      }
      
      // 게시글 수정하기 위해 
      
      function goUpdate(plantcare_seq) {
         $("#t"  ).attr("readonly", false);

         var newButton = "<button class ='btn btn-success btn-sm'   onclick='update(\""
               + plantcare_seq + "\")'>수정하기</button>"
         
         $("#u" ).html(newButton);

      }
      
      
      function update(plantcare_seq) {
         // idx, title, content
         var content = $("#t").val();
         $.ajax({
            url : "plantCareUpdate.do",
            type : "post",
            data : {
               "plantcare_seq" : plantcare_seq,
               "plant_diary" : content
            },
            success : getData,
            error : function() {
               alert("error");
            }
         })
      }
      
      // diary,hegiht 작성하는 form 보여주는 함수
      function goPlantCare(){
         $("#bfrm").css("display", "block");
      }
      
      
      //function palntInsert
   </script>   

</head>
<body>

      <div id="testtest"></div>
         <br><br>
         <div id = "diary">
         </div>
         
               <div id="nextWater"></div>
            <!--   <input type = "button" class = "btn_amend" id = "update" value = "변경"> -->
      
      <!-- diary와 height 작성하는 것 -->
      <div class="panel-body" id="bfrm" style="display: none">
      <form id="frm">
               <table class="table">
                  <input type = "hidden" name = "plant_nickname" value = ""/>
                  <tr>
                     <td>다이어리</td>
                     <td><textarea rows="7" value = "식물의 다이어리를 작성해주세요." cols="20" id="plant_diary" name="plant_diary"
                           class="form-control"></textarea></td>
                  </tr>
                  <tr>
                     <td>성장 정도</td>
                     <td><input type="number"  value = "0" id="plant_height" name="plant_height"
                        class="form-control" /></td>
                  </tr>
                  <tr>
                     <td colspan="2" align="center">
                        <button type="button" class="btn btn-info btn-sm"
                           onclick="palntCareInsert()">등록</button>
                     </td>
                  </tr>
               </table>
            </form>
   </div>
   
   
   
         <div class="panel-body" id="bPlant" style="display: none">
      <form id="frm">
               <table class="table">
                  <input type = "hidden" name = "plant_nickname" value = ""/>
                  <tr>
                     <td>다이어리</td>
                     <td><textarea rows="7" value = "식물의 다이어리를 작성해주세요." cols="20" id="plant_diary" name="plant_diary"
                           class="form-control"></textarea></td>
                  </tr>
                  <tr>
                     <td>성장 정도</td>
                     <td><input type="number"  value = "0" id="plant_height" name="plant_height"
                        class="form-control" /></td>
                  </tr>
                  <tr>
                     <td colspan="2" align="center">
                        <button type="button" class="btn btn-info btn-sm"
                           onclick="palntCareInsert()">등록</button>
                     </td>
                  </tr>
               </table>
            </form>
   </div>



   
   
   

</body>
</html>