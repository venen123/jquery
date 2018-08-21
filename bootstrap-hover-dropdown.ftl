<#include "/frame/html-v4.ftl"> <@htmlHead
title="投融资-${SYS_SITENAME}" keywords="金融科技,创投数据,数据库,VC,股权投资,Fintech,大数据,PE,互联网金融,区块链,网贷,众筹,理财,零壹数据,GFI" 
description="零壹数据投融资版块，向金融科技创业者、投资机构、行内人士等群体提供最全面的金融科技（Fintech）投融资数据库，同时基于大数据生产资讯、指数、研究报告等多种产品。"> <!--每个页面单独引入的样式文件--> <script
	src="${basePath}/static/theme/frontend/js/libs/bootStrap/js/bootstrap-hover-dropdown.min.js?${srcVersion!''}"></script>

</@htmlHead> <@htmlBody> <#include "/html_top.ftl"> <!-- container start -->

<div class="container mb-30">
	<!--内容区域-->
	<div class="center clear">
		<!--内容左边-->
		<div class="cenleft">
			<!--banner 图-->
			<#include "/data/data-head-ad.ftl"> <!--选项卡 开始-->
			<div class="tab">
				<div class="title financing">
					<a class="bor3f" href="${basePath}/financing/index.htm">融资速递</a> 
					<!-- <a class="borleft bor3d" href="${basePath}/financing/investment.htm">投资机构</a> -->
					<a class="borleft bor3d" href="${basePath}/financing/data.htm">融资分析</a>
					<a class="borleft bor3d" href="${basePath}/financing/gfi.htm">零壹GFI指数</a>
					<a class="borleft bor3d" href="${basePath}/financing/news.htm">相关报道</a>
				</div>
				<div class="tabcont">
					<form class="search_form" id="search_form" method="post">
					<input type="hidden" id="pageIndex" name="pageIndex"/>
						<input type="hidden" name="country"> 
						<input type="hidden" id="fintimeorder" name="fintimeorder"/>
						<input type="hidden" id="finamountorder" name="finamountorder"/>
						<input type="hidden"
							name="business"> <input type="hidden" name="turn">
						<input type="hidden" name="area"> <input type="hidden"
							name="currency"> <input type="hidden" name="companyTime">
						<input type="hidden" name="financeTime"> 
						<input type="hidden" name="search"> 
						<input type="hidden" name="keyword" id="keyword"> 
						<div class="tablist tablist-financing">
							<div class="financing-box">
								<div class="financing-tag"></div>
								<span class="tag-clear-btn">清除筛选</span>
								<div class="financing-search">
									<span><i class="fa fa-search icon-search"></i></span> <input
										id="list-search" 
										placeholder="输入公司名称" class="form-control"> <span
										class="search-btn" style="float: right; cursor: pointer;"><i
										class="fa fa-chevron-circle-right icon-search"></i></span>
								</div>
								<div class="invest-filter-box">

									<div class="dropdown countrydp">
										<button type="button" data-toggle="dropdown"
											data-hover="dropdown">
											国别 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu financing-dropdown-menu"
											data-type="country">
												
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="中国">中国</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="美国">美国</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="印度">印度</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="新加坡">新加坡</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="英国">英国</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="加拿大">加拿大</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="德国">德国</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="法国">法国</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="澳大利亚">澳大利亚</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="瑞典">瑞典</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="以色列">以色列</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="日本">日本</a></li>
								 <li onclick="dropDownMenu(this,'country')"><a href="javascript:;" data-value="其他">其他</a></li>
										</ul>
									</div>
									<div class="dropdown areadp">
										<button type="button" data-toggle="dropdown"
											data-hover="dropdown">
											地区 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu financing-dropdown-menu"
											data-type="area">
								
								<#list condResult.get(2) as obj>
									<li onclick="dropDownMenu(this,'area')"><a href="javascript:;" data-value="${obj.name!}">${obj.name!}</a></li>
								</#list>
										</ul>
									</div>

									<div class="dropdown">
										<button type="button" data-toggle="dropdown"
											data-hover="dropdown">
											行业 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu financing-dropdown-menu"
											data-type="business">
								
								<#list condResult.get(0) as obj>
									<li onclick="dropDownMenu(this,'business')"><a href="javascript:;" data-value="${obj.name!}" >${obj.name!}</a></li>
								</#list>
							
										</ul>
									</div>

									<div class="dropdown">
										<button type="button" data-toggle="dropdown"
											data-hover="dropdown">
											轮次 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu financing-dropdown-menu"
											data-type="turn">
								
								<#list condResult.get(1) as obj>
									<li onclick="dropDownMenu(this,'turn')"><a href="javascript:;" data-value="${obj.name!}">${obj.name!}</a></li>
								</#list>
										
										</ul>
									</div>

									<div class="dropdown">
										<button type="button" data-toggle="dropdown"
											data-hover="dropdown">
											币种 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu financing-dropdown-menu"
											data-type="currency">
											
								<#list condResult.get(3) as obj>
									<li onclick="dropDownMenu(this,'currency')"><a href="javascript:;" data-value="${obj.name!}">${obj.name!}</a></li>
								</#list>
								


										</ul>
									</div>

									<div class="dropdown">
										<button type="button" data-toggle="dropdown"
											data-hover="dropdown">
											公司成立时间 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu financing-dropdown-menu"
											data-type="companyTime">
											<li onclick="dropDownMenu(this,'companyTime')"><a
												href="javascript:;" data-value="2018">2018年</a></li>
											<li onclick="dropDownMenu(this,'companyTime')"><a
												href="javascript:;" data-value="2017">2017年</a></li>
											<li onclick="dropDownMenu(this,'companyTime')"><a
												href="javascript:;" data-value="2016">2016年</a></li>
											<li onclick="dropDownMenu(this,'companyTime')"><a
												href="javascript:;" data-value="2015">2015年</a></li>
											<li onclick="dropDownMenu(this,'companyTime')"><a
												href="javascript:;" data-value="2014">2014年</a></li>
											<!-- <li onclick="dropDownMenu(this,'companyTime')"><a
												href="javascript:;" data-value="4">其他</a></li> -->
										</ul>
									</div>


									<div class="dropdown">
										<button type="button" data-toggle="dropdown"
											data-hover="dropdown">
											公布时间 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu financing-dropdown-menu"
											data-type="financeTime">
											<li onclick="dropDownMenu(this,'financeTime')"><a
												href="javascript:;" data-value="2018">2018年</a></li>
											<li onclick="dropDownMenu(this,'financeTime')"><a
												href="javascript:;" data-value="2017">2017年</a></li>
											<li onclick="dropDownMenu(this,'financeTime')"><a
												href="javascript:;" data-value="2016">2016年</a></li>
											<li onclick="dropDownMenu(this,'financeTime')"><a
												href="javascript:;" data-value="2015">2015年</a></li>
											<li onclick="dropDownMenu(this,'financeTime')"><a
												href="javascript:;" data-value="2014">2014年</a></li>
											<!-- <li onclick="dropDownMenu(this,'financeTime')"><a
												href="javascript:;" data-value="4">其他</a></li> -->
										</ul>
									</div>

								</div>
							</div>

							<!--列表-->
							<div class="financing-list-sort">
								<span>共<b id="total"></b>条结果
								</span>
								<!-- <button id="export-btn" class="excel" type="button">全部下载</button> -->
							</div>
							<table class="table table-hover table-financing table-style"	id="tab-finaningform">
								<thead>
									<tr class="financing-list-head">
										<th sortColumn="1" class="sort_col td_1 text-center" style="width:140px;">公布时间
											<i class="fa fa-sort fa-time-btn"
											onclick="financeAmountTimeBtn(this)"
											style="cursor: pointer; width: 14px;" value="fintime"></i>
										</th>
										<th sortColumn="2" class="sort_col td_2 text-center" style="width:140px;">获投公司</th>
										<th sortColumn="3" class="sort_col td_3 text-center" style="width:150px;">行业</th>
										<th sortColumn="4" class="sort_col td_4 text-center" style="width:80px;">轮次</th>
										<th sortColumn="5" class="sort_col td_5 text-center" style="width:170px;">融资额
											<i class="fa fa-sort fa-money-btn"
											onclick="financeAmountMoneyBtn(this)"
											style="cursor: pointer; width: 14px;" value="finamount" ></i>
										</th>
										<th sortColumn="6" class="sort_col td_6 text-center" style="width:170px;">主要投资方</th>
									</tr>
									<tr id="loading-financingform">
										<td colspan="6"><div class="chart-loading">
												<i class="icon-spinner icon-spin"></i> 加载中
											</div></td>
									</tr>
								</thead>
								<tbody>

								
								</tbody>
							</table>

						</div>
					</form>

					<div class="page-wrap">
						<ul id="data_pagination" class="pagination"></ul>
					</div>

				</div>
			</div>
			<!--选项卡 结束-->
		</div>
		<!--内容右边-->
		<div class="cenright">
			<!--专题轮播-->
			<#include "/data/data-right-ad.ftl"> <!--指数--> 
			<!--热门报告-->
			<#include "/financing/financing-right-hot.ftl"> 
			<#include "/data/data-right-union.ftl">
			<!--数据合作--> <#include "/data/data-right-biz.ftl"> 
		</div>
	</div>
