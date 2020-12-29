<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <t:base type="default"></t:base>
    <link rel="stylesheet" href="css/index.css"/>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%--<div id="herder">
    <ul>
        <li><img src="img/1.png " id="img1"></li>
        <li><a href="#" id="cor"><b>双井街道智慧办公系统</b></a></li>
        <li><img src="img/首页@2x.png" id="ban"></li>
        <li><a href="#" id="cor-size">门户首页</a></li>
        <li><img src="img/办公.png" id="ban"></li>
        <li><a href="#" id="cor-size">个人办公</a></li>
        <li><img src="img/财务Finance.png" id="ban"></li>
        <li><a href="#" id="cor-size">财务系统</a></li>
        <li>
            <input type="search" placeholder="请输入关键字" id="text-input">
            <span class="glyphicon glyphicon-search image"></span>
        </li>
        <li><input type="button" value="搜索" id="text-btn"></li>
    </ul>
</div>--%>
<div id="main">
    <div id="boder1">
        <ul>
            <li id="cor1"><b>双井图库</b></li>
            <li class="cor2"><a href="#" id="more">更多+</a></li>
            <li id="font1">双井街道通知(2020-11-05 19: 00阅3次)</li>
        </ul>
    </div>
    <div id="boder1">
        <ul>
            <li id="cor1"><b>工作信息</b></li>
            <li class="cor2"><a href="#" id="more">更多+</a></li>
            <li id="font1">双井街道通知(2020-11-05 19: 00阅3次)</li>

        </ul>
    </div>

    <div id="boder1">
        <ul>
            <li id="cor1"><b>公示文件</b></li>
            <li class="cor2"><a href="#" id="more"></a></li>
            <li id="yuan">3</li>
            <li id="yuan">4</li>
            <li id="yuan">8</li>


        </ul>
    </div>
    <div id="boder1">
        <ul>
            <li id="cor1"><b>公示文件</b></li>
            <li class="cor2"><a href="#" id="more">更多+</a></li>
            <li id="font1">双井街道通知(2020-11-05 19: 00阅3次)</li>

        </ul>
    </div>
    <div id="boder1">
        <ul>
            <li id="cor1"><b>媒体聚焦</b></li>
            <li class="cor2"><a href="#" id="more">更多+</a></li>
            <li id="font1">双井街道通知(2020-11-05 19: 00阅3次)</li>

        </ul>
    </div>
    <div id="boder1">
        <ul>
            <li id="cor1"><b>12345案件统计</b></li>
            <li class="cor2"><a href="#" id="more"></a></li>
            <li id="item">
                <div id="main-yuan" style="width: 500px;height:400px;"></div>
            </li>

        </ul>
    </div>
    <div id="boder1">
        <ul>
            <li id="cor1"><b>通知公告</b></li>
            <li class="cor2"><a href="#" id="more">更多+</a></li>
            <li id="font1">双井街道通知(2020-11-05 19: 00阅3次)</li>

        </ul>
    </div>
    <div id="boder1">
        <ul>
            <li id="cor1"><b>制度范围</b></li>
            <li class="cor2"><a href="#" id="more">更多+</a></li>
            <li id="font1">双井街道通知(2020-11-05 19: 00阅3次)</li>

        </ul>
    </div>
    <div id="boder1">
        <ul>
            <li id="cor1"><b>事件通知</b></li>
            <li class="cor2"><a href="#" id="more">更多+</a></li>
            <li id="font1">双井街道通知(2020-11-05 19: 00阅3次)</li>

        </ul>
    </div>
</div>

<div id="footer">
    <div>
        <ul id="btn">
            <li>链接
                <input type="button" value="朝阳区服务网" class="i1"/>
                <input type="button" value="朝阳区服务网" class="i2"/>
            </li>

        </ul>
    </div>
</div>
</body>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main-yuan'));
    var bingtu = '';
    search();

    function search() {
        $.ajax({
            type: "post",
            url: 'oa/123456/postUrl',//目标地址
            success: function (data) {
                bingtu = JSON.parse(data.obj);
                eac(bingtu);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log(textStatus)
            }
        })
    }

    function eac(bingtu) {
        var titleNumber = bingtu.data.total;
        var number = bingtu.data.chart;
        var option = {
            title: {
                text: '未完成人数统计',
                left: titleNumber
            },
            tooltip: {
                trigger: 'item',
                formatter: '{a} <br/>{b} : {c} ({d}%)'
            },
            /*legend: {
                orient: 'vertical',
                left: 'left',
                data: ['直接访问', '邮件营销', '联盟广告', '视频广告', '搜索引擎']
            },*/
            series: [
                {
                    name: '人数统计',
                    type: 'pie',
                    radius: '75%',
                    center: ['50%', '60%'],
                    data: number,
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ],
            /*selected: {
                // 选中'系列1'
                '公司月会议': true,
            }*/
        };
        myChart.setOption(option);

    }


</script>
</html>



