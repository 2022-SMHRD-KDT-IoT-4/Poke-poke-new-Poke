//팝업

//function show () {
//  document.querySelector(".background").className = "background show";
//}

//function close () { 
//  document.querySelector(".background").className = "background";
//}

//document.querySelector("#show").addEventListener('click', show);
//document.querySelector("#close").addEventListener('click', close);


////////////여기까지


//체크박스 비활성화

//function togglecheckbox(checkbox) {
  
  // 1. 텍스트 박스 element 찾기
  //const textbox_elem = document.getElementById('water_checkbox');
  
  // 2-1. 체크박스 선택여부 체크
  // 2-2. 체크박스 선택여부에 따라 텍스트박스 활성화/비활성화
  //checkbox_elem.disabled = checkbox.checked ? false : true;
  
  // 3. 텍스트박스 활성화/비활성화 여부에 따라
  // - 텍스트박스가 비활성화 된 경우 : 텍스트박스 초기화
  // - 텍스트박스가 활성화 된 경우 : 포커스 이동
  //if(checkbox_elem.disabled) {
   ///checkbox_elem.value = null;
 // }else {
  //  checkbox_elem.focus();
 //// }
//}















////// 여기까지





//function togglecheckbox(checkbox) {
  
  // 1. 텍스트 박스 element 찾기
  //const textbox_elem = document.getElementById('my_text');
  
  // 2-1. 체크박스 선택여부 체크
  // 2-2. 체크박스 선택여부에 따라 텍스트박스 활성화/비활성화
  //checkbox_elem.disabled = checkbox.checked ? false : true;
  
  // 3. 텍스트박스 활성화/비활성화 여부에 따라
  // - 텍스트박스가 비활성화 된 경우 : 텍스트박스 초기화
  // - 텍스트박스가 활성화 된 경우 : 포커스 이동
  //if(checkbox_elem.disabled) {
    //checkbox_elem.value = null;
  //}else {
    //checkbox_elem.focus();
  //}
//}







//plant_reg////////////////////////////////////

//plant_reg////////////////////////////////////
// function addRow(){
//   var a = document.querySelector("#plant_reg_add")
//   let b = document.querySelector(".btn_Plant_reg_add")
//   let list = "<tr class='submit_add'>"
//   list += "<td> <input class='ad' list='plant_list' name='plant' id='plants'>"
//   list += "<datalist id='plant_list'>"
//   list += "<option value='스투키' label='물주기 : n일'>"
//   list += "<option value='몬스테라' label='물주기 : n일'>"
//   list += "<option value='피쉬본' label='물주기 : n일'>"
//   list += "<option value='율마' label='물주기 : n일'>"
//   list += "<option>추가</option>"
//   list += "</datalist>"
//   list += "</td>"
//   list += "<td><input class='ad' type='text' name='nickname' placeholder='애칭을 입력해주세요.'></td>"
//   list += "<td><input class='ad' type='number' min='0' max='100' name='cycle' placeholder='숫자로만 입력하세요.'></td>"
//   list += "<td><input class='ad' type='date' id='water'></td>"
//   list += "<td>"
//   list += "<div class='btn_Plant_reg_add'>"
//   list += "<input type='button' id='delete1' onclick='addRow();' value='+'>"
//   list += "</div>"
//   list += "</td>"
//   list += "</tr>"
//   b.remove("#delete1")
//   a.innerHTML += list
// }




//calendar//////////////////////////////////////



// window.onload = function getData(){
//     $.ajax({
//        // url -> 데이터의 주소
//        url : 'plantCalendar.do',
//        // 쿼리스트링 ? get / jsp에서 post로 설정? -> post
//        type : 'post',
//        success : function(res){
//           console.log(res);
//           let list = "";
//           $.each(res, function(index, res2){

//              $.each(res2, function(index2,res3){
                
//              list += "<span>"+res2[index2].plant_nickname+"</span><br>";
//              list += "<span>"+res2[index2].last_date+"</span><br>";
//              })
             
//           })
//           $("#testtest").html(list);
//        },
//        error : function(){
//           alert('error!')
//        }
//     })
//  }

//  $('#calendar').FullCalendar({
//    editable : false,
//    events: eval(jsonData)
//  });

//  $('#calendar a').click(function(){
//    $(this).attr('href',"javascript:goDetail('"+$(this).attr("href")+"')");
//  })



