<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Post Edit Page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

ol, ul, li {
	list-style: none;
}

dl {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

dt {
	float: left;
}

dd {
	padding-left: 50px;
}

#content {
	margin: 0;
	padding: 39px 0 40px;
	width: 100%;
	min-height: 2000px;
	background: #f1f3f9;
}

.wrap_jview {
	position: relative;
	z-index: 1;
	margin: 0 auto;
	padding-right: 300px;
	width: 960px;
}

.jview {
	position: relative;
}

.jview>.wrap_jv_cont {
	position: relative;
	padding: 40px 44px 100px;
	border: 1px solid #e5e6eb;
	background: #fff;
	float: left;
	min-width: 800px;
}

.jview .btn_jview {
	display: inline-block;
	padding: 0 9px 3px;
	height: 28px;
	border: 1px solid #e4e4e4;
	box-sizing: border-box;
	font-size: 0;
	vertical-align: top;
	background-color: #fff;
}

.jview .btn_jview span {
	color: #666;
	font-size: 13px;
	font-weight: normal;
	letter-spacing: -1px;
}

.jv_header {
	position: relative;
	padding-right: 270px;
	color: #222;
	letter-spacing: -1px;
	line-height: 28px;
	min-height: 74px;
}

.jv_header .tit_job {
	margin-top: 4px;
	font-size: 26px;
	font-weight: bold;
	letter-spacing: -1.5px;
	line-height: 34px;
}

.wrap_jv_header+.jv_cont {
	margin-top: 0;
}

.jv_header .btn_scrap {
	position: absolute;
	top: 14px;
	right: 195px;
}

.jv_header .btn_apply {
	position: absolute;
	top: 4px;
	right: 0;
	width: 185px;
	text-align: center;
}

.jv_cont>.cont {
	position: relative;
	letter-spacing: -1px;
}

.col {
	float: left;
	padding: 25px 0 30px;
	width: 420px;
	border-top: 1px solid #e5e6eb;
	font-size: 14px;
	letter-spacing: -0.5px;
	margin-left: -5px;
	box-sizing: unset;
}

#col2 {
	position: absolute;
	right: 0;
}

.blind {
	display: none;
	width: 1px;
	height: 1px;
	color: #fff;
	visibility: hidden;
	position: absolute;
	top: -2000px;
	left: -2000px;
}

.jv_summary .col+.col {
	margin-left: 30px;
}

.jv_summary .col>dl:first-child {
	margin-top: 0;
}

.jv_summary .col>dl {
	display: block;
	position: relative;
	margin-top: 5px;
	padding-left: 86px;
	min-height: 22px;
}

.jv_summary .meta {
	clear: both;
	position: relative;
	padding-top: 12px;
	border-top: 1px solid #e5e6eb;
	font-size: 0;
	line-height: 18px;
	text-align: right;
}

.jv_cont {
	position: relative;
	z-index: 1;
	margin-top: 50px;
}

.jv_cont>.box {
	padding: 29px 29px 0;
	border: 1px solid #ebebeb;
	border-top-color: #999;
}

.jv_cont>.cont {
	position: relative;
	letter-spacing: -1px;
}

.jv_company>.box {
	padding: 24px 14px;
}

.jv_company .logo {
	overflow: hidden;
	float: left;
	width: 260px;
	height: 155px;
	line-height: 155px;
	text-align: center;
}

.jv_company .logo+.wrap_info {
	padding: 0 15px 0 290px;
	width: 535px;
}

.jv_company .wrap_info .title {
	margin-bottom: 15px;
	height: 28px;
	font-size: 0;
}

.jv_company .wrap_info .company_name {
	display: inline-block;
	overflow: hidden;
	margin-right: 5px;
	padding-right: 2px;
	max-width: 540px;
	color: #222;
	font-size: 18px;
	line-height: 25px;
	text-overflow: ellipsis;
	vertical-align: top;
	white-space: nowrap;
}

.jv_company .logo+.wrap_info .company_name {
	max-width: 238px;
}

.jv_company .wrap_info .title .btn_link {
	margin-left: 4px;
}

.jv_company .info {
	margin-left: -15px;
}

.jview a.btn_jview {
	line-height: 23px;
}

.jview .sri_btn_lg span {
	width: 183px;
}

.sri_btn_lg span.sri_btn_immediately {
	position: relative;
}

.jv_header .btn_apply .sri_btn_lg span.sri_btn_immediately, .jv_howto .cont.box .sri_btn_lg span.sri_btn_immediately
	{
	border: 1px solid #ff8d5a;
	color: #fff;
	background: #ff8d5a;
}

.jv_location .address {
	margin-bottom: 30px;
}

.jv_howto {
	padding-bottom: 28px;
}

.jv_title {
	margin-bottom: 14px;
	color: #222;
	font-size: 20px;
	font-weight: bold;
	letter-spacing: -1px;
	line-height: 22px;
}

.jv_howto .info_timer {
	padding-top: 5px;
	height: 56px;
	color: #4876ef;
	font-size: 0;
	font-weight: bold;
	line-height: 36px;
	text-align: center;
}

.jv_howto .info_timer .txt {
	display: block;
	height: 20px;
	font-size: 15px;
	font-weight: normal;
	line-height: 20px;
}

.jv_howto .info_timer .txt_day {
	display: inline-block;
	margin-right: 8px;
	font-size: 20px;
	vertical-align: bottom;
}

