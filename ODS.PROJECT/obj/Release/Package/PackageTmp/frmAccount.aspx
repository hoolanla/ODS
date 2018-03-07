﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="frmAccount.aspx.cs" Inherits="ODS.PROJECT.frmAccount" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <style>

        .dxgvControl,
.dxgvDisabled
{
	border: Solid 1px #9F9F9F;
	font: 11px Tahoma;
	background-color: #F2F2F2;
	color: Black;
	cursor: default;
}
.dxgvDisabled 
{
	color: Gray;
}
.dxgvControl a 
{
	color: #5555FF;
}
.dxgvDisabled a
{
	color: Gray;
}
.dxgvLoadingPanel
{
	border: solid 1px #9F9F9F;
	background-color: #E3E3E1;
	font: 9pt Tahoma;
	color: #303030;
}
.dxgvLoadingPanel td
{
	white-space: nowrap;
	text-align: center;
	padding: 12px 12px 12px 12px;
}
.dxgvLoadingPanelStatusBar
{
	background-color: Transparent;
	font: 9pt Tahoma;
}
.dxgvLoadingPanelStatusBar td
{
	white-space: nowrap;
	text-align: center;
	padding: 0px 2px 0px 2px;
}
.dxgvFilterPopupWindow
{
	color: Black;
	font: 9pt Tahoma;
	border: solid 1px #9f9f9f;
}
.dxgvFilterPopupItemsArea
{
	color: Black;
	background-color: White;
}
.dxgvFilterPopupButtonPanel
{
	font: 9pt Tahoma;
	background-color: #ededed;
	border: 1px solid #dcdcdc;
	border-left-width: 0px;
	color: Black;
}

.dxgvFilterPopupItem td.dxgv,
.dxgvFilterPopupActiveItem td.dxgv,
.dxgvFilterPopupSelectedItem td.dxgv
{
	border-left: solid 1px white;    
	border-right: solid 1px white;    
	padding: 3px 2px 4px 3px;
	cursor: default;
	white-space: nowrap;
}
.dxgvFilterPopupActiveItem
{
	background: #cfcfcf;
	color: Black;
}
.dxgvFilterPopupSelectedItem
{
	background: #8D8D8D;
	color: White;
}

.dxgvTable
{
	background-color: White;
	border: 0;
	border-collapse: separate!important;
	overflow: hidden;
	font: 9pt Tahoma;
	color: Black;
}
.dxgvInlineEditRow,
.dxgvDataRow
{
}
.dxgvInlineEditRow td.dxgv
{
	border-bottom: Solid 1px #D3D3D3;
	border-right: Solid 1px #D3D3D3;
}
.dxgvDataRowAlt
{
	background-color: #EDEDEB;
}
.dxgvFilterRow 
{
	background-color: #E7E7E7;
}
.dxgvEditForm 
{
	background-color: #F0F0F0;
}
.dxgvEditForm td.dxgv
{
	border-bottom: Solid 1px #D3D3D3;
	padding: 8px 10px 10px 10px;
}
.dxgvSelectedRow
{
	background-color: #A0A0A0;
    color: White;
}
.dxgvFocusedRow
{
	background-color: #8D8D8D;
    color: White;
}
.dxgvSelectedRow .dxgvCommandColumn a, 
.dxgvFocusedRow .dxgvCommandColumn a
{
    color: White;
}
.dxgvSelectedRow .dxgvCommandColumn a:hover, 
.dxgvFocusedRow .dxgvCommandColumn a:hover
{
    color: #F0F0F0;
}
.dxgvSelectedRow .dxgvCommandColumn a:visited, 
.dxgvFocusedRow .dxgvCommandColumn a:visited
{
    color: #F0F0F0;
}

.dxgvPreviewRow
{
	background-color: #F5F5F5;
	color: #707070;
}
.dxgvDetailCell,
.dxgvPreviewRow td.dxgv,
.dxgvEmptyDataRow td.dxgv
{
	padding: 20px 2px 20px 4px;
	border-bottom: Solid 1px #D3D3D3;
	border-top: 0;
	border-left: 0;
	border-right: 0;
}
.dxgvPreviewRow td.dxgv
{
	padding: 10px 10px 10px 15px;
}
.dxgvDetailCell
{
	padding: 16px 18px 16px 0px;
}
.dxgvDetailRow td.dxgvIndentCell 
{
    padding-right: 0px;
    border-bottom: Solid 1px #D3D3D3;
}
.dxgvEmptyDataRow
{
	color: Gray;
}
.dxgvEmptyDataRow td.dxgv
{
    border-bottom: Solid 1px #CFCFCF;
	text-align: center;
}

