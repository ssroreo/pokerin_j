today=new Date();
var tdate,tdate1,tday, x;
var x = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五","星期六");
tdate =(today.getYear()) + "年" + (today.getMonth() + 1 ) + "月" + today.getDate() + "日" + "    " + x[today.getDay()];
tdate1 =(today.getYear()) + "-" + (today.getMonth() + 1 ) + "-" + today.getDate();
jran=today.getTime();
function rnd() {
    ia=9301; 
    ic=49297;
    im=233280;
    jran = (jran*ia+ic) % im;
    return jran/(im*1.0);
};
function rand(number) {
    return Math.ceil(rnd()*number);
};