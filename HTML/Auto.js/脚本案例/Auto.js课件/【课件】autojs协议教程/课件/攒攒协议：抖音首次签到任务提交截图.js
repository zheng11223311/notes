

var url = host

var res = http.postMultipart(url, {
    key: dir+"/"+prefix+expire+".png",
    policy: policy,
    OSSAccessKeyId: accessid,
    signature: signature,
    success_action_status: "200",
    file: open("/sdcard/1.png")
});



