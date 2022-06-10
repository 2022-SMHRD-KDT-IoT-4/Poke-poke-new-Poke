<%@page import="com.poke.domain.ChoiceVO"%>
<%@page import="com.poke.domain.QuestionVO"%>
<%@page import="com.poke.DAO.QuestionDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewRecommend</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
	#first {
		display : block;
	}
	#second {
		display : none;
	}
</style>
<script type="text/javascript">

$(document).ready(() => {
	QuestionlistLoad(1);
});

let choice1_num = 0;
let choice2_num = 0;
function QuestionlistLoad(num) {
	$.ajax({
		url : "viewQuestionList.do",
		type : "get",
		data : {"Question_num" : num},
		dataType : "json",
		success : QuestionlistView,
		error : () => {
			alert("error");
		}
	});
}

function QuestionlistView (data){
	console.log(data[0].Question_contents)
	let list = "<h1>"+data[0].Question_contents+"</h1>";
	if(data[0].Question_num==1){
		$('#h1').html(list);
		ChoiceListLoad();
	}else {
		$('#h2').html(list);
		$('#first').css("display","none");
		$('#second').css("display","block");
		Choice2ListLoad()
	}
}

function ChoiceListLoad(){
	$.ajax({
		url : "viewChoiceList.do",
		type : "get",
		dataType : "json",
		success : ChoiceListView,
		error : () => {
			alert("error");
		}
	});
}

function ChoiceListView(data){
	let choice = "<button class='btn btn-info btn-sm' onclick='ChoiceNumSave(1); QuestionlistLoad(2);'>";
	choice += data[0].choice_contents+"</button>";
	choice += "<button class='btn btn-info btn-sm' onclick='ChoiceNumSave(2); QuestionlistLoad(2); '>";
	choice += data[1].choice_contents+"</button>";
	$('#choicelist').html(choice);
}

function Choice2ListLoad(){
	$.ajax({
		url : "viewChoice2List.do",
		type : "get",
		dataType : "json",
		success : Choice2ListView,
		error : () => {
			alert("error");
		}
	});
}

function Choice2ListView(data){
	let choice2 = "<button class='btn btn-info btn-sm' onclick=Choice2NumSave(1);>";
	choice2 += data[0].choice_contents+"</button>";
	choice2 += "<button class='btn btn-info btn-sm' onclick=Choice2NumSave(2);>";
	choice2 += data[1].choice_contents+"</button>";
	$('#choicelist2').html(choice2);
}

function ChoiceNumSave(num){
	choice1_num = num;
	console.log(choice1_num)
}
function Choice2NumSave(num){
	choice2_num = num;
	$.ajax({
		url : "viewRecommendPlantList.do",
		type : "get",
		dataType : "json",
		data : {"choice1_num" : choice1_num, "choice2_num" : choice2_num},
		success : FileLocationLoad,
		error : () => {
			alert("error");
		}
	});
	console.log(choice2_num);
}

function FileLocationLoad(data){
	let arr = [];
	$.each(data, function(index, arr1){
		arr.push(data[index].recommend_num);
		console.log(arr);
	})
	$.ajax({
		url : "fileLocationLoad.do",
		type : "post",
		traditional : true,
		data : {"recommend_num" : arr},
		dataType : "json",
		success : viewRecommendPlantList,
		error : () => {
			alert("error");
		}
	});
}
function viewRecommendPlantList(data){
	console.log(data)
	let list = "시작!<br>";
	$.each(data, function(index, obj){
		list += "<h1>"+data[index].recommend_num+"</h1><br>";
		list += "<img src='plantfile/"+obj.file_location+"'>";
	});
	$('#third').html(list);
}
</script>
</head>
<body>
	<div class="container">
		<div id='first'>
			<h1 id='h1'></h1>
			<div id='choicelist'></div>
		</div>
		
		<div id='second'>
			<h1 id='h2'></h1>
			<div id='choicelist2'></div>
		</div>
		<div id='third'>
		
		</div>
	</div>
</body>
</html>