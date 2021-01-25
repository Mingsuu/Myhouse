<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<style>
	html, body {
	    line-height: 1;
	    font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	    -webkit-font-smoothing: antialiased;
	    letter-spacing: -0.4px;
	    font-size: 13px;
	    color: #424242;
	}
	div, form {
		display: block;
	}
	div, form, input, td {
		margin:0;
		padding:0;
	}
	img {
		border:0;
	}
	a {
		touch-action: manipulation;
	}
	a {
		text-decoration: none;
	}
	input {
		font-size: inherit;
	}
	input {
		font-family: inherit;
	    font-weight: inherit;
	}
	input[type="hidden" i] {
	    display: none;
	    appearance: initial;
	    background-color: initial;
	    cursor: default;
	    border: initial;
	}
	input {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    color: -internal-light-dark(black, white);
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    text-align: start;
	    -webkit-rtl-ordering: logical;
	    font: 400 13.3333px Arial;
	}
	table {
	    border-collapse: collapse;
	    border-spacing: 0;
	}
	table {
	    display: table;
	    box-sizing: border-box;
	    text-indent: initial;
	    border-color: grey;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	td {
	    display: table-cell;
	    vertical-align: inherit;
	}
	th {
		font-style: normal;
		display: table-cell;
   		vertical-align: inherit;
	}
	input[type='text'] {
		border-radius: 0;
	}
	thead {
	    display: table-header-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	#pre_order {
	    font-size: 14px;
	    width: 760px;
	    margin: 40px auto 0;
	}
	#pre_order #title {
	    font-size: 28px;
	    font-weight: bold;
	    letter-spacing: -0.3px;
	    color: #000000;
	    position: relative;
	    padding-bottom: 10px;
	}
	#pre_order>form>.panel {
	    margin-top: 50px;
	}
	#pre_order>form>.panel>.title {
	    font-size: 20px;
	    padding-bottom: 24px;
	    font-weight: bold;
	    line-height: 1;
	    color: #000000;
	    border-bottom: 2px solid #eee;
	    display: flex;
	}
	#pre_order>form>.panel>.title>.title {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    padding-right: 20px;
	    min-width: 140px;
	    box-sizing: border-box;
	}
	#pre_order>form #order_productions {
	    width: 100%;
	}
	#pre_order>form #order_productions td:first-child {
	    border-right: 1px solid #eee;
	}
	#pre_order>form #order_productions td {
	    border-bottom: 1px solid #eee;
	    box-sizing: content-box;
	}
	#pre_order>form #order_productions div.information {
	    display: flex;
	    padding: 10px;
	}
	#pre_order>form #order_productions div.information>img {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 85px;
	    height: 85px;
	    margin-right: 10px;
	}
	#pre_order>form #order_productions div.information>div {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	}
	#pre_order>form #order_productions div.information>div>.name {
	    font-size: 15px;
	    color: #424242;
	    margin-bottom: 5px;
	    font-weight: bold;
	}
	#pre_order>form #order_productions div.information>div>.option {
	    font-size: 15px;
	    color: #757575;
	    margin-bottom: 5px;
	    word-break: break-word;
	}
	#pre_order>form #order_productions div.information>div>.cost_count {
	    display: flex;
	    font-size: 15px;
	}
	#pre_order>form #order_productions div.information>div>.cost_count>.cost {
	    color: #424242;
	    font-weight: bold;
	}
	#pre_order>form #order_productions div.information>div>.cost_count>.divider {
	    color: #bdbdbd;
	    padding: 0 10px;
	}
	#pre_order>form #order_productions div.information>div>.cost_count>.count {
	    color: #bdbdbd;
	}
	#pre_order>form #order_productions td.delivery_fee {
	    width: 120px;
	    font-size: 12px;
	    text-align: center;
	    color: #757575;
	}
	#pre_order>form #order_productions td {
	    border-bottom: 1px solid #eee;
	    box-sizing: content-box;
	}
	#pre_order>form #order_productions td.delivery_fee>.type {
	    margin-bottom: 5px;
	}
	#pre_order>form>.panel>.input {
	    padding-right: 10px;
	}
	#pre_order>form>.panel>.input>.field {
	    display: flex;
	    margin-top: 20px;
	}
	#pre_order>form>.panel>.input>.field>.label {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 140px;
	    padding-left: 10px;
	    font-size: 15px;
	    color: #424242;
	    line-height: 40px;
	}
	#pre_order>form>.panel>.input>.field>.input {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    display: flex;
	}
	#pre_order>form>.panel>.input>.field .non_edit {
	    background-color: #eeeeee;
	}
	#pre_order>form input[type=text].half {
	    width: 50%;
	}
	#pre_order>form input[type=text] {
	    border: 1px solid #dcdcdc;
	    margin: 0;
	    padding: 0 15px;
	    line-height: 38px;
	    height: 40px;
	    box-sizing: border-box;
	    font-size: 14px;
	}
	#pre_order>form>.panel>.input>.field .non_edit {
	    background-color: #eeeeee;
	}
	#pre_order>form input[type=text].quarter {
	    width: 25%;
	}
	#pre_order>form input[type=text]+span, #pre_order>form input[type=text]+a {
	    display: block;
	    height: 40px;
	    line-height: 40px;
	    color: white;
	    background: #35c5f0;
	    width: calc(25% - 10px);
	    margin-left: 10px;
	    text-align: center;
	    font-size: 15px;
	    font-weight: bold;
	    cursor: pointer;
	    border-radius: 3px;
	} 
	#pre_order>form>.panel>.input>.field>.input.vertical {
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	#pre_order>form>.panel>.input>.field>.input.vertical>input:first-child {
	    margin-bottom: 10px;
	}
	#pre_order>form input[type=text].full {
	    width: 100%;
	}
	#pre_order>form>.panel>.input>.field>.input {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    display: flex;
	}
	#pre_order>form>.panel>.input>.field>.input.phone>input {
	    width: 50%;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_message {
	    margin-bottom: 3px;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_messages .product_name {
	    font-size: 12px;
	    margin-bottom: 3px;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_messages .delivery_each_memo {
	    margin-bottom: 5px;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_message_presets {
	    position: absolute;
	    width: 610px;
	    background: white;
	    z-index: 100;
	   	top:854;
	}
	#pre_order>form>.panel>.input>.field>.input #delivery_message_presets>.preset {
	    padding: 10px;
	    font-size: 13px;
	    border-bottom: 1px solid #eee;
	    border-right: 1px solid #eee;
	    border-left: 1px solid #eee;
	}
	.form-check {
	    font-size: 15px;
	}
	.form-radio, .form-check {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.form-check .form-check-label {
	    cursor: pointer;
	    display: block;
	    margin-bottom: 10px;
	    padding-left: 32px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	}
	.form-check .form-check-label .form-check {
	    left: -1000px;
	    position: absolute;
	    opacity: 0;
	}
	#pre_order>form>.panel>.input>.field>.input>.form-check.sms_agreement span {
	    font-size: 13px;
	    color: #757575;
	}
	.form-check .form-check-label .form-check:not(:disabled):checked+.check-img {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	}
	.form-radio>.form-radio-label .form-check:not(:disabled):checked+.check-img:after, .form-radio .form-check-label .form-check:not(:disabled):checked+.check-img:after, .form-check>.form-radio-label .form-check:not(:disabled):checked+.check-img:after, .form-check .form-check-label .form-check:not(:disabled):checked+.check-img:after {
	    opacity: 1;
	}
	.form-check .form-check-label .check-img {
	    box-sizing: border-box;
	    height: 22px;
	    width: 22px;
	    border-radius: 4px;
	    border: solid 1px #dbdbdb;
	    display: block;
	    transition: .2s ease;
	    position: absolute;
	    left: 0;
	    top: 0;
	}
	.form-check .form-check-label .check-img:after {
	    content: "";
	    position: absolute;
	    left: 50%;
	    top: 50%;
	    transform: translate(-50%, -50%);
	    box-sizing: border-box;
	    display: block;
	    width: 14px;
	    height: 14px;
	    background-size: 14px;
	    opacity: 0;
	    background-image: url(http://localhost:9000/myhouse/images/sms_chk.png);
	}
	#pre_order>form>.panel>.cost {
	    font-size: 15px;
	    padding: 10px 10px 0;
	}
	#pre_order>form>.panel>.cost>.cost_panel {
	    margin-top: 10px;
	    display: flex;
	}
	#pre_order>form>.panel>.cost>.cost_panel>.title {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	}
	#pre_order>form>.panel>.cost>.cost_panel>.amount {
   		-webkit-box-flex: 1;
	    flex: 1 0 0px;
	    text-align: right;
	    font-family: Tahoma;
	}
	#pre_order>form>.panel>.cost>.cost_panel.total {
	    margin-top: 20px;
	    font-size: 24px;
	    font-weight: bold;
	    display: flex;
	}
	#pre_order>form>.panel>.cost>.cost_panel>.amount {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    text-align: right;
	    font-family: Tahoma;
	}
	#pre_order>form>.panel>.pay_method {
	    margin-top: 20px;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel {
	    display: flex;
	    flex-wrap: wrap;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel input[type=radio] {
	    display: none;
	}
	/* 카드결제 */
	#pre_order>form>.panel>.pay_method>.payment_panel>input[type=radio]:checked+label {
	    background: #eaebef;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label.top {
	    border-top: 1px solid #eaebef;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label.first {
	    border-left: 1px solid #eaebef;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label {
	    -webkit-box-flex: 1;
	    flex: 1 0 12.5%;
	    box-sizing: border-box;
	    text-align: center;
	    cursor: pointer;
	    padding-bottom: 4px;
	    border-bottom: 1px solid #eaebef;
	    border-right: 1px solid #eaebef;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label>.img {
	    pointer-events: none;
	    margin: 10px auto 0;
	    width: 64px;
	    height: 64px;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label>.img {
	    pointer-events: none;
	    margin: 10px auto 0;
	    width: 64px;
	    height: 64px;
	}
	#pre_order>form>.panel>.pay_method>.payment_panel>label>.title {
	    color: #424242;
	    font-size: 13px;
	    line-height: 1;
	    margin-bottom: 2px;
	}
	#pre_order>form #confirm_checkbox {
	    margin-top: 40px;
	    padding: 0 10px;
	}
	#pre_order>form #confirm_checkbox>.all_policy {
	    display: flex;
	}
	#pre_order>form #confirm_checkbox>.all_policy>.title {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    font-size: 12px;
	    line-height: 1;
	    color: #757575;
	}
	#pre_order>form #confirm_checkbox>.all_policy>.opener {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-size: 12px;
	    line-height: 1;
	    color: #bdbdbd;
	    margin-left: 10px;
	    cursor: pointer;
	}
	#pre_order>form #confirm_checkbox>.policies {
	    margin-top: 20px;
	    border-top: 1px solid #eee;
	    display: none;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.title_panel {
	    display: flex;
	    margin-top: 20px;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.title_panel>.title {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    font-size: 13px;
	    line-height: 1;
	    color: #424242;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content {
	    margin-top: 10px;
	    max-height: 100px;
	    overflow-y: scroll;
	    border: 1px solid #eee;
	    padding: 3px;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table th:first-child {
	    border-left: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table .to {
		    width: 25%
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table th {
	    text-align: center;
	    background-color: #eeeeee;
	    font-weight: bold;
	    border-top: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table th {
	    padding: 10px;
	    font-size: 12px;
	    color: #757575;
	    border-right: 1px solid #dcdcdc;
	    border-bottom: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table td:first-child  {
	    border-left: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.content>table td {
	    height: 66px;
	    padding: 10px;
	    font-size: 12px;
	    color: #757575;
	    border-right: 1px solid #dcdcdc;
	    border-bottom: 1px solid #dcdcdc;
	}
	#pre_order>form #confirm_checkbox>.policies>.policy>.title_panel>.opener {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-size: 12px;
	    line-height: 1;
	    color: #bdbdbd;
	    margin-left: 10px;
	    cursor: pointer;
	}
	#pre_order>form #do_payment {
	    margin: 40px 0 40px;
	    text-align: center;
	    color: white;
	    font-weight: bold;
	    font-size: 24px;
	    line-height: 50px;
	    background: #35c5f0;
	    border-radius: 4px;
	    cursor: pointer;
	}
	/* 배송지 변경 */
	.ui-popup {
	    position: fixed;
	    overflow-y: scroll;
	    overflow-x: hidden;
	    left: 0;
	    top: 0;
	    height: 100%;
	    width: 100%;
	    z-index: 100000;
	    background: rgba(0,0,0,0.4);
	}
	#address_lists>.address_list {
	    width: calc(100% - 32px);
	    max-height: calc(100% - 32px);
	    max-width: 514px;
	    background-color: #ffffff;
	    border-radius: 4px;
	    margin: 16px auto;
	    overflow-y: auto;
	    box-sizing: border-box;
	    padding: 20px;
	}
	#address_lists>.address_list>.title.first {
	    margin-top: 0;
	    border-bottom: 0;
	}
	#address_lists>.address_list>.title {
	    padding: 0 10px 10px;
	    color: #424242;
	    font-weight: bold;
	    font-size: 18px;
	}
	#address_lists>.address_list>#addresses {
	    border-bottom: 1px solid #eeeeee;
	    width: 100%;
	}
	#address_lists>.address_list>#addresses tr.name td {
	    padding-top: 15px;
	    border-top: 1px solid #dcdcdc;
	}
	
	#address_lists>.address_list>#addresses td.title {
	    color: #bdbdbd;
	    width: 110px;
	    vertical-align: top;
	    padding-left: 20px;
	}
	#address_lists>.address_list>#addresses tr td {
	    line-height: 30px;
	    font-size: 15px;
	    padding-bottom: 7px;
	}
	#address_lists>.address_list>#addresses tr.name td.content {
	    overflow: hidden;
	}
	#address_lists>.address_list>#addresses tr.name td {
	    padding-top: 15px;
	    border-top: 1px solid #dcdcdc;
	}
	#address_lists>.address_list>#addresses td.content {
	    width: calc(100% - 110px - 120px);
	    color: #424242;
	}
	#address_lists>.address_list>#addresses tr td {
	    line-height: 30px;
	    font-size: 15px;
	    padding-bottom: 7px;
	}
	address_lists>.address_list>#addresses tr.name td.content>.name {
	    max-width: 100px;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: pre;
	}
	#address_lists>.address_list>#addresses td.content>div {
	    float: left;
	}
	address_lists>.address_list>#addresses tr.name td {
	    padding-top: 15px;
	    border-top: 1px solid #dcdcdc;
	}
	#address_lists>.address_list>#addresses td.button {
	    vertical-align: top;
	}
	#address_lists>.address_list>#addresses tr td {
	    line-height: 30px;
	    font-size: 15px;
	    padding-bottom: 7px;
	}
	#address_lists>.address_list>#addresses td.button>.select {
	    text-align: center;
	    background-color: #35c5f0;
	    border-radius: 4px;
	    width: 60px;
	    font-size: 13px;
	    color: #ffffff;
	    cursor: pointer;
	    margin-right: 20px;
	}
	#address_lists>.address_list>#form form {
	    padding: 20px 20px 0;
	}
	#address_lists>.address_list>#form form>.field {
	    overflow: hidden;
	    margin-bottom: 20px;
	}
	#address_lists>.address_list>#form form>.field>.title {
	    float: left;
	    width: 110px;
	    font-size: 15px;
	    color: #bdbdbd;
	    line-height: 40px;
	}
	#address_lists>.address_list>#form form>.field>.content {
	    float: left;
	    width: calc(100% - 110px);
	    overflow: hidden;
	}
	#address_lists>.address_list>#form form>.field>.content.address_name>input {
	    width: 100%;
	}
	#address_lists>.address_list>#form form>.field>.content>input {
	    line-height: 38px;
	    border: 1px solid #dcdcdc;
	    font-size: 15px;
	    color: #424242;
	    font-weight: 300;
	    padding: 0 15px;
	    box-sizing: border-box;
	    height: 40px;
	}
	#address_lists>.address_list>#form form>.field>.content.post_code>input {
	    width: calc(100% - 120px);
	}
	#address_lists>.address_list>#form form>.field>.content>input.non_edit {
	    background-color: #eeeeee;
	}
	#address_lists>.address_list>#form form>.field>.content>input {
	    line-height: 38px;
	    border: 1px solid #dcdcdc;
	    font-size: 15px;
	    color: #424242;
	    font-weight: 300;
	    padding: 0 15px;
	    box-sizing: border-box;
	    height: 40px;
	}
	#address_lists>.address_list>#form form>.field>.content.post_code span {
	    float: right;
	    width: 110px;
	    margin-left: 10px;
	    text-align: center;
	    background-color: #35c5f0;
	    line-height: 40px;
	    color: #ffffff;
	    font-size: 12px;
	    border-radius: 2px;
	    cursor: pointer;
	}
	#address_lists>.address_list>#form form>.field>.content.address>input#address_book_address {
	    margin-bottom: 10px;
	}
	#address_lists>.address_list>#form form>.field>.content.phone>input {
	    width: calc(33.3333% - 8px);
	    float: left;
	    text-align: center;
	    font-weight: 300;
	}
	#address_lists>.address_list>#form form>.field>.content.phone>div {
	    float: left;
	    width: 12px;
	    color: #dcdcdc;
	    line-height: 40px;
	    text-align: center;
	}
	#address_lists>.address_list>#form form>.field>.content.button {
	    width: 100%;
	}
	#address_lists>.address_list>#form form>.field>.content.button>input#submit {
	    margin: 0;
	    width: 47%;
	    color: #ffffff;
	    background-color: #35c5f0;
	    font-size: 15px;
	    border-radius: 3px;
	    border: none;
	    line-height: 40px;
	    text-align: center;
	    font-weight:700;
	    margin-left:10px;
	}
	#address_lists>.address_list>#form form>.field>.content.button>input#cancel {
	    margin: 0;
	    width: 47%;
	    color: #ffffff;
	    background-color: #35c5f0;
	    font-size: 15px;
	    border-radius: 3px;
	    border: none;
	    line-height: 40px;
	    text-align: center;
	    font-weight:700;
	    margin-left:10px;
	}
	._2Jn8D {
		padding-top:10px;
	    max-width: 642px;
	}
	._3Bt8k {
	    position: relative;
	    display: inline-block;
	    width: 100%;
	}
	._3Bt8k ._3K8Q8 {
	    padding-right: 30px;
	}
	._1qwAY {
	    padding: 8px 15px 9px;
	}
	._3ASDR {
	    display: inline-block;
	    width: 100%;
	    margin: 0;
	    border: 1px solid #dbdbdb;
	    background-color: #fff;
	    color: #000;
	    border-radius: 4px;
	    box-sizing: border-box;
	    font-family: Noto Sans KR,Noto Sans CJK KR,맑은 고딕,Malgun Gothic,sans-serif;
	    font-size: 15px;
	    line-height: 21px;
	    transition: border-color .1s,background-color .1s;
	    resize: none;
	}
	._3wKau {
	    position: relative;
	    margin-bottom: 8px;
	}
	._1FAgO._17HFC._1FAgO._17HFC._1FAgO._17HFC {
	    padding-bottom: 25px;
	}
	._1qwAY {
	    padding: 8px 15px 9px;
	}
	._2CKA7 {
	    position: absolute;
	    font-size: 12px;
	    color: #757575;
	    bottom: 10px;
	    right: 15px;
	    user-select: none;
	}
