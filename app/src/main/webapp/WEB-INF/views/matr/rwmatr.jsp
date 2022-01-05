<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>원자재</h1>
	<div>
		검색창:<input type="text" id="departmentId" name="departmentId"><button type="button" onclick="select()">검색</button>
	</div>
	
	<div id="grid" style="width: 100%;"></div>
	
	<script>
		
		let arr=[];
		fetch("${pageContext.request.contextPath}/testAjax/info")
		.then(response=> response.json())
		.then(result => {
						
			for (item of result) {
				arr.push(item)
			}
			
			console.log(arr)
			
			grid.resetData(arr);
		})
			
	const grid = new tui.Grid({
	      el: document.getElementById('grid'),
	      data: {
				api: {
					readData : {
						url : '${pageContext.request.contextPath}/testAjax/info',
						method:'GET'
					}
				}
	      },
	      scrollX: false,
	      scrollY: false,
	      columns: [
	        {
	          header: '원자재코드',
	          name: 'rwmatrId'
	        },
	        {
	          header: '원자재명',
	          name: 'name'
	        },
	        {
	          header: '규격',
	          name: 'spec'
	        },
	        {
	          header: '작업단위',
	          name: 'wkUnit'
	        },
	        {
	          header: '안전재고',
	          name: 'safStc'
	        },
	        {
	          header: '업체코드',
	          name: 'vendId'
	        }
	      ]
	    });
	
	//grid.resetData(gridData);
	//grid.resetData(arr);
	
	
	grid.on('click',ev => {
		
		console.log(ev)
		console.log(ev.nativeEvent.srcElement.innerHTML)
		console.log(ev.rowKey)
		console.log(ev.columnName)
		
		
		//grid.resetData(gridData);
		//grid.hideColumn('item')
		//grid.clear();
	})
	
	</script>
</body>
</html>