</div>
<!-- container end --> <#include "/html_footer.ftl"> <#include "/flash.ftl">
<#include "/think/data_trend_js.ftl"> 
<script>

	var selectCountry = []; //国别
	var selectBusiness = []; //行业
	var selectTurn = [];//轮次
	var selectArea = [];//地区
	var selectCurrency = [];//币种
	var selectCompanyTime = [];//公司成立时间
	var selectFinanceTime = [];//融资时间
	var selectSearch = []; //搜索
	var selectTagAll = []; //全部
	
	function dropDownMenu(item,selecType){
		
		var selectText = $(item).text();
	
		$(".financing-tag").html("");
		
		if(selecType=="country"){
			selectCountry = [];
			selectCountry.push(selectText);
			if(selectText!='中国'){
				$(".areadp button").attr({"disabled":"true"});
			}
			else{
				$(".areadp button").removeAttr("disabled");
			}
			
		}
		
		if(selecType=="business"){
			selectBusiness = [];
			selectBusiness.push(selectText);
		}	
		
		if(selecType=="turn"){
			selectTurn = [];
			selectTurn.push(selectText);
		}	
		
		if(selecType=="area"){
			selectArea = [];
			selectArea.push(selectText);
			$(".countrydp button").attr({"disabled":"true"});
		}	
		
		if(selecType=="currency"){
			selectCurrency = [];
			selectCurrency.push(selectText);
		}	
		
		if(selecType=="companyTime"){
			selectCompanyTime = [];
			selectCompanyTime.push(selectText);
		}	
		
		if(selecType=="financeTime"){
			selectFinanceTime = [];
			selectFinanceTime.push(selectText);
		}	

		if(selecType=="search"){
			selectSearch = [];
			selectSearch.push(selectText);
		}	
		
		selectTagAll = selectCountry.toString()+","+selectBusiness.toString()+","+selectTurn.toString()+","+selectArea.toString()+","+selectCurrency.toString()+","+selectCompanyTime.toString()+","+selectFinanceTime.toString()+","+selectSearch.toString();
		
		selectTagAll = selectTagAll.split(",")
		for(var i = 0 ;i < selectTagAll.length;i++){
			
           if(selectTagAll[i] == "" || typeof(selectTagAll[i]) == "undefined"){
          	 selectTagAll.splice(i,1); 
          	 i=i-1;
           }
		} 
		
//选择筛选的全部标签
		 $("input[name=country]").val(selectCountry);
		 $("input[name=business]").val(selectBusiness);
		 $("input[name=turn]").val(selectTurn);
		 $("input[name=area]").val(selectArea);
		 $("input[name=currency]").val(selectCurrency);
		 $("input[name=companyTime]").val(selectCompanyTime);
		 $("input[name=financeTime]").val(selectFinanceTime);
		 if($("input[name=keyword]").val()!=null&&$("input[name=keyword]").val()!=""){
			 var searchVal=$("input[name=keyword]").val();
			 $(".financing-tag").append("<span id='sear' data-value='"+searchVal+"' data-text='"+searchVal+"'>"+searchVal+"<i class='fa fa-close icon-delete' onclick='tagDel(this)'></i></span>");

		 }
		 $.each(selectTagAll,function(i,item){
			$(".financing-tag").append("<span  data-value='"+i+"' data-text='"+item+"'>"+item+"<i class='fa fa-close icon-delete' onclick='tagDel(this)'></i></span>");
		 })
		 
//选择单个标签调用ajax		 
		 Ajax();
		 
	}
	
