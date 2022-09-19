.class public Lcom/youku/player/ad/OfflineAdSDK;
.super Ljava/lang/Object;
.source "OfflineAdSDK.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static isInitAdSDK:Z

.field private static mIXYDEventListener:Lorg/openad/events/IXYDEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "AdSDK"

    sput-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/ad/OfflineAdSDK;->isInitAdSDK:Z

    .line 29
    new-instance v0, Lcom/youku/player/ad/OfflineAdSDK$1;

    invoke-direct {v0}, Lcom/youku/player/ad/OfflineAdSDK$1;-><init>()V

    sput-object v0, Lcom/youku/player/ad/OfflineAdSDK;->mIXYDEventListener:Lorg/openad/events/IXYDEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canStartNativeAdServer()Z
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/youku/player/ad/OfflineAdSDK;->isInitAdSDK:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/XNativeAdManager;->getState()Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    move-result-object v0

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->UNKNOWN:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAdInstance(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;I)V
    .locals 7
    .param p0, "callBack"    # Lcom/youku/player/goplay/IGetOfflineAdvCallBack;
    .param p1, "adPosition"    # I

    .prologue
    .line 128
    :try_start_0
    sget-object v4, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdSDK -----> XNativeAdManager.getInstance().getState() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youdo/XNativeAdManager;->getState()Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "instance":Lcom/youdo/vo/XAdInstance;
    const/4 v4, 0x7

    if-ne p1, v4, :cond_1

    .line 131
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youdo/XNativeAdManager;->getPrerollAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v2

    .line 138
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v2}, Lcom/youdo/vo/XAdInstance;->toLiveJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "json":Ljava/lang/String;
    sget-object v4, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instance.toLiveJSONObject() -----> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-class v4, Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    .line 142
    .local v0, "advInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    if-eqz v0, :cond_4

    .line 143
    sget-object v4, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v5, "getAdInstance -----> callBack.onSuccess() "

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-interface {p0, v0, v2}, Lcom/youku/player/goplay/IGetOfflineAdvCallBack;->onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;Lcom/youdo/vo/XAdInstance;)V

    .line 156
    .end local v0    # "advInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    .end local v2    # "instance":Lcom/youdo/vo/XAdInstance;
    .end local v3    # "json":Ljava/lang/String;
    :goto_1
    return-void

    .line 132
    .restart local v2    # "instance":Lcom/youdo/vo/XAdInstance;
    :cond_1
    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    .line 133
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youdo/XNativeAdManager;->getPauserollAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v2

    goto :goto_0

    .line 134
    :cond_2
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 135
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youdo/XNativeAdManager;->getDisplayAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v2

    goto :goto_0

    .line 148
    :cond_3
    sget-object v4, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v5, "instance.toLiveJSONObject() -----> null"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_4
    sget-object v4, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v5, "OfflineAdSDK.getAdInstance -------->   callBack.onFailed"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v4, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v4}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    invoke-interface {p0, v4}, Lcom/youku/player/goplay/IGetOfflineAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 152
    .end local v2    # "instance":Lcom/youdo/vo/XAdInstance;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OfflineAdSDK.getAdInstance -------->   callBack.onFailed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v4, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v4}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    invoke-interface {p0, v4}, Lcom/youku/player/goplay/IGetOfflineAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto :goto_1
.end method

.method public static getDisplayAd(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;)V
    .locals 2
    .param p0, "callBack"    # Lcom/youku/player/goplay/IGetOfflineAdvCallBack;

    .prologue
    .line 118
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v1, "--------> OfflineAdSDK.getDisplayAd "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/youku/player/ad/OfflineAdSDK;->getAdInstance(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;I)V

    .line 120
    return-void
.end method

.method public static getPauserollAd(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;)V
    .locals 2
    .param p0, "callBack"    # Lcom/youku/player/goplay/IGetOfflineAdvCallBack;

    .prologue
    .line 111
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v1, "--------> OfflineAdSDK.getPauserollAd "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/youku/player/ad/OfflineAdSDK;->getAdInstance(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;I)V

    .line 113
    return-void
