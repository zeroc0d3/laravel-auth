<!-- https://www.plus2net.com/javascript_tutorial/clock.php -->
<script type="text/javascript">

function display_c() {
    var refresh=1000; // Refresh rate in milli seconds
    mytime=setTimeout('display_ct_short()',refresh)
}

function display_ct_long() {
    // Fri Dec 27 2019 14:43:45 GMT+0700 (Western Indonesia Time)
    var x = new Date();
    document.getElementById('ct').innerHTML = x;
    display_c();
}

function display_ct_utc() {
    // Fri, 27 Dec 2019 07:44:00 GMT
    var x = new Date();
    var x1 = x.toUTCString();
    document.getElementById('ct').innerHTML = x1;
    tt=display_c();
}

function display_ct_short() {
    // 12/27/2019 - 14:52:54
    var x = new Date();

    // date part ///
    var month = x.getMonth()+1;
    var day = x.getDate();
    var year = x.getFullYear();
    if (month < 10 ){ month = '0' + month; }
    if (day < 10 ){ day='0' + day; }
    var x2 = day + '/' + month + '/' + year;

    // time part //
    var hour = x.getHours();
    var minute = x.getMinutes();
    var second = x.getSeconds();
    if(hour <10 ){ hour = '0' + hour; }
    if(minute <10 ) { minute ='0' + minute; }
    if(second < 10) { second ='0' + second; }
    var x2 = x2 + ' ' +  hour+':'+minute+':'+second

    document.getElementById('ct').innerHTML = x2;
    display_c();
}

</script>