//删除筛选标签	
	function tagDel(selectTagText){
		var selText = $(selectTagText).parent().text();
		
//二次选中标签标签		
		 for(var i = 0 ;i < selectTagAll.length;i++){
             if(selectTagAll[i] == selText){
           	 	selectTagAll.splice(i,1);  
             }
		 } 
		 
		 for(var i = 0 ;i < selectCountry.length;i++){
             if(selectCountry[i] == selText){
            	 selectCountry.splice(i,1);  
            	 $("input[name=country]").val(selectCountry);
             }
		  } 
	
		  for(var i = 0 ;i < selectBusiness.length;i++){
             if(selectBusiness[i] == selText){
            	 selectBusiness.splice(i,1);  
            	 $("input[name=business]").val(selectBusiness);
             }
		  } 
		  
		  for(var i = 0 ;i < selectTurn.length;i++){
	             if(selectTurn[i] == selText){
	            	 selectTurn.splice(i,1);  
	            	 $("input[name=turn]").val(selectTurn);
	             }
			  } 
		  
		  for(var i = 0 ;i < selectArea.length;i++){
	             if(selectArea[i] == selText){
	            	 selectArea.splice(i,1);  
	            	 $("input[name=area]").val(selectArea);
	             }
			  } 
		  
		  for(var i = 0 ;i < selectCurrency.length;i++){
	             if(selectCurrency[i] == selText){
	            	 selectCurrency.splice(i,1);  
	            	 $("input[name=currency]").val(selectCurrency);
	             }
			  } 
		  
		  for(var i = 0 ;i < selectCompanyTime.length;i++){
	             if(selectCompanyTime[i] == selText){
	            	 selectCompanyTime.splice(i,1);  
	            	 $("input[name=companyTime]").val(selectCompanyTime);
	             }
			  } 
		  
		  for(var i = 0 ;i < selectFinanceTime.length;i++){
	             if(selectFinanceTime[i] == selText){
	            	 selectFinanceTime.splice(i,1);  
	            	 $("input[name=financeTime]").val(selectFinanceTime);
	             }
			  } 
		  
		  
		  for(var i = 0 ;i < selectSearch.length;i++){
	             if(selectSearch[i] == selText){
	            	 selectSearch.splice(i,1);  
	            	 $("input[name=search]").val(selectSearch);
	            	 
	             }
			  }
		  
		
//删除选中的标签	
		$(selectTagText).parent().remove();
		if($("input[name=country]").val()=="中国"||$("input[name=country]").val()==''){
			$(".areadp button").removeAttr("disabled");
			
		}
		if($("input[name=area]").val()==''){
			$(".countrydp button").removeAttr("disabled");
			
		}
		if($("input[name=keyword]").val()==selText){
			  $("input[name=keyword]").removeAttr("value");
			  
		  }
//删除单个标签调用ajax
		Ajax();
		 
	}
	