.end method

.method public static getPrerollAd(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;)V
    .locals 2
    .param p0, "callBack"    # Lcom/youku/player/goplay/IGetOfflineAdvCallBack;

    .prologue
    .line 103
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v1, "--------> OfflineAdSDK.getPrerollAd "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/youku/player/ad/OfflineAdSDK;->getAdInstance(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;I)V

    .line 105
    return-void
.end method

.method public static initAdSDK(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenDensity"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I
    .param p4, "outputFolder"    # Ljava/lang/String;
    .param p5, "openUDID"    # Ljava/lang/String;
    .param p6, "rst"    # Ljava/lang/String;
    .param p7, "appVersion"    # Ljava/lang/String;
    .param p8, "pid"    # Ljava/lang/String;
    .param p9, "site"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v10, Lcom/youku/player/ad/OfflineAdSDK;->mIXYDEventListener:Lorg/openad/events/IXYDEventListener;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/youku/player/ad/OfflineAdSDK;->initAdSDK(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 50
    return-void
.end method

.method public static initAdSDK(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenDensity"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I
    .param p4, "outputFolder"    # Ljava/lang/String;
    .param p5, "openUDID"    # Ljava/lang/String;
    .param p6, "rst"    # Ljava/lang/String;
    .param p7, "appVersion"    # Ljava/lang/String;
    .param p8, "pid"    # Ljava/lang/String;
    .param p9, "site"    # Ljava/lang/String;
    .param p10, "listener"    # Lorg/openad/events/IXYDEventListener;

    .prologue
    .line 58
    sget-boolean v0, Lcom/youku/player/ad/OfflineAdSDK;->isInitAdSDK:Z

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v1, "AdSDK -----> is inited adSDK!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XNativeAdManager.getInstance().getState() -----> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youdo/XNativeAdManager;->getState()Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/XNativeAdManager;->getState()Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    move-result-object v0

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->UNKNOWN:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-ne v0, v1, :cond_1

    .line 64
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/XNativeAdManager;->onCreate()V

    .line 66
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/youdo/XNativeAdManager;->setContentPath(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youdo/XNativeAdManager;->setApplicationContext(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youdo/XNativeAdManager;->setScreenDensity(I)V

    .line 69
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/youdo/XNativeAdManager;->setScreenSize(II)V

    .line 71
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/youdo/XNativeAdManager;->setOpenUDID(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/youdo/XNativeAdManager;->setRST(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/youdo/XNativeAdManager;->setAppVersion(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/youdo/XNativeAdManager;->setPID(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p9}, Lcom/youdo/XNativeAdManager;->setSite(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    const-string v1, "http://mf.atm.youku.com/mf"

    invoke-virtual {v0, v1}, Lcom/youdo/XNativeAdManager;->setPrerollMockAdServer(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    const-string v1, "http://mp.atm.youku.com/mp"

    invoke-virtual {v0, v1}, Lcom/youdo/XNativeAdManager;->setPauserollMockAdServer(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    const-string v1, "http://mi.atm.youku.com/mi"

    invoke-virtual {v0, v1}, Lcom/youdo/XNativeAdManager;->setDisplayMockAdServer(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/XNativeAdManager;->removeAllListeners()V

    .line 82
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    const-string v1, "NATIVE_AD_SERVER_START_SUCCESS"

    invoke-virtual {v0, v1, p10}, Lcom/youdo/XNativeAdManager;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 83
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    const-string v1, "NATIVE_AD_SERVER_START_FAILED"

    invoke-virtual {v0, v1, p10}, Lcom/youdo/XNativeAdManager;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 84
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/XNativeAdManager;->startNativeAdServer()V

    .line 85
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v1, "AdSDK -----> startNativeAdServer!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/ad/OfflineAdSDK;->isInitAdSDK:Z

    goto/16 :goto_0
.end method