</style> 
<script>
	$(document).ready(function(){
		/* 배송 메모 - 리스트 */
		$("#delivery_message").focus(function(){
			//alert("focus");
			$("#delivery_message_presets").css("display","block");
			$("#delivery_message_presets").css("top","854");
		});
		$("#delivery_message").blur(function(){
			$("#delivery_message_presets").css("display","none");
		});
	
		/* 배송 메모 - 지정메모1 */
		$("#msg-3").click(function(){
			alert($("#msg-3").text());
			/* $("#delivery_message").val($("#msg-1").text()); */
		});
		
		/* 개인약관 전체 :: 보기 */
		$("#all-policy-open").click(function(){
				$("#all-policy-open").css("display","none");
				$("#all-policy-close").css("display","block");
				$("#all-policy").css("display","block");
		});
		/* 개인약관 전체 :: 닫기 */
		$("#all-policy-close").click(function(){
				$("#all-policy-open").css("display","block");
				$("#all-policy-close").css("display","none");
				$("#all-policy").css("display","none");
		});
		
		/* 개인약관 부분 :: 1 -  열기*/
		$("#part-policy-open").click(function(){
			$("#part-policy-agree").css("display","block"); 
			$("#part-policy-open").css("display","none");
			$("#part-policy-close").css("display","block");
		});
		/* 개인약관 부분 :: 1 - 닫기*/
		$("#part-policy-close").click(function(){
			$("#part-policy-agree").css("display","none");
			$("#part-policy-open").css("display","block");
			$("#part-policy-close").css("display","none");
		});
		/* 개인약관 부분 :: 2 -  열기*/
		$("#part-policy-open-2").click(function(){
			$("#part-policy-agree-2").css("display","block"); 
			$("#part-policy-open-2").css("display","none");
			$("#part-policy-close-2").css("display","block");
		});
		/* 개인약관 부분 :: 2 - 닫기*/
		$("#part-policy-close-2").click(function(){
			$("#part-policy-agree-2").css("display","none");
			$("#part-policy-open-2").css("display","block");
			$("#part-policy-close-2").css("display","none");
		});
		
		/* 배송지 변경 버튼 클릭 */
		$("#select-addr").click(function(){
			if($("#address_lists").css("display","none")) {
				$("#address_lists").css("display","block");
			} else {
				$("#address_lists").css("display","none");
			}
		});
		
		/* 배송지 전체 입력창 닫기 */
		$("#cancel").click(function(){
			if($("#address_lists").css("display","block")) {
				$("#address_lists").css("display","none");
			}else {
				$("#address_lists").css("display","block");
			}
		})
	});
	