//清除筛选	
	$(".tag-clear-btn").click(function(){
		selectCountry = [];//国别
		selectBusiness = [];//行业		
		selectTurn = [];//轮次
		selectArea = [];//地区
		selectCurrency = [];//币种
		selectCompanyTime = [];//公司成立时间
		selectFinanceTime = [];//融资时间
		selectSearch = []; //搜索
		selectTagAll = []; //全部
		
		$(".financing-tag").html("");
		$("input[name=country]").val("");
		$("input[name=business]").val("");
		$("input[name=turn]").val("");
		$("input[name=area]").val("");
		$("input[name=currency]").val("");
		$("input[name=companyTime]").val("");
		$("input[name=financeTime]").val("");
		$("input[name=search]").val("");
		$("input[name=keyword]").val("");
		$(".areadp button").removeAttr("disabled");
		$(".countrydp button").removeAttr("disabled");
		Ajax();
	})
	
//点击搜索
	$(".search-btn").click(function(){
		var keyword = $("#list-search").val();
		 $("#keyword").attr("value",keyword);
		var searchVal = $.trim($("input[name=keyword]").val());
		var financingTag = $(".financing-tag").find("span");
		
		if($.inArray(searchVal,selectTagAll)<0){
			if(searchVal != ""){
				/* selectSearch.push(searchVal);
				selectTagAll.push(searchVal); */
				//$("input[name=search]").val(searchVal);
				if($("span[id=sear]").length>0){
					$("span[id=sear]").attr("data-value",searchVal);
					$("span[id=sear]").attr("data-text",searchVal);
					$("span[id=sear]").html(searchVal+"<i class='fa fa-close icon-delete' onclick='tagDel(this)'></i>");
					
				}else{
				$(".financing-tag").append("<span id='sear' data-value='"+searchVal+"' data-text='"+searchVal+"'>"+searchVal+"<i class='fa fa-close icon-delete' onclick='tagDel(this)'></i></span>");
				}
//搜索关键词调用ajax				
				Ajax();
				return false;
			}
		
		}else{
			alert("数据重复,请重新输入!");
			return false;
		}
		
	})

