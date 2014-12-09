// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require tooltip
//= require popover
//= require_tree ../../../vendor/assets/javascripts/.
//= require_tree .

'use strict';

$(function(){

	$('.panel-default .panel-body').hide();

	$('.panel-heading a').on('click', function(e){

		e.stopPropagation();

	});

	$('.panel-default .panel-heading').on('click', function(){

		$(this).next().slideToggle();
		$(this).find('.fa').toggleClass("fa-rotate-180");

	});

});