.jv_howto .info_timer .day, .jv_howto .info_timer .time {
	display: inline-block;
	font-size: 28px;
	vertical-align: bottom;
}

.jv_howto .info_period {
	padding: 13px 45px 0;
	text-align: left;
}

.jv_howto .info_period dt {
	float: left;
	width: 73px;
	height: 26px;
	border: 1px solid #cdcdcd;
	border-radius: 26px;
	box-sizing: border-box;
	color: #888;
	font-size: 14px;
	line-height: 22px;
	text-align: center;
}

.jv_howto .info_period dd {
	float: right;
	padding: 1px 0;
	/* width: 116px; */
	height: 26px;
	box-sizing: border-box;
	font-size: 15px;
	letter-spacing: 0;
	line-height: 22px;
	text-align: center;
}

.jv_howto .info_period dt.end, .jv_howto .info_period dt.end+dd {
	margin-top: 6px;
	border-color: #4876ef;
	color: #4876ef;
}

.jv_howto .cont.box {
	display: table;
	padding: 0;
	border-right: 0;
}

.jv_howto .status {
	/* display: table-cell; */
	position: relative;
	z-index: 2;
	padding: 22px 0 30px;
	width: 289px;
	box-sizing: border-box;
	text-align: center;
	vertical-align: middle;
}

.jv_howto .guide {
	display: table-cell;
	position: relative;
	z-index: 2;
	padding: 22px 30px;
	width: 580px;
	box-sizing: border-box;
	font-size: 14px;
	background: #f8f9fa;
}

.jv_howto .noti {
	position: absolute;
	bottom: -28px;
	left: 0;
	padding-left: 20px;
	color: #888;
	font-size: 13px;
	line-height: 28px;
}

.jv_company .info dl {
	display: block;
	float: left;
	position: relative;
	margin-left: 15px;
	padding-left: 70px;
	width: 190px;
	min-height: 28px;
	line-height: 28px;
}

.jv_company .info dl dt {
	position: absolute;
	top: 0;
	left: 0;
	width: 70px;
	color: #888;
	font-size: 14px;
	line-height: 28px;
}

.jv_company .info dl dd {
	overflow: hidden;
	width: 100%;
	color: #444;
	font-size: 14px;
	line-height: 28px;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.jv_company .info dl.wide {
	width: 465px;
}

.jv_company .info dl.wide dd {
	padding-top: 5px;
	line-height: 18px;
}

.jv_company .noti {
	margin: 16px 10px 0 0;
	color: #adadad;
	font-size: 13px;
	line-height: 28px;
	text-align: right;
}

.jv_footer {
	margin-top: 41px;
}

.jv_footer .cont {
	padding-top: 90px;
}

.jv_footer .utils {
	height: 28px;
	line-height: 28px;
	text-align: right;
}

.jv_footer .utils .copy {
	float: left;
	position: relative;
	padding-left: 20px;
	color: #444;
	font-size: 13px;
}

button {
	border: 0;
	background: transparent;
}

body, div, dl, dt, dd, ul, ol, li, p, button {
	font-family: "나눔스퀘어";
}
#sri_section {
	display: table;
	overflow: hidden;
	position: relative;
	z-index: 1;
	width: 100%;
	height: 100%;
	box-sizing: border-box;
}

#sri_wrap {
	display: table-row;
	width: 100%;
	height: 100%;
}

#content {
	margin: 0;
	padding: 39px 0 40px;
	width: 100%;
	min-height: 2000px;
	background: #f1f3f9;
	position: relative;
}

.wrap_jview {
	position: relative;
	z-index: 1;
	margin: 0 auto;
	padding-right: 300px;
	width: 960px;
}

.jview {
	position: relative;
}

.jview>.wrap_jv_cont {
	position: relative;
	padding: 40px 44px 100px;
	border: 1px solid #e5e6eb;
	background: #fff;
}

.wrap_jv_header {
	padding-bottom: 30px;
	min-height: 75px;
}

.jv_header {
	position: relative;
	padding-right: 270px;
	color: #222;
	font-size: 0;
	letter-spacing: -1px;
	line-height: 28px;
	min-height: 74px;
}

.jv_title {
	margin-bottom: 14px;
	color: #222;
	font-size: 20px;
	font-weight: bold;
	letter-spacing: -1px;
	line-height: 22px;
}

.jv_header .company {
	display: inline-block;
	overflow: hidden;
	margin-right: 8px;
	padding-right: 2px;
	max-width: 380px;
	height: 28px;
	font-size: 18px;
	font-weight: normal;
	line-height: 23px;
	text-overflow: ellipsis;
	vertical-align: middle;
	white-space: nowrap;
}

.jview .btn_jview {
	display: inline-block;
	padding: 0 9px 3px;
	height: 28px;
	border: 1px solid #e4e4e4;
	box-sizing: border-box;
	font-size: 0;
	vertical-align: top;
	background-color: #fff;
}

.jview .jv_header .btn_jview span {
	color: #888;
}

.jview .btn_jview span {
	color: #666;
	font-size: 13px;
	font-weight: normal;
	letter-spacing: -1px;
}

.jv_header .tit_job {
	margin-top: 4px;
	font-size: 26px;
	font-weight: bold;
	letter-spacing: -1.5px;
	line-height: 34px;
}

.jv_header .btn_scrap {
	position: absolute;
	top: 14px;
	right: 195px;
}