.dxgvEditFormDisplayRow td.dxgv,
.dxgvDataRow td.dxgv,
.dxgvDataRowAlt td.dxgv,
.dxgvSelectedRow td.dxgv,
.dxgvFocusedRow td.dxgv
{
	overflow: hidden;
	border-bottom: Solid 1px #CFCFCF;
	border-right: Solid 1px #CFCFCF;
	border-top: 0;
	border-left: 0;
	padding: 3px 6px 4px 6px;
}
.dxgvEditFormDisplayRow
{
}
.dxgvEditFormDisplayRow td.dxgv 
{
}

.dxgvEditingErrorRow
{
	background-color: #FFC8C8;
	color: #FF0000;
}
.dxgvEditingErrorRow td.dxgv
{
	white-space: pre-wrap;
	border-bottom: Solid 1px #D3D3D3;
	border-right: 0;
	border-top: 0;
	border-left: 0;
	padding: 6px 10px 6px 10px;
}

.dxgvFilterRow td.dxgv
{
	border-bottom: Solid 1px #C1C1C1;
	border-right: Solid 1px #C1C1C1;
	border-top: 0;
	border-left: 0;
	padding: 2px 2px 2px 2px;
	overflow: hidden;
}
.dxgvGroupRow
{
	background-color: #EDEDED;
}
.dxgvFocusedGroupRow
{
	background-color: #8D8D8D;
    color: White;
}
.dxgvGroupRow td.dxgv,
.dxgvFocusedGroupRow td.dxgv
{
	border: none 0;
	vertical-align: middle;
	white-space: nowrap;
	border-bottom: Solid 1px #D3D3D3;
	padding: 3px 6px 4px 6px;
}
.dxgvFocusedRow td.dxgvIndentCell,
.dxgvFocusedGroupRow td.dxgvIndentCell,
.dxgvSelectedRow td.dxgvIndentCell
{
	background-color: #EDEDED!important;  
	border-right: solid 1px #CFCFCF;
	border-top: 0px;
}
.dxgvHeaderPanel {
	background-color: #F9F9F9;
	color: Black;
	padding: 8px 6px 8px 6px;
	border-bottom: Solid 1px #9F9F9F;
}

.dxgvHeader {
	cursor: pointer;
	white-space: nowrap;
	padding: 4px 6px 5px 6px;
	border: Solid 1px #9F9F9F;
	background-color: #DCDCDC;
	overflow: hidden;
	font-weight: normal;
	text-align: left;	
}
.dxgvHeader, .dxgvHeader table {
	color: Black;
	font: 9pt Tahoma;
}
.dxgvHeader td {
	white-space: nowrap;
}
.dxgvHeader a {
	color: #0d45b7;
}
.dxgvCustomization, 
.dxgvPopupEditForm
{
	width: 100%;
	padding: 0 0 0 0;
	margin: 0 0 0 0;
}
.dxgvGroupPanel
{
	white-space: nowrap;
	font-size: 9pt;
	
	background-color: #EDEDED;
	color: #8D8D8D;
	border-bottom: Solid 1px #9F9F9F;
	padding: 7px 4px 8px 6px;
}
.dxgvFooter
{
	background-color: #D7D7D7;
	white-space: nowrap;
}
.dxgvFooter td.dxgv
{
	padding: 5px 6px 6px 6px;
	border-bottom: Solid 1px #BCBCBC;
	border-right: 0;
}
.dxgvGroupFooter
{
	background-color: #E0E0E0;
}
.dxgvGroupFooter td.dxgv 
{
	white-space: nowrap;
}
.dxgvGroupFooter td.dxgv 
{
    padding: 5px 4px 6px 6px;
    border-bottom: Solid 1px #CFCFCF;
    border-right: 0;
}
.dxgvDataRow td.dxgvIndentCell,
.dxgvGroupRow td.dxgvIndentCell,
.dxgvGroupFooter td.dxgvIndentCell
{
    background-color: #EDEDED;
	border-right: Solid 1px #CFCFCF;
	border-top: 0px;
}