//       (function(){
//           $(function(){
//             // calendar element 취득
//             var calendarEl = $('#calendar')[0];
//             // full-calendar 생성하기
//             var calendar = new FullCalendar.Calendar(calendarEl, {
//               height: '500px', // calendar 높이 설정
//               expandRows: true, // 화면에 맞게 높이 재설정
//               slotMinTime: '08:00', // Day 캘린더에서 시작 시간
//               slotMaxTime: '20:00', // Day 캘린더에서 종료 시간
//               // 해더에 표시할 툴바
//               headerToolbar: {
//                 left: 'prev,next today',
//                 center: 'title',
//                 right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
//               },
//               initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
//               initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
//               navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
//               editable: true, // 수정 가능?
//               selectable: true, // 달력 일자 드래그 설정가능
//               nowIndicator: true, // 현재 시간 마크
//               dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
//               locale: 'ko', // 한국어 설정
//               eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
//                 console.log(obj);
//               },
//               eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
//                 console.log(obj);
//               },
//               eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
//                 console.log(obj);
//               },
//               select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
//                 var title = prompt('Event Title:');
//                 if (title) {
//                   calendar.addEvent({
//                     title: title,
//                     start: arg.start,
//                     end: arg.end,
//                     allDay: arg.allDay
//                   })
//                 }
//                 calendar.unselect()
//               },
//               // 이벤트 
//               events: [
//                 {
//                   title: 'All Day Event',
//                   start: '2021-07-01',
//                 },
//                 {
//                   title: 'Long Event',
//                   start: '2021-07-07',
//                   end: '2021-07-10'
//                 },
//                 {
//                   groupId: 999,
//                   title: 'Repeating Event',
//                   start: '2021-07-09T16:00:00'
//                 },
//                 {
//                   groupId: 999,
//                   title: 'Repeating Event',
//                   start: '2021-07-16T16:00:00'
//                 },
//                 {
//                   title: 'Conference',
//                   start: '2021-07-11',
//                   end: '2021-07-13'
//                 },
//                 {
//                   title: 'Meeting',
//                   start: '2021-07-12T10:30:00',
//                   end: '2021-07-12T12:30:00'
//                 },
//                 {
//                   title: 'Lunch',
//                   start: '2021-07-12T12:00:00'
//                 },
//                 {
//                   title: 'Meeting',
//                   start: '2021-07-12T14:30:00'
//                 },
//                 {
//                   title: 'Happy Hour',
//                   start: '2021-07-12T17:30:00'
//                 },
//                 {
//                   title: 'Dinner',
//                   start: '2021-07-12T20:00:00'
//                 },
//                 {
//                   title: 'Birthday Party',
//                   start: '2021-07-13T07:00:00'
//                 },
//                 {
//                   title: 'Click for Google',
//                   url: 'http://google.com/', // 클릭시 해당 url로 이동
//                   start: '2021-07-28'
//                 }
//               ]
//             });
//             // 캘린더 랜더링
//             calendar.render();
//           });
//         });



// 문제해결

// listing vars here so they're in the global scope
var cards, nCards, cover, openContent, openContentText, pageIsOpen = false,
    openContentImage, closeContent, windowWidth, windowHeight, currentCard;

// initiate the process
init();

function init() {
  resize();
  selectElements();
  attachListeners();
}

// select all the elements in the DOM that are going to be used
function selectElements() {
  cards = document.getElementsByClassName('card'),
  nCards = cards.length,
  cover = document.getElementById('cover'),
  openContent = document.getElementById('open-content'),
  openContentText = document.getElementById('open-content-text'),
  openContentImage = document.getElementById('open-content-image')
  closeContent = document.getElementById('close-content');
}

/* Attaching three event listeners here:
  - a click event listener for each card
  - a click event listener to the close button
  - a resize event listener on the window
*/
function attachListeners() {
  for (var i = 0; i < nCards; i++) {
    attachListenerToCard(i);
  }
  closeContent.addEventListener('click', onCloseClick);
  window.addEventListener('resize', resize);
}

function attachListenerToCard(i) {
  cards[i].addEventListener('click', function(e) {
    var card = getCardElement(e.target);
    onCardClick(card, i);
  })
}

/* When a card is clicked */
function onCardClick(card, i) {
  // set the current card
  currentCard = card;
  // add the 'clicked' class to the card, so it animates out
  currentCard.className += ' clicked';
  // animate the card 'cover' after a 500ms delay
  setTimeout(function() {animateCoverUp(currentCard)}, 500);
  // animate out the other cards
  animateOtherCards(currentCard, true);
  // add the open class to the page content
  openContent.className += ' open';
}

/*
* This effect is created by taking a separate 'cover' div, placing
* it in the same position as the clicked card, and animating it to
* become the background of the opened 'page'.
* It looks like the card itself is animating in to the background,
* but doing it this way is more performant (because the cover div is
* absolutely positioned and has no children), and there's just less
* having to deal with z-index and other elements in the card
*/
function animateCoverUp(card) {
  // get the position of the clicked card
  var cardPosition = card.getBoundingClientRect();
  // get the style of the clicked card
  var cardStyle = getComputedStyle(card);
  setCoverPosition(cardPosition);
  setCoverColor(cardStyle);
  scaleCoverToFillWindow(cardPosition);
  // update the content of the opened page
  openContentText.innerHTML = '<h1>'+card.children[2].textContent+'</h1>'+paragraphText;
  openContentImage.src = card.children[1].src;
  setTimeout(function() {
    // update the scroll position to 0 (so it is at the top of the 'opened' page)
    window.scroll(0, 0);
    // set page to open
    pageIsOpen = true;
  }, 300);
}

