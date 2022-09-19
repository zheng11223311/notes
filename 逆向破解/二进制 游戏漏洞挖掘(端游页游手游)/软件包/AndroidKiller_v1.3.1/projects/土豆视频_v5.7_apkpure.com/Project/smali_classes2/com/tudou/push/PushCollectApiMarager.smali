.class public Lcom/tudou/push/PushCollectApiMarager;
.super Ljava/lang/Object;
.source "PushCollectApiMarager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "tudou_push"

.field private static httpRequest:Lcom/youku/network/HttpRequestManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static checkCollectApiState(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string v2, "first_install"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    const-string v2, "first_install"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 104
    const-string v2, "video_notifi_temp"

    invoke-static {p0}, Lcom/youku/pushsdk/control/PushManager;->getPushSwitch(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    invoke-static {p0}, Lcom/tudou/push/PushCollectApiMarager;->open(Landroid/content/Context;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {p0}, Lcom/youku/pushsdk/control/PushManager;->getPushSwitch(Landroid/content/Context;)Z

    move-result v0

    .line 110
    .local v0, "pushSwitch":Z
    const-string v2, "video_notifi_temp"

    invoke-static {p0}, Lcom/youku/pushsdk/control/PushManager;->getPushSwitch(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 111
    .local v1, "tempPushSwitch":Z
    if-eq v0, v1, :cond_0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-static {p0}, Lcom/tudou/push/PushCollectApiMarager;->open(Landroid/content/Context;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {p0}, Lcom/tudou/push/PushCollectApiMarager;->close(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static close(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const-string v0, "tudou_push"

    const-string v1, "close PushService"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    invoke-virtual {v0}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    invoke-virtual {v0}, Lcom/youku/network/HttpRequestManager;->cancel()V

    .line 80
    :cond_0
    new-instance v0, Lcom/youku/network/HttpRequestManager;

    invoke-direct {v0}, Lcom/youku/network/HttpRequestManager;-><init>()V

    sput-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    .line 81
    sget-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    new-instance v1, Lcom/youku/network/HttpIntent;

    const/4 v2, 0x4

    const-string v3, "DISABLED"

    invoke-static {v2, v3}, Lcom/youku/http/URLContainer;->getPushCollectionURL(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v1, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tudou/push/PushCollectApiMarager$2;

    invoke-direct {v2, p0}, Lcom/tudou/push/PushCollectApiMarager$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/network/HttpRequestManager;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 94
    return-void
.end method

.method public static open(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "tudou_push"

    const-string v1, "open PushService"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    invoke-virtual {v0}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    invoke-virtual {v0}, Lcom/youku/network/HttpRequestManager;->cancel()V

    .line 56
    :cond_0
    new-instance v0, Lcom/youku/network/HttpRequestManager;

    invoke-direct {v0}, Lcom/youku/network/HttpRequestManager;-><init>()V

    sput-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    .line 57
    sget-object v0, Lcom/tudou/push/PushCollectApiMarager;->httpRequest:Lcom/youku/network/HttpRequestManager;

    new-instance v1, Lcom/youku/network/HttpIntent;

    const/4 v2, 0x4

    const-string v3, "ENABLED"

    invoke-static {v2, v3}, Lcom/youku/http/URLContainer;->getPushCollectionURL(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v1, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tudou/push/PushCollectApiMarager$1;

    invoke-direct {v2, p0}, Lcom/tudou/push/PushCollectApiMarager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/network/HttpRequestManager;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 70
    return-void
.end method