.jview .btn_scrap {
	display: block;
	padding: 11px 0 7px;
	width: 60px;
	height: 60px;
	border: 1px solid #e9e9e9;
}

.jview .btn_scrap .txt_scrap {
	display: block;
	padding-top: 24px;
	width: 100%;
	height: 100%;
	color: #949494;
	box-sizing: border-box;
	font-size: 12px;
	letter-spacing: 0;
	line-height: 14px;
}

.jv_header .btn_apply {
	position: absolute;
	top: 4px;
	right: 0;
	width: 185px;
	text-align: center;
}

.jv_header .btn_apply .sri_btn_lg {
	position: absolute;
	top: 10px;
	z-index: 1;
}

.jview .sri_btn_lg {
	display: block;
	width: 185px;
}

.sri_btn_lg {
	overflow: hidden;
	margin: 0;
	padding: 0;
	width: 212px;
	height: 60px;
	border: 0;
	box-sizing: border-box;
	text-align: center;
	vertical-align: top;
	cursor: pointer;
}

.jv_header .btn_apply .sri_btn_lg span.sri_btn_expired_apply, .jv_howto .cont.box .sri_btn_lg span.sri_btn_expired_apply
	{
	border: 1px solid #888;
	color: #fff;
	background: #888;
}

.jv_header .btn_apply .sri_btn_lg span, .jv_howto .cont.box .sri_btn_lg span
	{
	border: 1px solid #dbdbdb;
	color: #666;
	background: #fff;
}

.wrap_jv_header+.jv_cont {
	margin-top: 0;
}

.jv_cont {
	position: relative;
	z-index: 1;
	margin-top: 50px;
}

.blind {
	display: none;
	width: 1px;
	height: 1px;
	color: #fff;
	visibility: hidden;
	position: absolute;
	top: -2000px;
	left: -2000px;
}

.jv_cont>.cont {
	position: relative;
	letter-spacing: -1px;
}

.jv_summary .col {
	float: left;
	padding: 25px 0 30px;
	width: 420px;
	border-top: 1px solid #e5e6eb;
	font-size: 14px;
	letter-spacing: -0.5px;
}

.jv_summary .col>dl:first-child {
	margin-top: 0;
}

.jv_summary .col>dl {
	display: block;
	position: relative;
	margin-top: 5px;
	padding-left: 86px;
	min-height: 22px;
}

.jv_summary .col>dl>dt {
	position: absolute;
	top: 0;
	left: 0;
	color: #888;
	line-height: 23px;
}

.jv_summary .col>dl>dd {
	color: #444;
	line-height: 23px;
}

.jv_summary .col>dl>dd strong {
	color: #4c78ea;
	font-weight: normal;
}

.jv_summary .col+.col {
	margin-left: 30px;
}

/* 
ul class meta는 없는데 혹시나 해서 
.jv_summary .meta {
	clear: both;
	position: relative;
	padding-top: 12px;
	border-top: 1px solid #e5e6eb;
	font-size: 0;
	line-height: 18px;
	text-align: right;
}

.jv_summary .meta>li {
	display: inline-block;
	position: relative;
	color: #888;
	font-size: 13px;
}

.jv_summary .meta>li>strong {
	color: #666;
	font-weight: bold;
	letter-spacing: 0;
}

.jv_summary .meta>li+li {
	margin-left: 8px;
	padding-left: 10px;
}

.jv_summary .meta>li {
	display: inline-block;
	position: relative;
	color: #888;
	font-size: 13px;
}
*/

/* 상세요강 */
.jv_detail {
	z-index: auto;
	margin-top: 24px;
}

.jv_cont>.cont {
	position: relative;
	letter-spacing: -1px;
}

.jv_cont>.box {
	padding: 29px 29px 0;
	border: 1px solid #ebebeb;
	border-top-color: #999;
}

.user_content {
	margin: 0 auto;
	width: 860px;
	color: #444;
	font-size: 13px;
	line-height: 1.231;
	letter-spacing: -1px;
	word-break: break-all;
}

.pc_recruit_template {
	width: 860px;
	margin: 0 auto 30px;
	letter-spacing: -1px;
}

.pc_recruit_template .info_recruit_template {
	width: 100%;
	table-layout: fixed;
	word-break: break-all;
	color: #222;
}

.pc_recruit_template .info_recruit_template td {
	padding: 0;
}

.pc_recruit_template .tit_template {
	margin-top: 32px;
	font-size: 28px;
	line-height: 32px;
	letter-spacing: -2px;
}

.pc_recruit_template .wrap_tbl_template {
	padding-top: 23px;
}

.blue.pc_recruit_template .tbl_template {
	border-color: #4876ef;
}

.pc_recruit_template.ver2 .tbl_template.txt_type td {
	padding: 0 24px 23px 0;
}

.pc_recruit_template.ver2 .tbl_template.txt_type .tit_tbl {
	margin: 0 0 8px 0;
}

.pc_recruit_template.ver2 .tbl_template.txt_type .tit_tbl .tit {
	line-height: 20px;
}

.pc_recruit_template.ver2 .tbl_template.txt_type .tbl_list {
	padding-left: 15px;
}

.pc_recruit_template.ver2 .tbl_template .tbl_list {
	margin-bottom: 0;
}

.pc_recruit_template.ver2 .tbl_template.txt_type .tbl_list td {
	padding: 0 0 0 20px;
}