.dxgvTitlePanel, 
.dxgvTable caption
{
    font-size: 15px;
	font-weight: normal;
	padding: 3px 3px 5px 3px;
	text-align: center;	
	background-color: #ACACAC;
	color: White;
	border-bottom: Solid 1px #9F9F9F;
}
.dxgvLoadingDiv
{
	background-color:Gray;	
	opacity: 0.01;	
	filter: alpha(opacity=1);
}
.dxgvStatusBar
{
	border-top: Solid 1px #9F9F9F;
}
.dxgvStatusBar tr.dxgv
{
	height: 20px;
}
.dxgvCommandColumn
{
	padding: 2px 2px 2px 2px;
}
.dxgvCommandColumn a
{
	margin: 0px 3px 0px 0px;
	color:  #0d45b7;
}
.dxgvCommandColumn a:hover
{
	color:  #5494ea;
}
.dxgvCommandColumn a:visited
{
	color:  #ab59a6;
}

.dxgvCommandColumnItem
{
}
.dxgvEditFormTable
{
	padding: 2px 6px 6px 4px;
	font: 11px Tahoma;
	color: Black;
}
.dxgvEditFormTable a
{
    color: #0d45b7;

}
.dxgvEditFormTable a:hover
{
    color: #5494ea;

}
.dxgvEditFormTable a:visited
{
    color: #ab59a6;
}

.dxgvEditFormCaption
{
	padding: 4px 4px 4px 10px; 
}

.dxgvInlineEditCell
{
	padding: 1px 1px 1px 1px; 
}

.dxgvEditFormCell
{
	padding: 4px 4px 4px 4px; 
	border: 0;
}
.dxgvControl .dxpControl td.dxpCtrl, .dxgvDisabled .dxpControl
{
	padding-top: 4px;    
}

.dxgvPagerTopPanel
{	
}
.dxgvPagerBottomPanel
{
}
.dxgvDetailButton
{
}

.dxgvFilterBar 
{
	border-top: solid 1px #9F9F9F;	
	background: #d4d4d4;
}
.dxgvFilterBar a
{
	color: #394ea2;
	text-decoration: underline;		
}
.dxgvFilterBarCheckBoxCell
{
	padding: 0 3px;
	padding-right: 7px;
}
.dxgvFilterBarImageCell
{
	padding: 0 3px;
	padding-right: 1px;
	cursor: pointer;
}
.dxgvFilterBarExpressionCell
{
	font-size: 9pt;
	padding: 5px 5px 8px 0;	
	white-space: nowrap;
}
.dxgvFilterBarClearButtonCell
{
	font-size: 9pt;
	padding: 5px 6px 8px;
}
.dxgvFilterBuilderMainArea 
{
	background: white;
	padding: 6px 2px;
} 
.dxgvFilterBuilderButtonArea
{
	background: #ededed;
	border-top: solid 1px #cfcfcf;
	padding: 6px;
}

.dxgvDataRowHover
{
	background: #cfcfcf;
	color: Black;
}
/**/
a
{
	font: Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: black;
}
a:hover
{
	font: Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: underline;
	color: #CC0000;
}

.a2
{
	font: 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: black;
	text-decoration: none;
}

.a2:hover
{
	font: 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: underline;
	color: #CC0000;
	
}
.a3
{
	font: 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: black;
	text-decoration: none;
}

.a3:hover
{
	font: 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: underline;
	color: #CC0000;
}

.sep
{
	background-color: white;
	font-size: 0px;
	width: 1px;
	height: 9px;
	margin:  1 6 0 3;
	color: Black;
}
.whitesep
{
	background-color: ghostwhite;
	font-size: 0px;
	width: 1px;
	height: 9px;
	margin:  1 6 0 3;
}

.seltab
{
	font: bold 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration:none;
	/*color: #000099;*/
	/*position: relative;*/
	/*background: white url(ImageFiles/Images/active.gif) top left repeat-x;*/
	/*border-bottom-color: white;
	top: 10px;*/
}

.normalTab
{	
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}
.normalTab:hover
{	
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}
.groupbtn
{
	font: 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	font-weight: normal ;
	text-decoration: none;	
	color: White;
	text-align: right;
}
.headerbtn
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}
.tabFolder
{
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}
.tabFolder:hover
{
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}
.grouphdr
{
	font: 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	font-weight:bold;
	text-decoration: none;	
	color: White;
	
}

.grouphelp
{
	font: 7pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: black;
}

.vsep
{
	font-size: 0px;
	height: 12px;
}

.mainmenuitem
{
	font: 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	font-weight:bold;
	text-decoration: none;	
	color: #000099;
	vertical-align:middle;
}
.mainmenuitem:hover
{
	font: 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	font-weight:bold;
	text-decoration: none;	
	color: #d50509;
	vertical-align:middle;
}

