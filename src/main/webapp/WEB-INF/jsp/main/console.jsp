<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <t:base type="default"></t:base>
    <link rel="stylesheet" href="css/index.css"/>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
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
                <div>
                    <div id="main-number"
                         style="width: 150px;height:150px;float: right;z-index: 9999999"></div>
                    <div id="main-dept"
                         style="width: 150px;height:150px; float: left;z-index: 9999999"></div>
                </div>
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
    var myChart = echarts.init(document.getElementById('main-number'));
    var myChart_two = echarts.init(document.getElementById('main-dept'));
    var bingtu = '';
    search();
    getNum();

    function search() {
        $.ajax({
            type: "post",
            url: 'oa/123456/getAll',//目标地址
            success: function (data) {
                bingtu = JSON.parse(data.obj);
                eac(bingtu);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log(textStatus)
            }
        })
    }

    function getNum() {
        $.ajax({
            type: "post",
            url: 'oa/123456/getNum',//目标地址
            success: function (data) {
                bingtu = JSON.parse(data.obj);
                numeac(bingtu);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log(textStatus)
            }
        })
    }

    function numeac(bingtu) {
        var titleNumber = bingtu.data.total;
        var number = bingtu.data.chart;
        var numberBL = bingtu.data.point;
        var option_two = {
            title: {
                text: '今日办结率:' + numberBL,
                subtext: numberBL,
                left: 'center'
            },
            tooltip: {
                trigger: 'item',
                confine: true,
                formatter: '{a} <br/>{b} : {c} ({d}%)'
            },
            legend: {
                orient: 'vertical',
                left: 10,
                data: []
            },
            series: [
                {
                    type: 'pie',
                    radius: ['50%', '70%'],
                    avoidLabelOverlap: false,
                    label: {
                        show: false,
                        position: 'center',
                        normal: {
                            position: 'inner',
                            show: false
                        }
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: number
                }
            ],
        };
        myChart_two.setOption(option_two);
    }


    function eac(bingtu) {
        var titleNumber = bingtu.data.total;
        var number = bingtu.data.chart;
        var numberSL = bingtu.data.total;
        var option = {
            title: {
                text: '今日案件数量:' + numberSL,
                subtext: numberSL,
                left: 'center'
            },
            tooltip: {
                trigger: 'item',
                confine: true,
                formatter: '{a} <br/>{b} : {c} ({d}%)'
            },
            legend: {
                orient: 'vertical',
                left: 10,
                data: []
            },
            series: [
                {
                    type: 'pie',
                    radius: ['50%', '70%'],
                    avoidLabelOverlap: false,
                    label: {
                        show: false,
                        position: 'center',
                        normal: {
                            position: 'inner',
                            show: false
                        }
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: number
                }
            ],
        };
        myChart.setOption(option);
    }


</script>
</html>