.user_content table {
	width: 100%;
	line-height: normal;
}

table {
	border-spacing: 0;
	border-collapse: collapse;
	font-family: "나눔스퀘어", dotum, gulim, sans-serif;
	font-size: inherit;
	line-height: 100%;
}

.pc_recruit_template .top_recruit_template {
	width: 100%;
}

.pc_recruit_template .top_area.type1, .pc_recruit_template .top_area.type7
	{
	margin-top: 8px;
}

.pc_recruit_template .top_area {
	padding-bottom: 16px;
}

.pc_recruit_template .top_area .info_top {
	position: relative;
	width: 100%;
	text-align: center;
}

.pc_recruit_template .top_area.type1 .tit_top {
	display: block;
	overflow: hidden;
	padding: 0 20px;
	font-weight: bold;
	font-size: 48px;
	line-height: 60px;
	letter-spacing: -4px;
}

.pc_recruit_template .top_area.type1 .desc_top {
	font-size: 15px;
	color: #444;
}

.pc_recruit_template .desc_top {
	padding: 24px 40px 0;
	font-size: 14px;
	line-height: 1.5;
	color: #666;
	text-align: center;
	letter-spacing: -1px;
}

.jv_location .address {
	margin-bottom: 30px;
}

.jv_location .address>span {
	display: block;
	position: relative;
	padding-left: 24px;
	color: #444;
	font-size: 15px;
	line-height: 20px;
}

.jv_howto {
	padding-bottom: 28px;
}

.jv_howto .cont.box {
	display: table;
	padding: 0;
	border-right: 0;
}

.jv_howto .status {
	display: table-cell;
	position: relative;
	z-index: 2;
	padding: 22px 0 30px;
	width: 289px;
	box-sizing: border-box;
	text-align: center;
	vertical-align: middle;
}

.jv_howto .info_period {
	padding: 13px 45px 0;
	text-align: left;
}

.jv_howto .status .copy.end+.info_period dt, .jv_howto .status .copy.end+.info_period dd
	{
	border-color: #cdcdcd;
	color: #949494;
}

.jv_howto .info_period dt {
	float: left;
	width: 73px;
	height: 26px;
	border: 1px solid #cdcdcd;
	border-radius: 26px;
	box-sizing: border-box;
	color: #888;
	font-size: 14px;
	line-height: 22px;
	text-align: center;
}

.jv_howto .info_period dd {
	float: right;
	padding: 1px 0;
	width: 116px;
	height: 26px;
	box-sizing: border-box;
	font-size: 15px;
	letter-spacing: 0;
	line-height: 22px;
	text-align: center;
}

.jv_howto .status .info_period+button, .jv_howto .status .info_period+a
	{
	margin-top: 25px;
}

.jv_cont.expired .btn_modify, .jv_cont.expired .btn_interest, .jv_howto .status .btn_scrap,
	.jv_howto .status .btn_interest {
	display: block;
	margin: 0 auto;
	padding: 0 0 7px;
	width: 185px;
	height: 60px;
	border: 1px solid #e9e9e9;
	border-radius: 2px;
	letter-spacing: -2px;
	background: #fff;
}

.jv_cont.expired .btn_modify span, .jv_cont.expired .btn_interest span,
	.jv_howto .status .btn_scrap span, .jv_howto .status .btn_interest span
	{
	display: inline-block;
	color: #888;
	font-size: 21px;
	line-height: normal;
}

.jv_howto .guide {
	display: table-cell;
	position: relative;
	z-index: 2;
	padding: 22px 30px;
	width: 580px;
	box-sizing: border-box;
	font-size: 14px;
	background: #f8f9fa;
}

.jv_howto .noti {
	position: absolute;
	bottom: -28px;
	left: 0;
	padding-left: 20px;
	color: #888;
	font-size: 13px;
	line-height: 28px;
}

.jv_cont .layer_group {
	overflow: hidden;
	position: relative;
	width: 868px;
	border: 1px solid #ebebeb;
	border-top-color: #999;
	background: #fff;
}

.jv_insatong .layer_group .layer {
	padding-bottom: 15px;
}

.jv_cont .layer_group .layer {
	width: 868px;
	box-sizing: border-box;
}

.jv_insatong .txt_qna {
	overflow: hidden;
	height: 58px;
	border-bottom: 1px solid #ebebeb;
	color: #666;
	font-size: 14px;
	line-height: 58px;
	text-align: center;
}

.jv_insatong .txt_qna .company {
	display: inline-block;
	overflow: hidden;
	padding-right: 2px;
	max-width: 360px;
	font-weight: bold;
	text-overflow: ellipsis;
	vertical-align: top;
	white-space: nowrap;
}

.jv_insatong .txt_qna .num {
	color: #5b76f5;
	font-weight: bold;
}

.jv_insatong .txt_qna .date {
	padding-left: 18px;
	color: #999;
	letter-spacing: 0;
}

.jv_insatong .item_qna {
	position: relative;
	padding: 22px 0 3px 0;
	border-top: 0;
	font-size: 0;
	letter-spacing: -1px;
}

.jv_insatong .item_qna dl {
	position: relative;
	padding: 0 0 0 20px;
	width: 640px;
}

.jv_insatong .item_qna dl dt {
	margin-left: 10px;
	color: #222;
	font-size: 15px;
	line-height: 20px;
	word-break: break-all;
}

