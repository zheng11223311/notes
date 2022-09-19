.class public Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;
.super Ljava/lang/Object;
.source "ChinaUnicomFreeFlowUtil.java"


# static fields
.field public static final CHINA_MOBILE:Ljava/lang/String; = "mobile"

.field public static final CHINA_TELETCOM:Ljava/lang/String; = "telecom"

.field public static final CHINA_UNCIOM:Ljava/lang/String; = "unicom"

.field public static final TAG:Ljava/lang/String;

.field public static isAlertDialogShown:Z

.field public static isChinaUnicomSubscribed:Z

.field public static isFirstShow:Z

.field public static isTransformUrlSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sget-object v0, Lcom/youku/player/LogTag;->TAG_WO_VIDEO:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->TAG:Ljava/lang/String;

    .line 31
    sput-boolean v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicomSubscribed:Z

    .line 33
    sput-boolean v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isTransformUrlSuccess:Z

    .line 35
    sput-boolean v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isAlertDialogShown:Z

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isFirstShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkChinaUnicom3GWapNet(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 162
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 163
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3gwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v2, 0x1

    .line 168
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkChinaUnicomStatus(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 172
    sget-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isAlertDialogShown:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {p0, p1, v0}, Lcom/youku/player/unicom/ChinaUnicomManager;->checkChinaUnicomStatus(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 177
    :cond_0
    sget-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isAlertDialogShown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 178
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isAlertDialogShown:Z

    .line 180
    :cond_1
    return-void
.end method

.method public static getOperatorType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    if-eqz p0, :cond_3

    .line 143
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 144
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 146
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    const-string v2, "mobile"

    .line 155
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "telManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 148
    .restart local v0    # "operator":Ljava/lang/String;
    .restart local v1    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    const-string/jumbo v2, "unicom"

    goto :goto_0

    .line 150
    :cond_2
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const-string/jumbo v2, "telecom"

    goto :goto_0

    .line 155
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

.method public static initChinaUnicomSDK(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 63
    sget-object v2, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->TAG:Ljava/lang/String;

    const-string v3, " =====\u5f00\u59cb\u6267\u884c\u8054\u901a\u521d\u59cb\u5316====="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicom3G4GCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-static {p0}, Lcom/unicom/iap/sdk/WoVideoSDK;->getMonthOrderInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "strWoVideoInfo":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WoVideoInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz v1, :cond_1

    .line 68
    invoke-static {v1}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->parseChinaUnicomVideoInfo(Ljava/lang/String;)Lcom/youku/player/unicom/ChinaUnicomVideoInfo;

    move-result-object v0

    .line 69
    .local v0, "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v0}, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->getStatus()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 73
    :cond_0
    sput-boolean v5, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicomSubscribed:Z

    .line 79
    .end local v0    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    :cond_1
    :goto_0
    sget-object v2, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " =====\u8054\u901a\u521d\u59cb\u5316\u7ed3\u675f,\u8ba2\u8d2d\u4fe1\u606f\u4e3a====="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicomSubscribed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v1    # "strWoVideoInfo":Ljava/lang/String;
    :cond_2
    return-void

    .line 76
    .restart local v0    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    .restart local v1    # "strWoVideoInfo":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicomSubscribed:Z

    goto :goto_0
.end method

.method public static isChinaUnicom3G4GCard()Z
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/baseproject/utils/Util;->getNetworkType()I

    move-result v0

    .line 100
    .local v0, "netType":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaUnicom3GNet()Z
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicom3G4GCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSatisfyChinaUnicomFreeFlow()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->unicomFree()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicom3GNet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicomSubscribed:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseChinaUnicomVideoInfo(Ljava/lang/String;)Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    .locals 8
    .param p0, "jsonWoVideo"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v4, 0x0

    .line 42
    .local v4, "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 43
    invoke-static {p0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->parseJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "jWoVideo":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "jArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 47
    .local v2, "jObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;

    invoke-direct {v5}, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v4    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    .local v5, "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    :try_start_1
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->setStatus(I)V

    .line 49
    const-string/jumbo v6, "videoid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->setVedioId(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 55
    .end local v1    # "jArray":Lorg/json/JSONArray;
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .end local v3    # "jWoVideo":Ljava/lang/String;
    .end local v5    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    .restart local v4    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    :cond_0
    :goto_0
    return-object v4

    .line 51
    .restart local v3    # "jWoVideo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    .restart local v1    # "jArray":Lorg/json/JSONArray;
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v5    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    .restart local v4    # "mWoVideo":Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
    goto :goto_1
.end method

.method private static parseJSONString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "jsonStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method public static showChinaUnicom3GWAPDialog(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 225
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 226
    sget-boolean v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isFirstShow:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 227
    const/4 v1, 0x0

    sput-boolean v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isFirstShow:Z

    .line 228
    new-instance v0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

    const-string v1, "WAP\u63a5\u5165\u70b9\u5c06\u5bfc\u81f4\u8054\u901a\u514d\u6d41\u91cf\u670d\u52a1\u5931\u6548\uff0c\u8bf7\u5207\u6362\u4e3aNET\u63a5\u5165\u70b9\u3002"

    invoke-direct {v0, p0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    .local v0, "alertDialog":Lcom/youku/player/unicom/ChinaUnicomAlertDialog;
    const-string/jumbo v1, "\u7ee7\u7eed\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setUnicomPositiveBtnText(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "\u53d6\u6d88\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setUnicomNegativeBtnText(Ljava/lang/String;)V

    .line 233
    new-instance v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$3;

    invoke-direct {v1, v0, p0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$3;-><init>(Lcom/youku/player/unicom/ChinaUnicomAlertDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setUnicomNegativeBtnListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;

    invoke-direct {v1, v0, p1, p0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;-><init>(Lcom/youku/player/unicom/ChinaUnicomAlertDialog;Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setUnicomPositiveBtnListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->show()V

    .line 287
    .end local v0    # "alertDialog":Lcom/youku/player/unicom/ChinaUnicomAlertDialog;
    :cond_0
    return-void
.end method

.method public static showChinaUnicomTransformFailedDialog(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 186
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 187
    sget-boolean v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isFirstShow:Z

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x0

    sput-boolean v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isFirstShow:Z

    .line 189
    new-instance v0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

    const-string/jumbo v1, "\u8054\u901a\u514d\u6d41\u91cf\u5730\u5740\u83b7\u53d6\u5931\u8d25\uff0c\u7ee7\u7eed\u64ad\u653e\u5c06\u6d88\u8017\u5957\u9910\u6d41\u91cf\u3002"

    invoke-direct {v0, p0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    .local v0, "unicomAlertDialog":Lcom/youku/player/unicom/ChinaUnicomAlertDialog;
    const-string/jumbo v1, "\u7ee7\u7eed\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setUnicomPositiveBtnText(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "\u53d6\u6d88\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setUnicomNegativeBtnText(Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$1;

    invoke-direct {v1, v0, p1}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$1;-><init>(Lcom/youku/player/unicom/ChinaUnicomAlertDialog;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setUnicomPositiveBtnListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$2;

    invoke-direct {v1, v0, p0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$2;-><init>(Lcom/youku/player/unicom/ChinaUnicomAlertDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setUnicomNegativeBtnListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->show()V

    .line 218
    .end local v0    # "unicomAlertDialog":Lcom/youku/player/unicom/ChinaUnicomAlertDialog;
    :cond_0
    return-void
.end method