//时间排序
	function financeAmountTimeBtn(item){
		var nm=$(item).val();
		$("#finamountorder").val("");
		if($(item).hasClass("fa-sort-amount-asc")){
			
			$(item).removeClass("fa-sort-amount-asc").addClass("fa-sort-amount-desc");
			$("#fintimeorder").val('desc');
			
		}else{
			
			$(".fa-money-btn").removeClass("fa-sort-amount-asc fa-sort-amount-desc").addClass("fa-arrows-v");
			$(item).removeClass("fa-sort-amount-desc").addClass("fa-sort-amount-asc");
			$("#fintimeorder").val('asc');
		}
		Ajax("od");
	}
	
//金额排序
	function financeAmountMoneyBtn(item){
		var nm=$(item).val();
		$("#fintimeorder").val("");
			if($(item).hasClass("fa-sort-amount-asc")){
				
				$(item).removeClass("fa-sort-amount-asc").addClass("fa-sort-amount-desc");
				$("#finamountorder").val('desc');
			}else{
				$(".fa-time-btn").removeClass("fa-sort-amount-asc fa-sort-amount-desc").addClass("fa-arrows-v");
				$(item).removeClass("fa-sort-amount-desc").addClass("fa-sort-amount-asc");
				$("#finamountorder").val('asc');
			}
		Ajax("od");
	 }
	
    search_function(1);
	 function setPagination(pageIndex,pageCount){
		var pagination = $("#data_pagination");
		$(pagination).html("");
		if(pageIndex>1){
			$(pagination).append("<li onclick='search_function("+(pageIndex-1)+");'><a>&laquo;</a></li>");
		}else{
			$(pagination).append("<li><a>&laquo;</a></li>");
		}
		if(pageCount > 10){
			if(pageIndex<5){
				for(var i=1;i<6 && i<=pageCount;i++){
					if(pageIndex==i){
						$(pagination).append("<li class='active'><a>"+pageIndex+"</a></li>");
					}else{
						$(pagination).append("<li onclick='search_function("+i+");'><a>"+i+"</a></li>");
					}
				}
			}else{
				for(var i=pageIndex-2;i<pageIndex+3 && i<=pageCount;i++){
					if(pageIndex==i){
						$(pagination).append("<li class='active'><a>"+pageIndex+"</a></li>");
					}else{
						$(pagination).append("<li onclick='search_function("+i+");'><a>"+i+"</a></li>");
					}
				}
			}
		}else{
			for(var i=1;i<11 && i<=pageCount;i++){
				if(pageIndex==i){
					$(pagination).append("<li class='active'><a>"+pageIndex+"</a></li>");
				}else{
					$(pagination).append("<li onclick='search_function("+i+");'><a>"+i+"</a></li>");
				}
			}
		}
		if(pageIndex<pageCount){
			$(pagination).append("<li onclick='search_function("+(pageIndex+1)+");'><a>&raquo;</a></li>");
		}else{
			$(pagination).append("<li><a>&raquo;</a></li>");
		}
	} 
		