.jv_insatong .item_qna dl dt>span {
	display: inline-block;
	margin-right: 6px;
}

.jv_insatong .item_qna dl dd {
	display: inline-block;
	margin: 10px 0 0 10px;
	padding: 7px 20px 10px 20px;
	border: 1px solid #cfcfcf;
	border-radius: 4px;
	box-sizing: border-box;
	color: #222;
	font-size: 14px;
	line-height: 20px;
	vertical-align: top;
	word-break: break-all;
	background: #fcfcfc;
}

.jv_cont .btn_more_cont {
	display: block;
	position: relative;
	width: 100%;
	height: 40px;
	border: 1px solid #ebebeb;
	border-top: 0;
	box-sizing: border-box;
	color: #666;
	font-size: 14px;
	letter-spacing: -1px;
	text-decoration: none;
	background: #fff;
}

/* 기업정보 */
.jv_company>.box {
	padding: 24px 14px;
}

.jv_company .logo {
	overflow: hidden;
	float: left;
	width: 260px;
	height: 155px;
	line-height: 155px;
	text-align: center;
}

.jv_company .logo>img {
	vertical-align: middle;
}

.jv_company .logo+.wrap_info {
	padding: 0 15px 0 290px;
	width: 535px;
}

.jv_company .wrap_info .title {
	margin-bottom: 15px;
	height: 28px;
	font-size: 0;
}

.jv_company .logo+.wrap_info .company_name {
	max-width: 238px;
}

.jv_company .wrap_info .company_name {
	display: inline-block;
	overflow: hidden;
	margin-right: 5px;
	padding-right: 2px;
	max-width: 540px;
	color: #222;
	font-size: 18px;
	line-height: 25px;
	text-overflow: ellipsis;
	vertical-align: top;
	white-space: nowrap;
}

.jv_company .info {
	margin-left: -15px;
}

.jv_company .info dl {
	display: block;
	float: left;
	position: relative;
	margin-left: 15px;
	padding-left: 70px;
	width: 190px;
	min-height: 28px;
	line-height: 28px;
}

.jv_company .info dl dt {
	position: absolute;
	top: 0;
	left: 0;
	width: 70px;
	color: #888;
	font-size: 14px;
	line-height: 28px;
}

