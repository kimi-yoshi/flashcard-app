'use strict';

const { type } = require("jquery");

window.addEventListener('DOMContentLoaded', function() {

  let card = document.getElementById('card');
  let btn = document.getElementById('btn');
  
  card.addEventListener('click', function() {
    flip();
  });
  btn.addEventListener('click', function() {
    next();
  });
  
  function flip() {
    card.className = card.className === '' ? 'open' : '' ;
  };
  
  function next() {
    if (card.className === 'open'){
      card.addEventListener('transitionend', refresh);
      flip();
    }else {
      refresh();
    }
  };
  
  window.addEventListener('keyup', function (e) {
  if (e.key === 'f') {
    flip();
  } else if (e.key === 'n') {
    next();
    };
  });

  function refresh (){
    $.ajax({
      url:'play',
      type: 'GET',
      dataType: 'json',
      }).done(function(data){
        $('#card-front').html(data.title)
        $('#card-back').html(data.meaning)
      });
    card.removeEventListener('transitionend', refresh);
  };

}, false);