function animateCoverBack(card) {
  var cardPosition = card.getBoundingClientRect();
  // the original card may be in a different position, because of scrolling, so the cover position needs to be reset before scaling back down
  setCoverPosition(cardPosition);
  scaleCoverToFillWindow(cardPosition);
  // animate scale back to the card size and position
  cover.style.transform = 'scaleX('+1+') scaleY('+1+') translate3d('+(0)+'px, '+(0)+'px, 0px)';
  setTimeout(function() {
    // set content back to empty
    openContentText.innerHTML = '';
    openContentImage.src = '';
    // style the cover to 0x0 so it is hidden
    cover.style.width = '0px';
    cover.style.height = '0px';
    pageIsOpen = false;
    // remove the clicked class so the card animates back in
    currentCard.className = currentCard.className.replace(' clicked', '');
  }, 301);
}

function setCoverPosition(cardPosition) {
  // style the cover so it is in exactly the same position as the card
  cover.style.left = cardPosition.left + 'px';
  cover.style.top = cardPosition.top + 'px';
  cover.style.width = cardPosition.width + 'px';
  cover.style.height = cardPosition.height + 'px';
}

function setCoverColor(cardStyle) {
  // style the cover to be the same color as the card
  cover.style.backgroundColor = cardStyle.backgroundColor;
}

function scaleCoverToFillWindow(cardPosition) {
  // calculate the scale and position for the card to fill the page,
  var scaleX = windowWidth / cardPosition.width;
  var scaleY = windowHeight / cardPosition.height;
  var offsetX = (windowWidth / 2 - cardPosition.width / 2 - cardPosition.left) / scaleX;
  var offsetY = (windowHeight / 2 - cardPosition.height / 2 - cardPosition.top) / scaleY;
  // set the transform on the cover - it will animate because of the transition set on it in the CSS
  cover.style.transform = 'scaleX('+scaleX+') scaleY('+scaleY+') translate3d('+(offsetX)+'px, '+(offsetY)+'px, 0px)';
}

/* When the close is clicked */
function onCloseClick() {
  // remove the open class so the page content animates out
  openContent.className = openContent.className.replace(' open', '');
  // animate the cover back to the original position card and size
  animateCoverBack(currentCard);
  // animate in other cards
  animateOtherCards(currentCard, false);
}

function animateOtherCards(card, out) {
  var delay = 100;
  for (var i = 0; i < nCards; i++) {
    // animate cards on a stagger, 1 each 100ms
    if (cards[i] === card) continue;
    if (out) animateOutCard(cards[i], delay);
    else animateInCard(cards[i], delay);
    delay += 100;
  }
}

// animations on individual cards (by adding/removing card names)
function animateOutCard(card, delay) {
  setTimeout(function() {
    card.className += ' out';
   }, delay);
}

function animateInCard(card, delay) {
  setTimeout(function() {
    card.className = card.className.replace(' out', '');
  }, delay);
}

// this function searches up the DOM tree until it reaches the card element that has been clicked
function getCardElement(el) {
  if (el.className.indexOf('card ') > -1) return el;
  else return getCardElement(el.parentElement);
}

// resize function - records the window width and height
function resize() {
  if (pageIsOpen) {
    // update position of cover
    var cardPosition = currentCard.getBoundingClientRect();
    setCoverPosition(cardPosition);
    scaleCoverToFillWindow(cardPosition);
  }
  windowWidth = window.innerWidth;
  windowHeight = window.innerHeight;
}

var paragraphText = '<p>Somebody once told me the world is gonna roll me. I ain\'t the sharpest tool in the shed. She was looking kind of dumb with her finger and her thumb in the shape of an "L" on her forehead. Well the years start coming and they don\'t stop coming. Fed to the rules and I hit the ground running. Didn\'t make sense not to live for fun. Your brain gets smart but your head gets dumb. So much to do, so much to see. So what\'s wrong with taking the back streets? You\'ll never know if you don\'t go. You\'ll never shine if you don\'t glow.</p><p>Hey now, you\'re an all-star, get your game on, go play. Hey now, you\'re a rock star, get the show on, get paid. And all that glitters is gold. Only shooting stars break the mold.</p><p>It\'s a cool place and they say it gets colder. You\'re bundled up now, wait till you get older. But the meteor men beg to differ. Judging by the hole in the satellite picture. The ice we skate is getting pretty thin. The water\'s getting warm so you might as well swim. My world\'s on fire, how about yours? That\'s the way I like it and I never get bored.</p>';