</script>
</head>
<body>
<div id="pre_order" class="single product">
	<form id="edit_order" class="edit_order" action="#" accept-charset="UTF-8" method="post">
		<input name="utf8" type="hidden" value="✓">
		<input type="hidden" name="_method" value="patch">
		<input type="hidden" name="authenticity_token" value="fl69VV4gF2+Pxpg74o9O+cL3PVzpNO5npox5F1jmZcs3zeLZNSu+e1mPjEFwPxJuX0abIhn7eDpKBH1L6C52Ag==">
		<div id="title"> 주문/결제</div>
		<div class="panel">
	      <div class="title">
	        <div class="title">주문상품</div>
	      </div>
	      <table cellspacing="0" id="order_productions">
	        <tbody data-hj-suppress="" data-hj-ignore-attribute="">
	            <tr class="production" data-id="570295" data-cost="99000" data-count="1" data-name="[잉글랜더] [단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors">
	              <td>
	                <div class="information">
	                  <img src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-productions-161043210673832728.jpg/320/320" alt="320">
	                  <div>
	                    <div class="name">[잉글랜더] [단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors</div>
	                    <div class="option">침대프레임 사이즈: 슈퍼싱글(매트제외) / 색상 옵션: 내츄럴원목</div>
	                    <div class="cost_count">
	                      <div class="cost">99,000원</div>
	                      <div class="divider">|</div>
	                      <div class="count">1개</div>
	                    </div>
	                  </div>
	                </div>
	              </td>
	              <td class="delivery_fee" data-id="_85249289">
	                  <div class="type">업체직접배송<br>(상품 상세정보 참고)</div>
	                <div class="seller">(주)잉글랜더 코리아</div>
	              </td>
	            </tr>
	        </tbody>
	      </table>
	    </div> <!-- panel - 주문상품 -->
	    <div class="panel">
	      <div class="title"><div class="title">배송지</div></div>
	      <div class="input">
		        <div class="field">
		          <div class="label">받는분</div>
		          <div class="input">
		              <input class="non_edit can_copy half" presence="true" readonly="readonly" value="서영화" data-hj-suppress="" type="text" name="order[recipient]" id="order_recipient">
		            <input type="hidden" name="order[received_name]" id="order_received_name">
		          </div>
		        </div>
		        <div class="field">
		          <div class="label">우편번호</div>
		          <div class="input">
		              <input class="non_edit quarter" presence="true" readonly="readonly" value="06035" data-hj-suppress="" type="text" name="order[received_zip_code]" id="order_received_zip_code">
		              <a data-remote="true" id="select-addr" href="#"><span id="select_address">배송지변경</span></a>          
		          </div>
		        </div>
		        <div class="field">
		          <div class="label">주소</div>
		          <div class="input vertical">
		              <input presence="true" readonly="readonly" class="non_edit full" value="서울 강남구 가로수길 5 (신사동) " data-hj-suppress="" type="text" name="order[received_at]" id="order_received_at">
		              <input presence="true" readonly="readonly" class="non_edit full" value="1층" data-hj-suppress="" type="text" name="order[received_at_detail]" id="order_received_at_detail">
		            <input presence="true" value="서울" data-hj-suppress="" class="full" type="hidden" name="order[received_at_sido]" id="order_received_at_sido">
		            <input presence="true" value="000-000" data-hj-suppress="" class="full" type="hidden" name="order[received_at_post_code6]" id="order_received_at_post_code6">
		          </div>
		        </div>
		        <div class="field">
		          <div class="label">휴대전화</div>
		          <div class="input phone">
		              <input class="non_edit" readonly="readonly" presence="true" value="010-4512-3698" data-hj-suppress="" type="text" name="order[received_phone_number]" id="order_received_phone_number">
		          </div>
		        </div>
		        <div class="field">
		          <div class="label vertical">배송 메모</div>
		          <div class="input vertical">
		                 <div class="_2Jn8D">
		                 	<div class="_3wKau">
		                 		<textarea class="_3ASDR _1qwAY _1FAgO _17HFC" placeholder="배송 요청사항을 입력해주세요" rows="1" style="overflow: hidden; overflow-wrap: break-word; height: 55px;"></textarea>
		                 		<div class="_2CKA7">0<span> / 50</span></div>
		                 	</div>
		                  	<div class="_3Bt8k">
		                  		<select class="_3ASDR _1qwAY _3K8Q8">
			                  		<option value="0">배송시 요청사항을 선택해주세요</option><option value="1">부재시 문앞에 놓아주세요</option>
			                  		<option value="2">배송전에 미리 연락주세요</option><option value="3">부재시 경비실에 맡겨 주세요</option>
			                  		<option value="4">부재시 전화주시거나 문자 남겨 주세요</option><option value="5">직접입력</option>
		                  		</select>
		                  	</div>
		                  </div>
		            <div id="delivery_messages" style="display: none;">
		                <div class="delivery_message first">
		                  <div class="product_name">[잉글랜더][단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors</div>
		                  <input class="delivery_each_memo donot_check_before_payment full view_delivery_preset" autocomplete="off" data-hj-suppress="" type="text" name="order[order_productions_attributes][0][delivery_memo]" id="order_order_productions_attributes_0_delivery_memo">
		                </div>
		                <input class="products_delivery_is_backwoods" type="hidden" value="false" name="order[order_productions_attributes][0][is_backwoods]" id="order_order_productions_attributes_0_is_backwoods">
						<input type="hidden" value="85249289" name="order[order_productions_attributes][0][id]" id="order_order_productions_attributes_0_id">            
					</div>
		          </div> <!-- input vertical -->
		        </div>
	      </div>
    </div> <!-- panel - 배송지  -->
    <div class="panel">
      <div class="title">
	       <div class="title">주문자</div>
	       <div class="button" id="copy_delivery">배송지 정보와 동일하게 채우기</div>
	      </div>
	      <div class="input">
	        <div class="field">
	          <div class="label">이름</div>
	          <div class="input">
	            <input presence="true" value="서영화" autocomplete="off" data-hj-suppress="" class="half" type="text" name="order[payer_name]" id="order_payer_name">
	          </div>
	        </div> <!-- 이름 -->
	        <div class="field">
	          <div class="label">이메일</div>
	          <div class="input email">
	            <input presence="true" value="dudghk0924@naver.com" autocomplete="off" data-hj-suppress="" type="text" name="order[payer_email]" id="order_payer_email">
	          </div>
	        </div> <!-- 이메일 -->
	        <div class="field">
	          <div class="label">휴대전화</div>
	          <div class="input phone">
	            <input presence="true" value="010-8714-9034" data-hj-suppress="" type="text" name="order[payer_phone_number]" id="order_payer_phone_number">
	            <div id="verified_phone_number">
	              <div class="verified_phone_number" data-value="01087149034" data-verified="true"></div>
	              <div class="need_verified" style="display: none;">
	                <div id="do_verified_phone_number">인증받기</div>
	                <div id="verified_inputs">
	                  <input id="verified_input" class="donot_check_before_payment" placeholder="인증번호" autocomplete="off" type="text" data-hj-suppress="" size="6">
	                  <div id="check_verified">확인</div>
	                  <div id="resend_verified_number">재전송</div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div> <!-- 휴대전화  -->
	        <div class="field">
	          <div class="label"></div>
	          <div class="input">
	            <div class="form-check sms_agreement">
	              <label class="form-check-label" for="order_sms_aggrement">
	                <input name="order[sms_aggrement]" type="hidden" value="0"><input class="form-check" type="checkbox" value="1" checked="checked" name="order[sms_aggrement]" id="order_sms_aggrement">
	                <span class="check-img"></span>SMS 수신동의 <span> (배송 정보를 SMS로 보내드립니다.)</span>
				  </label>            
			 	</div>
          	  </div>
       	    </div> <!-- SMS 수신동의 -->
     	 </div>
     </div> <!-- 주문자 -->
     <div class="panel">
	      <div class="title">최종 결제 금액</div>
	      <div class="cost">
	        <div class="cost_panel">
	          <div class="title">총 상품 금액</div>
	          <div class="amount" id="preview_product_cost" data-hj-suppress="">99,000</div>
	        </div>
	        <div class="cost_panel">
	          <div class="title">배송비</div>
	          <div class="amount" id="preview_delivery_cost" data-hj-suppress="">0</div>
	        </div>
	        <div class="total cost_panel">
	          <div class="amount" id="preview_selling_cost" data-hj-suppress="">99,000원</div>
	        </div>
	      </div>
	      <input type="hidden" name="order[imp_uid]" id="order_imp_uid">
	      <input type="hidden" name="order[apply_number]" id="order_apply_number">
	      <input type="hidden" name="order[receipt_url]" id="order_receipt_url">
	      <input type="hidden" value="bp_p11910649_000045262550" name="order[merchant_uid]" id="order_merchant_uid">
	      <input type="hidden" name="order[vbank_num]" id="order_vbank_num">
	      <input type="hidden" name="order[vbank_name]" id="order_vbank_name">
	      <input type="hidden" name="order[vbank_holder]" id="order_vbank_holder">
	      <input type="hidden" name="order[vbank_date]" id="order_vbank_date">
	      <input type="hidden" value="0" name="order[real_pay_cost]" id="order_real_pay_cost">
	      <input type="hidden" value="0" name="order[delivery_cost]" id="order_delivery_cost">
	      <input value="0" type="hidden" name="order[mileage_cost]" id="order_mileage_cost">
	      <input value="0" type="hidden" name="order[coupon_cost]" id="order_coupon_cost">
	      <input type="hidden" value="Web" name="order[os_type]" id="order_os_type">
	      <input type="hidden" name="coupon_id" id="coupon_id" value="0">
	      <input type="hidden" value="false" name="order[from_cart]" id="order_from_cart">
    </div> <!-- 최종결제금액 -->
    <div class="panel">
      <div class="title light">결제 수단</div>
      <div class="pay_method">
        <div class="payment_panel">
              <input type="radio" value="kcp_credit_card" name="order[payment_method]" id="order_payment_method_kcp_credit_card">
            <label class="first  top " data-start-at="" data-end-at="" for="order_payment_method_kcp_credit_card">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_card.png" alt="Img card">
              <div class="title">카드</div>
                <div class="event" data-title="" data-detail1="" data-detail2=""></div>
			</label>              
			<input type="radio" value="without_bankbook" name="order[payment_method]" id="order_payment_method_without_bankbook">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_without_bankbook">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_vbank.png" alt="Img vbank">
              <div class="title">무통장입금</div>
                <div class="event" data-title="" data-detail1="" data-detail2=""></div>
			</label>              
			<input type="radio" value="kakaopay" name="order[payment_method]" id="order_payment_method_kakaopay">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_kakaopay">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_kakaopay.png" alt="Img kakaopay">
              <div class="title">카카오페이</div>
			</label>              
			<input type="radio" value="chai" name="order[payment_method]" id="order_payment_method_chai">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_chai">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_chai.png" alt="Img chai">
              <div class="title">차이</div>
			</label>              
			<input type="radio" value="payco" name="order[payment_method]" id="order_payment_method_payco">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_payco">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_payco.png" alt="Img payco">
              <div class="title">페이코</div>
			</label>              
			<input type="radio" value="naverpay" name="order[payment_method]" id="order_payment_method_naverpay">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_naverpay">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_naver.png" alt="Img naver">
              <div class="title">네이버페이</div>
			</label>              
			<input type="radio" value="tosspay" name="order[payment_method]" id="order_payment_method_tosspay">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_tosspay">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_toss.png" alt="Img toss">
              <div class="title">토스</div>
			</label>              
			<input type="radio" value="phone" name="order[payment_method]" id="order_payment_method_phone">
            <label class=" top " data-start-at="" data-end-at="" for="order_payment_method_phone">
              <img class="img" width="64" src="https://bucketplace-v2-development.s3.amazonaws.com/pg/img_phone.png" alt="Img phone">
              <div class="title">핸드폰</div>
			</label>
        </div> <!-- payment_panel -->
      </div>
    </div> <!-- 결제수단  -->
    <div id="confirm_checkbox">
      <div class="form-check check_agree_policy">
        <label class="form-check-label" for="check_agree_policy">
          <input type="checkbox" id="check_agree_policy" class="form-check">
          <span class="check-img"></span>결제 진행 필수사항 동의
        </label>
      </div>
      <div class="all_policy">
        <div class="title">개인정보 제 3자 제공 및 결제대행 서비스 표준 이용약관</div>
        <div class="opener" id="all-policy-open" style="display:block;">열기</div>
        <div class="opener" id="all-policy-close" style="display:none;">닫기</div>
      </div>
      <div class="policies" id="all-policy">
        <div class="policy" >
          <div class="title_panel">
            <div class="title">개인정보 제 3자 제공</div>
            <div class="opener" id="part-policy-open" style="display:block;">열기</div>
            <div class="opener" id="part-policy-close" style="display:none;">닫기</div>
          </div>
          <div class="content" id="part-policy-agree" style="display:none;">
            <table>
              <thead>
              <tr>
                <th class="to">제공 받는자</th>
                <th class="goal">제공목적</th>
                <th class="information">항목</th>
                <th class="due_date">보유 및 이용 기간</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td class="to">㈜잉글랜더 코리아</td>
                <td class="goal">상품 및 경품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서비스제공계약 및
                  전자상거래(통신판매)계약의
                  이행을 위해 필요한 업무의 처리
                </td>
                <td class="information">
                  1) 구매자정보(닉네임, 성명, 휴대폰번호, 이메일주소)<br>
                  2) 수령인정보(성명, 휴대폰번호, 주소)<br>
                  3) 상품 구매, 취소, 반품, 교환정보<br>
                  4) 송장정보
                </td>
                <td class="due_date">상품 제공 완료 후 3개월</td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="policy">
          <div class="title_panel">
            <div class="title">개인정보 수집 및 이용</div>
            <div class="opener" id="part-policy-open-2" style="display:block;">열기</div>
            <div class="opener" id="part-policy-close-2"style="display:none;">닫기</div>
          </div>
          <div class="content" id="part-policy-agree-2" style="display:none;">
            <table>
              <thead>
              <tr>
                <th class="to">수집방법</th>
                <th class="goal">수집항목</th>
                <th class="information">목적</th>
                <th class="due_date">보유 및 이용 기간</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td class="to">상품구매</td>
                <td class="goal">1) 구매자 정보(성명, 휴대전화 번호)<br>2) 수령인 정보(성명, 휴대전화 번호, 주소)</td>
                <td class="information">상품 배송 및 서비스 제공을 위한 사용자 정보 확인</td>
                <td class="due_date" rowspan="4"> 5년 (계약 및 철회, 결제 및 공급)</td>
              </tr>
              <tr>
                <td class="to">결제</td>
                <td class="goal">신용카드 정보</td>
                <td class="information">간편 결제 서비스 제공</td>
              </tr>
              <tr>
                <td class="to">취소·환불</td>
                <td class="goal">환불 계좌번호, 은행명, 예금주명</td>
                <td class="information">결제 서비스 환불</td>
              </tr>
              <tr>
                <td class="to">휴대전화 인증</td>
                <td class="goal">휴대전화 번호</td>
                <td class="information">상품 구매 및 포인트(적립금) 지급 시 본인 인증</td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
    </div>
    <div id="do_payment">결제하기</div>
	</form>