//筛选、搜索调用ajax	
	function Ajax(order){
		$("#pageIndex").val(1);	
		if(order==''){
		$("#fintimeorder").val("");
		$("#finamountorder").val("");
		}
	var from =  $("#search_form").serialize();
	$("#tab-finaningform tbody tr").each(function(){
		if(!$(this).hasClass("hide")){
			$(this).remove();
		}

	}); 
	$("#loading-financingform").removeClass("hide");
		 $.ajax({
			 url:"${basePath}/financing/cond.json",
			 type:"post",
			 data:from,
			 dataType : 'json',
			 success:function(result){
				 $("#loading-financingform").addClass("hide");
					if(result && result.code==1){
						var tbody = $("#tab-finaningform tbody");
						var data = result.data.data;
						var pageIndex=	result.data.pageIndex;
						var count = result.data.count;
						$("#total").text(count);
						var pageCount = (count%10==0)?parseInt(count/10):parseInt(count/10)+1;
			 			
			 			$("#loading-platform").removeClass("hide");
						if(data){
							for(var i in data){
								var row = data[i];
			 					var tb = $("#tab-finaningform tbody");
			 					var longInvestor="-";
			 					if(row.mainInvestor==null){
			 						row.mainInvestor="-";
			 					}
			 					else{
			 						row.mainInvestor=row.mainInvestor.replace(/，/ig,','); 
			 						longInvestor=row.mainInvestor;
			 	 					row.mainInvestor=splitstr(row.mainInvestor);
			 	 					
			 	 					}
			 					var txt=getAmountvalue(row.financingAmount,row.financingAmountUnit)
			 				
			 					var result="";
			 					result+=("<tr><td>"+timestampToTime(row.financingTime)+"</td><td><a href='${basePath}/financing/detail/"+encodeURIComponent(encodeURIComponent(row.platformName))+".htm' onclick=\"loaddetail(\'"+row.platformName+"\')\">"+row.platformName+"</a></td><td>"+row.category+"</td><td>"+row.financingType+"</td><td>"+txt);
			 					if(longInvestor!=row.mainInvestor){			 					
			 					result+=("</td><td style='text-align:left;'>"+row.mainInvestor+"<a class='onbtn' onclick=\'show(\""+longInvestor+"\",this,\""+row.mainInvestor+"\")' class=\"btn-develop\" style=\"display: inline-block;cursor: pointer;\"><span>...</span>展开<i class=\"icon-double-angle-down\"></i></a> </td></tr>");
			 					}
			 					else{
			 					result+=("</td><td>"+row.mainInvestor+"</td></tr>");
			 					}
			 					$(tb).append(result);
			 				}
						}else{
							$("#tab-finaningform tbody tr").append("<tr><td colspan='6'>没有记录</td></tr>");
						}
					    var pagecount=pageCount;
					  
					    if(pagecount>=5){
							setPagination(1,5);
					    }
					    else if(pagecount<1){
					    	setPagination(1,1);
					    	
					    }
					    else{
					    	setPagination(1,pagecount);
					    }
					    
						
					}else{
						if(result.message=="needlogin"){
							$("#tab-finaningform tbody tr").each(function(){
								if(!$(this).hasClass("hide")){
									$(this).remove();
								}
							}); 
							$("#tab-finaningform tbody").append("<tr><td colspan='6'>"+result.data+"&nbsp&nbsp<a onclick='reLogin()' href='javascript:'>点此登录</a>"+"</td></tr>");

							setPagination(0,0);
							confirm({
				        		text: "未登录的用户只能使用国别和轮次筛选,\n\n现在去登录？",
				        		func_yes: function(){
				        			reLogin();
				        			},
				        		func_no: function(){	
				        			$(".tag-clear-btn").click();
				            		},
				        		}
							)
							
						
							
						}
						else{
						alert("查询时出现错误！");
						setPagination(0,0);
						}
					}
				},
				 error:function(){
						
				 }
		 })
	}	
	
	
