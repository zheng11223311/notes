




var wins = auto.windows;

// log(wins)

wins.forEach(child => {
    log(child.title)
})

// var window = wins.filter(w => {
//     return w.title == '微信';
// });

// var window = wins.filter(w => w.title == '微信');


log(window[0].title)

// [ AccessibilityWindowInfo[title=微信, id=6296, type=TYPE_APPLICATION, layer=0, bounds=Rect(0, 0 - 1080, 2340), focused=true, active=true, pictureInPicture=false, hasParent=false, isAnchored=false, hasChildren=false] ]



// [ 
//     AccessibilityWindowInfo
//     [title=null, id=7, type=TYPE_SYSTEM, layer=3, bounds=Rect(0, 2210 - 1080, 2340), focused=false, active=false, pictureInPicture=false, hasParent=false, isAnchored=false, hasChildren=false],
    
//     AccessibilityWindowInfo
//     [title=null, id=8, type=TYPE_SYSTEM, layer=2, bounds=Rect(0, 0 - 1080, 80), focused=false, active=false, pictureInPicture=false, hasParent=false, isAnchored=false, hasChildren=false],  
    
//     AccessibilityWindowInfo
//     [title=null, id=5476, type=TYPE_SYSTEM, layer=1, bounds=Rect(-29, 1046 - 87, 1162), focused=false, active=false, pictureInPicture=false, hasParent=false, isAnchored=false, hasChildren=false],
    
//     AccessibilityWindowInfo
//     [title=Auto.js, id=5851, type=TYPE_APPLICATION, layer=0, bounds=Rect(0, 0 - 1080, 2340), focused=true, active=true, pictureInPicture=false, hasParent=false, isAnchored=false, hasChildren=false] 
// ]


toast('阿涛QQ/微信：656206105')