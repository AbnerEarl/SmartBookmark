/*chrome.contextMenus.create({
"title" : "菜单项文字",
"type" : "normal", //菜单项类型 "checkbox", "radio","separator"
"contexts" : ["frame"], //菜单项影响的页面元素 "anchor","image"
"documentUrlPatterns":["http://*.163.com/*"],//iframe的src匹配
"targetUrlPatterns" : ["http://*.163.com/*"],//href的匹配
"onclick" : changeSCHandler() //单击时的处理函数
});*/

chrome.contextMenus.create({
    title: "收藏网站到云端",
    onclick: function(){alert('网址已收藏！');}
});


chrome.contextMenus.create({
    title: '使用度娘搜索：%s', // %s表示选中的文字
    contexts: ['selection'], // 只有当选中文字时才会出现此右键菜单
    onclick: function(params)
    {
        // 注意不能使用location.href，因为location是属于background的window对象
        chrome.tabs.create({url: 'https://www.baidu.com/s?ie=utf-8&wd=' + encodeURI(params.selectionText)});
    }
});


/*chrome.contextMenus.create({
    type: 'normal'， // 类型，可选：["normal", "checkbox", "radio", "separator"]，默认 normal
    title: '菜单的名字', // 显示的文字，除非为“separator”类型否则此参数必需，如果类型为“selection”，可以使用%s显示选定的文本
    contexts: ['page'], // 上下文环境，可选：["all", "page", "frame", "selection", "link", "editable", "image", "video", "audio"]，默认page
    onclick: function(){}, // 单击时触发的方法
    parentId: 1, // 右键菜单项的父菜单项ID。指定父菜单项将会使此菜单项成为父菜单项的子菜单
    documentUrlPatterns: 'https://*.baidu.com/*' // 只在某些页面显示此右键菜单
});*/

chrome.notifications.create(null, {
    type: 'basic',
    iconUrl: 'img/message.jpg',
    title: 'SmartBookmark',
    message: '我只是一个陪伴者……！'
});