//查询投融资数据(分页)
function search_function(pageIndex){
	
	if(!pageIndex || pageIndex==''){
		pageIndex = 1;
	}
	$("#pageIndex").val(pageIndex);
	var cond = $("#search_form").serialize();
	$("#tab-finaningform tbody tr").each(function(){
		if(!$(this).hasClass("hide")){
			$(this).remove();
		}
	}); 
	$("#loading-financingform").removeClass("hide");
	$.post("${basePath}/financing/cond.json",cond,
		function(result){
		$("#loading-financingform").addClass("hide");
		if(result && result.code==1){
			var tbody = $("#tab-finaningform tbody");
			var data = result.data.data;
			var count = result.data.count;
			var pageCount = (count%10==0)?parseInt(count/10):parseInt(count/10)+1;
			$("#total").text(count);
 			$("#tab-finaningform tbody tr").each(function(){
				if(!$(this).hasClass("hide")){
					$(this).remove();
				}
			}); 
			if(data){
				for(var i in data){
					var row = data[i];
 					var tb = $("#tab-finaningform tbody");
 					var longInvestor="-";
 					if(row.mainInvestor==null){
 						row.mainInvestor="-";
 					}
 					else{
 						row.mainInvestor=row.mainInvestor.replace(/，/ig,','); 
 						longInvestor=row.mainInvestor;
 	 					row.mainInvestor=splitstr(row.mainInvestor);
 	 					
 	 					}
 					var txt=getAmountvalue(row.financingAmount,row.financingAmountUnit)
 					var result="";
 					result+=("<tr><td>"+timestampToTime(row.financingTime)+"</td><td><a href='${basePath}/financing/detail/"+encodeURIComponent(encodeURIComponent(row.platformName))+".htm' onclick=\"loaddetail(\'"+row.platformName+"\')\">"+row.platformName+"</a></td><td>"+row.category+"</td><td>"+row.financingType+"</td><td>"+txt);
 					if(longInvestor!=row.mainInvestor){
 					result+=("</td><td style='text-align:left;'>"+row.mainInvestor+"<a class='onbtn'  onclick=\'show(\""+longInvestor+"\",this,\""+row.mainInvestor+"\")' class=\"btn-develop\" style=\"display: inline-block;cursor: pointer;\"><span>...</span>展开<i class=\"icon-double-angle-down\"></i></a> </td></tr>");
 					}
 					else{
 					result+=("</td><td>"+row.mainInvestor+"</td></tr>");
 					}
 					$(tb).append(result);
 				}
			}else{
				$("#tab-finaningform tbody").append("<tr><td colspan='6'>没有记录</td></tr>");
			}
			setPagination(pageIndex,pageCount);
			
		}else{
			if(result.message=="private"){
				$("#tab-finaningform tbody tr").each(function(){
					if(!$(this).hasClass("hide")){
						$(this).remove();
					}
				}); 
				$("#tab-finaningform tbody").append("<tr><td colspan='6'>"+result.data+"</td></tr>");
				alert(result.data);
			}
			else{
				alert("查询时出现错误！");
			setPagination(0,0);
			}
		}
	},"json");
}	
//时间戳格式化
function timestampToTime(timestamp) {
    var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
    Y = date.getFullYear() + '-';
    M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
    D = (date.getDate() < 10 ? '0'+date.getDate() : date.getDate()) + ' ';
    return Y+M+D;
}

</script> 
<script>

function loaddetail(t){
	var link = "${basePath}/financing/detail/";

	if(t){
		t = encodeURIComponent(encodeURIComponent(t));
		link += t;
		link+=".htm";
		
	}
	window.open(link);
}
</script> 

<script>

$('#list-search').on('keypress',function(event){ 
    
    
    if(event.keyCode == 13)      

    {  
    	
    	$(".search-btn").click();
        return false;
    }  

})


</script>

<script>
function getAmountvalue(txt,unit){
	var rttxt;
	if((txt.indexOf('数')!=-1)||(txt.indexOf('近')!=-1)||(txt.indexOf('级')!=-1)){
		rttxt=txt+unit;
	}
	else if(txt=="未透露"){
		rttxt=txt;
		
	}
	else if(txt/10000>=1){
		
		rttxt=(txt/10000).toFixed(2)+'亿'+unit;
		
	}
	else{
		rttxt=txt+"万"+unit;
		
	}
	return rttxt;
	
	
}

function splitstr(str){
	
	
	var rtnstr="";
	var arr=str.split(",");
	for(var i=0;i<arr.length;i++){
		rtnstr+=arr[i];
		if((i+1==arr.length)||(i>=2))
			{
				break;
			}
		else{
			rtnstr+=',';
		}
			
	}
	return rtnstr;
}
 function show(e,td,s){	 

	 $(td).parent().html(e+"<a class='onbtn'  onclick=\"hide('"+s+"',this,'"+e+"');\" class=\"btn-develop\" style=\"display: inline-block;cursor: pointer;\"> 收起<i class=\"icon-double-angle-up\"></i></a>");
	 
 } 
 function hide(s,td,e){
	 $(td).parent().html(s+"<a class='onbtn'  onclick=\"show('"+e+"',this,'"+s+"');\" class=\"btn-develop\" style=\"display: inline-block;cursor: pointer;\"><span>...</span>展开<i class=\"icon-double-angle-down\"></i></a>")
	 
 }

 


</script>


</@htmlBody>