.jv_company .info dl dd {
	overflow: hidden;
	width: 100%;
	color: #444;
	font-size: 14px;
	line-height: 28px;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.jv_company .noti {
	margin: 16px 10px 0 0;
	color: #adadad;
	font-size: 13px;
	line-height: 28px;
	text-align: right;
}

.jv_company sup {
	display: inline-block;
	margin: -1px 0 0 2px;
	color: #adadad;
	font-size: 13px;
	vertical-align: top;
}

.jv_footer {
	margin-top: 41px;
}

.jv_footer .cont {
	padding-top: 90px;
}

.jv_footer .utils {s
	height: 28px;
	line-height: 28px;
	text-align: right;
}

.jv_footer .utils .copy {
	float: left;
	position: relative;
	padding-left: 20px;
	color: #444;
	font-size: 13px;
}

.btns{
	display: flex;
	float: right;
}

ol, ul, li {
	list-style: none;
}
</style>
</head>
<body>
	<%
		String notice_want_name = request.getParameter("notice_want_name");
		String notice_want_many = request.getParameter("notice_want_many");
		
		String newb = request.getParameter("newb");
		String car = request.getParameter("car");


		out.println(request);
		out.println("======================");
		out.println(notice_want_name);
		out.println(notice_want_many);
		
		
	%>

	<div id="sri_section">
		<div id="sri_wrap">
			<div id="content">
				
				<div class="wrap_jview">
					<div class="jview">
						<div class="wrap_jv_cont">
							<input type="hidden" class="track_url" />
							<input type="hidden" class="logging_url" />

							<!-- 헤더. 채용 공고 제목, 회사 이름, 등등 -->
							<div class="wrap_jv_header">
								<div class="jv_header">
									<a href="#" class="company" target="_blank"
										onclick="window.open(this.href, ''); return false;"
										onmousedown="try{n_trackEvent('relay_view', 'title', 'company', '');}catch(e){}">@
										회사 이름 @</a>
									<button type="button" title="관심기업 등록"
										class="btn_jview spr_jview btn_interest"
										onclick="try{Saramin.btnJob('favor', this, '', 'quick_login');}catch(e){}"
										onmousedown="try {n_trackEvent('relay_view', 'title', 'favor', '');}catch(e){}">
										<span>관심기업 등록</span>
									</button>
									<a href="#" class="btn_jview btn_careers" target="_blank"
										onclick="window.open(this.href, ''); return false;"
										onmousedown="try{n_trackEvent('relay_view', 'title', 'company', 'recruit-list');}catch(e){}"><span>채용중
											<span class="num">4</span>
									</span></a>
									<!-- 채용 공고 제목 -->
									<h1 class="tit_job">클라우드(Cloud) 개발/운영 임원 채용</h1>

									<button type="button" class="btn_scrap scrap-38217319"
										title="공고스크랩"
										onclick="Saramin.btnJob('scrap', this, '', 'quick_login');"
										onmousedown="try{n_trackEvent('relay_view', 'summary', 'scrap', '');}catch(e){}">
										<span class="txt_scrap">☆</span>
									</button>

									<div class="btn_apply">
										<span class="dday">D-50</span>

										<!-- onclick 안에
										try{quickApplyForm('38217319','','t_category=relay_view&amp;t_content=relay_view_list&amp;t_ref=theme-samsung&amp;
										t_ref_content=logo_recruit&amp;t_ref_scnid=&amp;dpId=&amp;inner_source=saramin&amp;inner_medium=pattern&amp;
										inner_campaign=relay_view_apply_0&amp;inner_term=list', ''); return false;} catch (e) {}; return false; -->

										<button class="sri_btn_lg for_btn_event"
											title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick=""
											onmousedown="try{n_trackEvent('relay_view','summary','quick_apply','');}catch(e){}"
											style="margin: auto; width: 50%;">
											<span class="sri_btn_immediately">즉시지원</span>
										</button>
									</div>

								</div>
							</div>
							
							<div class="jv_cont jv_summary">
								<div class="jv_title blind">핵심 정보</div>
								<div class="cont">
									<div class="col" id="col1">
										<dl>
											<dt>경력</dt>
											<dd>@</dd>
										</dl>
										<dl>
											<dt>학력</dt>
											<dd>@</dd>
										</dl>
										<dl>
											<dt>근무형태</dt>
											<dd>@</dd>
										</dl>
										<dl>
											<dt>필수사항</dt>
											<dd>@</dd>
										</dl>
										<dl>
											<dt>우대사항</dt>
											<dd>@</dd>
										</dl>
									</div>
									<div class="col" id="col2">
										<dl>
											<dt>급여</dt>
											<dd>@</dd>
										</dl>
										<dl>
											<dt>직급/직책</dt>
											<dd>@</dd>
										</dl>
										<dl>
											<dt>근무일시</dt>
											<dd>@</dd>
										</dl>
										<dl>
											<dt>근무지역</dt>
											<dd>@</dd>
										</dl>
									</div>
									

								</div>
							</div>

							<!-- detail -->
							<div class="jv_cont jv_detail">
								<div class="jv_title blind">상세요강</div>
								<div class="cont">

									<div class="user_content">
										<div class="pc_recruit_template ver2 blue check">
											<table class="info_recruit_template">
												<tbody>
													<tr>
														<td>
															<table class="top_recruit_template">
																<tbody>
																	<tr>
																		<td>
																			<div class="top_area type1">
																				<div class="info_top">
																					<div class="img_top" id="template_image"></div>
																					<div class="wrap_top">
																						<div class="cont_top">
																							<div class="inner">
																								<div class="tit_top" id="template_common_title">
																									<!-- 채용 공고 제목 -->
																									<div>{ 채용 공고 제목 }</div>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="desc_top"
																					id="template_common_company_intro"
																					style="display: none;">
																					<div>2016년 11월 22일에 설립된 기타 기술 및 직업훈련학원업종의</div>
																				</div>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
													<tr>
														<td>
															<table class="cont_recruit_template">
																<tbody>
																	<tr>
																		<td>
																			<div class="btns">
																				<a href="jp_want_edit.jsp" target="_blank">
																				<button type="button" title="수정하기" class="spr_jview btn_jview btn_modify"
																					style="margin: 0 auto; width: 100%; border: none;">
																					<span>모집분야 수정</span></button></a>
																				<a href="jp_want_add.jsp" target="_blank">
																				<button type="button" title="추가하기" class="spr_jview btn_jview btn_modify"
																					style="margin: 0 auto; width: 100%; border: none;">
																					<span>모집분야 추가</span></button></a>
																			</div>
																			<h2 class="tit_template" id="template_divisions_title">
																				<span class="ico"></span>모집분야
																			</h2>
																			<div class="wrap_tbl_template">
																				<table class="tbl_template txt_type" id="divisionTable">
																					<tbody>
																						<tr id="common_table">
																							<td>
																								<table class="tbl_list">
																									<tbody>
																										<tr>
																										
																											<td id="recruit_name">ㆍ모집분야명 :
																												<%=notice_want_name %><font color="#08ffa7"></font>
																											</td>
																										</tr>
																										<tr>
																											<td id="career_no">ㆍ경력 여부 : 
																												{신입or경력}<font color="#2969a8"></font>
																											</td>
																										</tr>
																										<tr>
																											<td id="respons">ㆍ담당업무 : 
																												{담당업무}<font color="#2969a8"></font>
																											</td>
																										</tr>
																										<tr>
																											<td id="dept">ㆍ근무부서 : 
																												{근무부서}<font color="#2969a8"></font>
																											</td>
																										</tr>
																										<tr>
																											<td id="preference">ㆍ필수우대조건 : 
																												{필수우대조건}<font color="#2969a8"></font>
																											</td>
																										</tr>
																									</tbody>
																								</table>
																							</td>
																						</tr>
																						<tr class="display_hiring_process_list">
																							<td>
																								<div class="btns">
																									<a href="jp_prcs_edit.jsp" target="_blank">
																									<button type="button" title="수정하기" class="spr_jview btn_jview btn_modify"
																										style="margin: 0 auto; width: 100%; border: none;">
																										<span>전형절차 수정</span></button></a>
																									<a href="jp_prcs_add.jsp" target="_blank">
																									<button type="button" title="추가하기" class="spr_jview btn_jview btn_modify"
																										style="margin: 0 auto; width: 100%; border: none;">
																										<span>전형절차 추가</span></button></a>
																								</div>
																								<h2 class="tit_template" id="template_step_title">
																									<span class="ico"></span>전형절차
																								</h2>
																								<ol class="step_template_type step_template_type2" d="template_step_hiring_process_list">
																									<li><div class="cont_step">
																											<div class="inner">
																												<strong class="tit_step"> 서류전형</strong>
																												<span class="txt_step">{ 서류전형 }</span>
																											</div>
																										</div></li>
																									<li><div class="cont_step">
																											<div class="inner">
																												<strong class="tit_step"> 1차면접 </strong>
																												<span class="txt_step">{ 1차면접 }</span>
																											</div>
																										</div></li>
																									<li><div class="cont_step">
																										<div class="inner">
																											<strong class="tit_step"> 2차면접 </strong>
																											<span class="txt_step">{ 2차면접 }</span>
																										</div>
																										</div></li>
																									<li><div class="cont_step">
																											<div class="inner">
																												<strong class="tit_step"> 최종합격</strong>
																												<span class="txt_step">{ 최종합격 }</span>
																											</div>
																										</div></li>
																								</ol></td>
																						</tr>
																						<tr>
																							<td>
																								<div class="btns">
																									<a href="jp_comm_edit.jsp" target="_blank">
																									<button type="button" title="수정하기" class="spr_jview btn_jview btn_modify"
																										style="margin: 0 auto; width: 100%; border: none;">
																										<span>인사통 수정</span></button></a>
																									<a href="jp_comm_add.jsp" target="_blank">
																									<button type="button" title="추가하기" class="spr_jview btn_jview btn_modify"
																										style="margin: 0 auto; width: 100%; border: none;">
																										<span>인사통 추가</span></button></a>
																								</div>
																								<h2 class="tit_template" id="template_insatong">
																									<span class="ico"></span>인사통
																								</h2>
																								<div class="wrap_list_template">
																									<table class="list_template">
																										<tbody>
																											<tr>
																												<td>
																													<span class="tit" id="template_insa_q">질문</span>
																													<span class="colon">:</span>
																													<span class="txt" id="template_insa_a">{ 인사통 질문 답변 }</span>
																												</td>
																											</tr>
																											<tr>
																												<td>
																													<span class="tit" id="template_insa_q">질문</span>
																													<span class="colon">:</span>
																													<span class="txt" id="template_insa_a">{ 인사통 질문 답변 }</span>
																												</td>
																											</tr>
																											<tr>
																												<td>
																													<span class="tit" id="template_insa_q">질문</span>
																													<span class="colon">:</span>
																													<span class="txt" id="template_insa_a">{ 인사통 질문 답변 }</span>
																												</td>
																											</tr>
																											
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																			<!-- wrap_tbl_template div end -->
																		</td>
																	</tr>
																	
																</tbody>
															</table>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<font color="#c0ffee"></font>
									</div>

									<div id="loc" class="jv_cont jv_location">
										<h3 class="jv_title">근무지 위치</h3>
										<div class="cont box">
											<address class="adress">
												<span class="spr_jview txt_adr"> $ 회사 주소 받아오기 $ </span>
											</address>
										</div>
									</div>

									<div class="jv_cont jv_howto">
										<div class="jv_title">접수기간 및 방법</div>
										<div class="cont box">
											<div class="status">
												<div class="info_timer" data-remain-time="4347595">
													<span class="txt">남은 기간</span><span class="day">50</span><span
														class="txt_day">일</span><span class="time">12:34:56</span>
												</div>
												<dl class="info_period">
													<dt>시작일</dt>
													<dd>2020.05.27 10:00</dd>
													<dt class="end">마감일</dt>
													<dd>2020.07.26 23:59</dd>
												</dl>
												<button class="sri_btn_lg for_btn_event"
													title="클릭하면 입사지원할 수 있는 창이 뜹니다."
													onclick="try{quickApplyForm('38217319','','t_category=relay_view&amp;t_content=relay_view_list&amp;t_ref=theme-samsung&amp;t_ref_content=logo_recruit&amp;t_ref_scnid=&amp;dpId=&amp;inner_source=saramin&amp;inner_medium=pattern&amp;inner_campaign=relay_view_apply_0&amp;inner_term=list', ''); return false;} catch (e) {}; return false;"
													onmousedown="try{n_trackEvent('relay_view','contacts','quick_apply_bt','');}catch(e){}">
													<span class="sri_btn_immediately">즉시지원</span>
												</button>
											</div>
											<dl class="guide">
												<dt>지원방법</dt>
												<dd class="method">
													<button class="sri_btn_1 for_btn_event"
														title="클릭하면 입사지원할 수 있는 창이 뜹니다."
														onclick="try{quickApplyForm('38217319','','t_category=relay_view&amp;t_content=relay_view_list&amp;t_ref=theme-samsung&amp;t_ref_content=logo_recruit&amp;t_ref_scnid=&amp;dpId=&amp;inner_source=saramin&amp;inner_medium=pattern&amp;inner_campaign=relay_view_apply_0&amp;inner_term=list', ''); return false;} catch (e) {}; return false;"
														onmousedown="try{n_trackEvent('relay_view','contacts','quick_apply','');}catch(e){}"
														style="margin: auto; width: 50%;">
														<span class="sri_btn_immediately">inOut 즉시지원</span>
													</button>
												</dd>
												<dt>접수양식</dt>
												<dd class="template">inOut 이력서 양식</dd>
											</dl>
											<p class="noti">마감일은 기업의 사정, 조기마감 등으로 변경될 수 있습니다.</p>
										</div>
									</div>


									<!-- 지원자 통계 -->
									<div class="jv_cont jv_statics"></div>

									<!-- 인사통 -->
									<div class="jv_cont jv_insatong">
										<div class="jv_title">인사통</div>
										<div class="cont">
											<div class="layer_group">
												<div class="layer">
													<p class="txt_qna">
														<span class="company">(주)구트</span> 인사담당자님이 <span
															class="num">4개의</span> 질문에 답변한 내용입니다. <span class="date">20.05.29
															16:11</span>
													</p>
													<div class="item item_qna">
														<dl>
															<dt>
																<span>Q1.</span><strong>근무 환경</strong>은 어떤가요?
															</dt>
															<dd>비즈니스 캐주얼</dd>
															<dd>월 1회 회식</dd>
															<dd>3년이상</dd>
															<dd>대부분 30·40대</dd>
															<dd>대부분 야근 없음</dd>

														</dl>
													</div>
													<div class="item item_qna">
														<dl>
															<dt>
																<span>Q2.</span><strong>복지 및 처우</strong>는 어떻게 되나요?
															</dt>
															<dd>수습기간 급여 100%</dd>
															<dd>연 1회 인센티브</dd>
															<dd>급여 외 식대 제공</dd>
															<dd>평균 10~15일 휴가 사용</dd>

														</dl>
													</div>
													<div class="cont_more">
														<div class="item item_qna">
															<dl>
																<dt>
																	<span>Q3.</span><strong>면접 및 입사</strong>는 어떻게 진행되나요?
																</dt>
																<dd>접수기간 중 수시 면접</dd>
																<dd>지원자 1명, 면접관 다수</dd>
																<dd>합격자만 통보</dd>
																<dd>합격 후 2~3주내 입사</dd>

															</dl>
														</div>
													</div>
													<div class="cont_more">
														<div class="item item_qna">
															<dl>
																<dt>
																	<span>Q4.</span><strong>지원 자격 및 채용 사유</strong>는 무엇인가요?
																</dt>
																<dd>결원 발생 충원</dd>
																<dd>유사 업계 경력 인정</dd>
																<dd>학력 미달 지원 가능</dd>
																<dd>재지원 가능</dd>

															</dl>
														</div>
													</div>
												</div>
												<!-- layer class end -->
											</div>
											<button type="button" class="btn_more_cont"
												onmousedown="try{n_trackEvent('seo_view', 'insatong', 'insatong_all', '');}catch(e){}">
												<span class="spr_jview">내용 전체보기</span>
											</button>
										</div>
									</div>

									<div class="jv_cont jv_company">
										<div class="jv_title">기업정보</div>
										<div class="cont box">
											<div class="logo">
												<img src="../resources/images/logo.jpg" alt="회사 로고"
													width="260px" height="150px" />
											</div>
											<div class="wrap_info">
												<div class="title">
													<span class="company_name">회사 이름</span>
													<button type="button" title="관심기업 등록"
														class="btn_jview spr_jview btn_interest"
														onclick="try{Saramin.btnJob('favor', this, '', 'quick_login');}catch(e){}"
														onmousedown="try {n_trackEvent('relay_view', 'title', 'favor', '');}catch(e){}">
														<span>관심기업 등록</span>
													</button>
													<a href="#" title="기업정보로 이동"
														class="spr_jview btn_jview btn_link"
														onclick="window.open(this.href, ''); return false;"
														onmousedown="try{n_trackEvent('relay_view', 'companyinfo', 'company_more', '');}catch(e){}"><strong>기업정보</strong></a>
												</div>

												<div class="info">
													<dl>
														<dt>기업형태</dt>
														<dd>@@@@@</dd>
													</dl>
													<dl>
														<dt>업종</dt>
														<dd>@@@@@</dd>
													</dl>
													<dl>
														<dt>매출액</dt>
														<dd>@@@@@</dd>
													</dl>
													<dl>
														<dt>홈페이지</dt>
														<dd>@@@@@</dd>
													</dl>
													<dl>
														<dt>사원수</dt>
														<dd>@@@@@</dd>
													</dl>
													<dl>
														<dt>설립일</dt>
														<dd>@@@@@</dd>
													</dl>
													<dl>
														<dt>대표자명</dt>
														<dd>@@@@@</dd>
													</dl>
													<dl class="wide">
														<dt>기업주소</dt>
														<dd>**********************</dd>
													</dl>
												</div>
											</div>

											<!-- notice -->
											<p class="noti">
												<sup>*</sup> 위 항목은 본사정보와 다를 수 있습니다.
											</p>

										</div>
									</div>


									<!-- 채용 공고 안 footer -->

									<div class="jv_cont jv_footer">
										<div class="cont">
											<div class="utils">
												<p class="copy">
													본 채용 정보에 불법·허위·과장 또는 잘못된 내용이 있을 경우 <a href="#"
														target="_blank">문의</a>해 주세요!
												</p>
												<!-- 문의사항으로 이동 -->
											</div>
										</div>
									</div>

								</div>
								<!-- wrap_jv_cont end -->
								<div class="jv_ads bottom_ads"></div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- id content end -->
		</div>
	</div>

</body>
</html>