</div>

<div id="address_lists" class="ui-popup popup order" data-recipient="order_recipient" data-div_id="" data-name_id="order_received_name" data-phone_id="order_received_phone_number" data-address_id="received_at_full" data-address_pre_id="order_received_at" data-address_zip_code="order_received_zip_code" data-address_extra_id="order_received_at_detail" data-sido="order_received_at_sido" style="display: none;">
	<div id="find_address_layer" style="position: fixed; overflow: hidden; z-index: 10000; padding-top: 20px; background: white; display: none; width: 300px; height: 460px; border: 5px solid; left: 446px; top: 30px;">
	    <img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" alt="닫기 버튼">
	</div>
	<div class="address_list" >
	    <div class="title first">배송지 선택<div class="close_popup"></div></div>
	
	    <table id="addresses" cellspacing="0" data-number="1">
	        <tbody>
	            <tr class="name address_6637995">
	                <td class="title">배송지명</td>
	                <td class="content">
	                    <div class="name">서영화</div>
	                </td>
	                <td class="button" rowspan="5">
	                    <div class="select" data-id="6637995">선택</div>
	                </td>
	            </tr>
	
	            <tr class="recipient address_6637995">
	                <td class="title">받는분</td>
	                <td class="content">
	                    <div class="recipient">서영화</div>
	                </td>
	            </tr>
	
	            <tr class="post_code address_6637995">
	                <td class="title">우편번호</td>
	                <td class="content">
	                    <div class="post_code">06035</div>
	                </td>
	            </tr>
	
	            <tr class="address address_6637995">
	                <td class="title">주소</td>
	                <td class="content">
	                    <div class="address">서울 강남구 가로수길 5 (신사동)  1층</div>
	                    <div class="address_pre" style="display: none;">서울 강남구 가로수길 5 (신사동) </div>
	                    <div class="address_extra" style="display: none;">1층</div>
	                    <div class="address_sido" style="display: none;">서울</div>
	                    <div class="address_post_code6" style="display: none;">000-000</div>
	                </td>
	            </tr>
	
	            <tr class="number address_6637995">
	                <td class="title">전화번호</td>
	                <td class="content">
	                    <div class="number">010-4512-3698</div>
	
	                    <div class="phone1" style="display: none;">010</div>
	                    <div class="phone2" style="display: none;">4512</div>
	                    <div class="phone3" style="display: none;">3698</div>
	                </td>
	            </tr>
	        </tbody>
	    </table>
	
	    <div class="title">새 배송지 등록</div>
	    <div id="form" class="form">
	        <form class="new_address_book" id="new_address_book" action="/address_books" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="BS/dCdnHuxXfKsr3HKFaMJ7E7H4zfUgZ0sWZS0NNKj5MvIKFsswSAQlj3o2OEQanA3VKAMOy3kQ+TZ0X84U59w==">
	            <input value="mobile" type="hidden" name="address_book[from]" id="address_book_from">
	
	            <div class="field address_name">
	                <div class="title">배송지명</div>
	                <div class="content address_name">
	                    <input presence="true" required="required" type="text" name="address_book[name]" id="address_book_name">
	                </div>
	            </div>
	            <div class="field name">
	                <div class="title">받는분</div>
	                <div class="content name">
	                    <input presence="true" required="required" type="text" name="address_book[recipient]" id="address_book_recipient">
	                </div>
	            </div>
	            <div class="field post_code">
	                <div class="title">우편번호</div>
	                <div class="content post_code">
	                    <input presence="true" required="required" readonly="readonly" class="non_edit" type="text" name="address_book[post_code]" id="address_book_post_code">
	                    <input type="hidden" name="address_book[post_code_6]" id="address_book_post_code_6">
	                    <input type="hidden" name="address_book[sido]" id="address_book_sido">
	                    <span id="find_address_on_address_book">주소찾기</span>
	                </div>
	            </div>
	            <div class="field address">
	                <div class="title">주소</div>
	                <div class="content address">
	                    <input presence="true" required="required" readonly="readonly" class="address non_edit" type="text" name="address_book[address]" id="address_book_address">
	                    <input presence="true" required="required" class="address" type="text" name="address_book[extra_address]" id="address_book_extra_address">
	                </div>
	            </div>
	            <div class="field">
	                <div class="title">휴대전화</div>
	                <div class="content phone">
	                        <input required="required" presence="true" class="phone" pattern="^\d{2,3}$" type="number" name="address_book[phone_1]" id="address_book_phone_1">
	                        <div>-</div>
	                        <input required="required" presence="true" class="phone" pattern="^\d{3,4}$" type="number" name="address_book[phone_2]" id="address_book_phone_2">
	                        <div>-</div>
	                        <input required="required" presence="true" class="phone" pattern="^\d{4}$" type="number" name="address_book[phone_3]" id="address_book_phone_3">
	                </div>
	            </div>
	            <div class="field">
	                <div class="title"></div>
	                <div class="content button"><input type="submit" name="commit" value="등록하기" id="submit" data-disable-with="등록"><input type="button" name="cancel" value="취소하기" id="cancel" data-disable-with="취소"></div>
	            </div>
			</form>    
		</div>
	</div>
</div>

</body>
</html>