.menuitem
{
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
	color: #2d2b2b;
	vertical-align: middle;
}

.menuitem:hover
{
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
	color: #d50509;
	vertical-align: middle;
}

.listbox
{
	border-right: #7F9DB9 1px solid;
	border-top: #7F9DB9 1px solid;
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	border-left: #7F9DB9 1px solid;
	border-bottom: #7F9DB9 1px solid;
}

.fieldlabel
{
	font: 9pt Arial Unicode MS;
	color:black;
}

.fieldeditor
{
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
}

.fieldeditor_readonly
{
	border-right: #7F9DB9 1px solid;
	border-top: #7F9DB9 1px solid;
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	border-left: #7F9DB9 1px solid;
	border-bottom: #7F9DB9 1px solid;
	background-color: #F0F1F5;
}

.fieldeditor_Right
{
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-align:right;
}
.fieldeditor_Right_readonly
{
	border-right: #7F9DB9 1px solid;
	border-top: #7F9DB9 1px solid;
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-align:right;
	border-left: #7F9DB9 1px solid;
	border-bottom: #7F9DB9 1px solid;
	background-color: #F0F1F5;
}

.defnode
{
	font: 7pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: black;
}
.selnode
{
	font: 7pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	background-color: #4a7acc;
	color:white;
}

.TableGray
{
	background-color:#EEEEEE;
	border-style:solid ;
	border-width:thin ;
    COLOR: #000000;
    LINE-HEIGHT: 21px;
    FONT-FAMILY: Arial Unicode MS, Tahoma;
    TEXT-DECORATION: none;
}
.TableCellDetail
{
    background-color:#FFFFFF;
    border:1;
    padding-bottom:0;
    padding-top:0;
    COLOR: #000000;
    LINE-HEIGHT: 21px;
    FONT-FAMILY: Arial Unicode MS, Tahoma;
    font-size:11;
    TEXT-DECORATION: none;
    font-weight:normal;
}
.ReportMediumTitle
{
    FONT-WEIGHT:bold;
    FONT-SIZE: 17px;
    COLOR: #006699;
    LINE-HEIGHT: 21px;
    FONT-FAMILY: Arial Unicode MS, Tahoma;
    TEXT-DECORATION: none;
}
.TableSubTitle
{
    FONT-WEIGHT: bold;
    FONT-SIZE: 11px;
    COLOR: #000000;
    LINE-HEIGHT: 21px;
    FONT-FAMILY: Arial Unicode MS, Tahoma;
    TEXT-DECORATION: none;
}
.LockStatus
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: #ffffff;
	text-decoration: none;
}

.maintable
{
	width: 100%;
	/*background-color:#fafbff*/
	/*background-color:#f9f8f5*/
	background-color:#f5f8f8;
	/*background-color:#edf2f4*/
}

.captiontable
{
/*background-image:url(images/new/effectbackground.gif);*/
background-color:#4a7ada;
font: bold 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
text-align:left;
color: #ffffff;
}

.formcaption
{
	font: bold 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: #ffffff;
	text-align:left;
}

.menu01 {
	color : #000000;
	margin-top : 0px;
	padding-bottom : 0px;
	margin-bottom : 0px;
	margin-left : 0px;
	margin-right : 0px;
	font-size : 12px;
	text-decoration : none;
	font-family : Arial Unicode MS, Arial,Verdana,Tahoma;
	font-weight: normal ;
	text-align: center;
}
.menu01:Hover {
	color : #000000;
	margin-top : 0px;
	padding-bottom : 0px;
	margin-bottom : 0px;
	margin-left : 0px;
	margin-right : 0px;
	font-size : 12px;
	text-decoration : none;
	font-family : Arial Unicode MS, Arial,Verdana,Tahoma;
	font-weight: normal ;
	color :blue ;
	text-align: center;
}
.menu01 a {
	color : #000000;
	text-decoration: none;
}	

.mainplaceholder 
{
	background-color: #ffffff;
}

.IntUnhideTab 
{
	background-image: url(hide.gif); 
	color: White;
}
.InthideTab
{
	background-image: url(unhide.gif); 
	color:Black;
}

.IntUnhideTab:hover
{
	background-image: url(hide.gif); 
	color: White;
}
.InthideTab:hover
{
	background-image: url(unhide.gif); 
	color:Black;
}

.GridHeader
{


	font: Bold 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	height:18px;
	text-decoration:  none;
	background-color:#C3D9FF /*Peachpuff*/							
}


.headerbtn:hover
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration:  none;
}

