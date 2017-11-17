﻿/** 
* 在iframe中调用，在父窗口中出提示框(herf方式不用调父窗口)
*/
$.extend({
    messageBox5s: function (title, msg) {
        $.messager.show({
            title: title,
            msg: msg,
            timeout: 5000,
            showType: 'slide',
            style: {
                top: '',
                left: '',
                right: 5,
                bottom: -document.body.scrollTop - document.documentElement.scrollTop + 5
            }
        });
    },
    messageBox10s: function (title, msg) {
        $.messager.show({
            title: title,
            msg: msg,
            height: 'auto',
            width: 'auto',
            timeout: 10000,
            showType: 'slide',
            style: {
                left: '',
                right: 5,
                top: '',
                bottom: -document.body.scrollTop - document.documentElement.scrollTop + 5
            }
        });
    },
    show_alert: function (title, msg) {
        $.messager.alert(title, msg);
    }
})

/** 
* panel关闭时回收内存，主要用于layout使用iframe嵌入网页时的内存泄漏问题
*/
$.fn.panel.defaults.onBeforeDestroy = function () {

    var frame = $('iframe', this);
    try {
        // alert('销毁，清理内存');
        if (frame.length > 0) {
            for (var i = 0; i < frame.length; i++) {
                frame[i].contentWindow.document.write('');
                frame[i].contentWindow.close();
            }
            frame.remove();
            if ($.browser.msie) {
                CollectGarbage();
            }
        }
    } catch (e) {
    }
};

//让window居中
var easyuiPanelOnOpen = function (left, top) {
    //var iframeWidth = $(this).parent().parent().width();
    //var iframeHeight = $(this).parent().parent().height();

    //var windowWidth = $(this).parent().width();
    //var windowHeight = $(this).parent().height();
    var iframeWidth = $(this).parent().width();
    var iframeHeight = $(this).parent().height();

    var windowWidth = $(this).width();
    var windowHeight = $(this).height();

    var setWidth = (iframeWidth - windowWidth) / 2 + 260;
    var setHeight = (iframeHeight - windowHeight) / 2 + 60;
    $(this).parent().css({/* 修正面板位置 */
        left: setWidth,
        top: setHeight
    });

    if (iframeHeight < windowHeight) {
        $(this).parent().css({/* 修正面板位置 */
            left: setWidth,
            top: 0
        });
    }
    $(".window-shadow").hide();
};
$.fn.window.defaults.onOpen = easyuiPanelOnOpen;

//扩展resize居中
var easyuiPanelOnResize = function (left, top) {


    var iframeWidth = $(this).parent().parent().width();

    var iframeHeight = $(this).parent().parent().height();

    var windowWidth = $(this).parent().width();
    var windowHeight = $(this).parent().height();


    var setWidth = (iframeWidth - windowWidth) / 2;
    var setHeight = (iframeHeight - windowHeight) / 2;
    $(this).parent().css({/* 修正面板位置 */
        left: setWidth - 6,
        top: setHeight - 6
    });

    if (iframeHeight < windowHeight) {
        $(this).parent().css({/* 修正面板位置 */
            left: setWidth,
            top: 0
        });
    }
    $(".window-shadow").hide();
    //$(".window-mask").hide().width(1).height(3000).show();
};
$.fn.window.defaults.onResize = easyuiPanelOnResize;