.fieldlabel:hover
{
	font: 12t Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color:#0A4E92;
	text-decoration: none
	
}

.GridItem
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration:  none;
	color:Black;
	background-color: White;
	height:32px;
}

.GridAlternatingItem
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration:  none;
	background-color:LemonChiffon; /*Peachpuff*/
}

.GridSelectedItem
{
	font: Bold 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	background-color:White;
	text-decoration:  none;
}

.GridFooter
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	Color:#0A4E92;
	background-color:#C3D9FF;
	text-decoration:none;
}
.footerbtn
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;


	
}

.MainHeaderBtn
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color:Black;
	text-decoration:  none;
}

.MainHeaderBtn:hover
{
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: Black;
	text-decoration:  none;
}
 
.btnNew
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}

.btnNew:hover
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}

.btnNew1
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color:White;
	text-decoration: none;
}

.btnNew1:hover
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color:White;
	text-decoration: none;
}

.btnSearch
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}

.btnSearch:hover
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}

.btnSearch1
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color:White;
	text-decoration: none;
}

.btnSearch1:hover
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color:White;
	text-decoration: none;
}
.btnEdit
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
}

.btnDelete
{
	 /*background-image: url(imagefiles/entry_add.gif);*/
	 
	font: 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	text-decoration: none;
	vertical-align:top;
	
}

.HeaderTab
{
	background-image:url(images/new/SubHeader.gif);
	font: bold 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: black;
	width: 100%;
	HEIGHT: 20px;
	text-decoration:none;
	text-align:left;
	background-color:#C3D9FF;
	/*background-color:#4a7ada;*/
	text-align:center;
}

.HeaderLineTab
{
	background-image:url(images/new/SubHeader.gif);
	font: bold 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: black;
	width: 100%;
	HEIGHT: 3px;
	text-decoration:none;
	text-align:left;
	background-color:#C3D9FF;
	/*background-color:#4a7ada;*/
	text-align:center;
}


.HeaderTab:hover
{	
	font: 9pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color:white;
	text-decoration:none;
}

.SubMenuHeader
{
background-color:#4a7ada;
font: bold 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
HEIGHT: 20px;
color: #ffffff;
}

.SubHeaderTab
{
	
	font: bold 8pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: #ffffff;
	HEIGHT: 16px;
	background-color:#fbe899;
	text-decoration:none;
}

.HeaderListTab
{
	font: bold 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: #ffffff;
	HEIGHT: 16px;
	text-decoration:none;
	background-color:white;
}

.TabBackground
{
	background-color:#fafbff;
	text-align:center;
	height:auto;
	
}

.HeaderDetailTab
{
	background-image:url(images/new/effectbackground.gif);
	font: bold 10pt Arial Unicode MS, Helvetica, Tahoma, sans-serif;
	color: #ffffff;
	HEIGHT: 28px;
	text-decoration:none;
	background-color:#4a7ada;

}
.header
{
	width: 100%;
	background-color:#fafbff;
}



    </style>





    <dx:ASPxGridView ID="Grid" KeyFieldName="email" runat="server" OnBeforeGetCallbackResult="Grid_BeforeGetCallbackResult" OnCustomCallback="Grid_CustomCallback" OnDataBinding="Grid_DataBinding" OnDataBound="Grid_DataBound" OnInitNewRow="Grid_InitNewRow" AutoGenerateColumns="False" EnableTheming="True" Theme="SoftOrange" OnRowUpdated="Grid_RowUpdated" OnRowValidating="Grid_RowValidating" OnRowUpdating="Grid_RowUpdating"  >
     
     

     
     
          <Columns>
              <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="1">
              </dx:GridViewCommandColumn>
              <dx:GridViewDataTextColumn FieldName="name" Name="name" VisibleIndex="4">
              </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn FieldName="surname" Name="surname" VisibleIndex="5">
              </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn FieldName="email" Name="email" VisibleIndex="11">
              </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn FieldName="title" Name="title" VisibleIndex="3">
              </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn FieldName="username" Name="username" VisibleIndex="7">
              </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn FieldName="password" Name="password" VisibleIndex="8">
              </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn FieldName="level" Name="level" VisibleIndex="9">
              </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn FieldName="signature" Name="signature" VisibleIndex="10">
              </dx:GridViewDataTextColumn>
          </Columns>
     
     

     
     
          <SettingsPager Mode="ShowAllRecords" />
      
     
   
 
         </dx:ASPxGridView>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CotentScript" runat="server">
</asp:Content>
