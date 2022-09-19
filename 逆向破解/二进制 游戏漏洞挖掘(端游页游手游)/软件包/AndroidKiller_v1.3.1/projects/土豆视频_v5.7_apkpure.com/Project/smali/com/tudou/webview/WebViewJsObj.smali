.class public Lcom/tudou/webview/WebViewJsObj;
.super Ljava/lang/Object;
.source "WebViewJsObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;
    }
.end annotation


# static fields
.field private static doSomethingListener:Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;

.field private static url:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "doSomethingListener"    # Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tudou/webview/WebViewJsObj;->activity:Landroid/app/Activity;

    .line 26
    sput-object p2, Lcom/tudou/webview/WebViewJsObj;->doSomethingListener:Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;

    .line 27
    return-void
.end method

.method public static goUrlAfterLogin()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "WebViewJsObj"

    const-string v1, "goUrlAfterLogin"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/tudou/webview/WebViewJsObj;->doSomethingListener:Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/tudou/webview/WebViewJsObj;->doSomethingListener:Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;

    sget-object v1, Lcom/tudou/webview/WebViewJsObj;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;->goUrlAfterLogin(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 77
    :try_start_0
    const-class v2, Lcom/youku/vo/AdJson;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/AdJson;

    .line 80
    .local v0, "adJson":Lcom/youku/vo/AdJson;
    sget-object v2, Lcom/tudou/webview/WebViewJsObj;->doSomethingListener:Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;

    if-eqz v2, :cond_0

    .line 81
    sget-object v2, Lcom/tudou/webview/WebViewJsObj;->doSomethingListener:Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;

    const-string v3, "home.ad.skip"

    invoke-interface {v2, v3}, Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;->goUrlAfterLogin(Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/tudou/webview/WebViewJsObj;->activity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/youku/vo/AdJson;->urlStr:Ljava/lang/String;

    iget-object v2, v0, Lcom/youku/vo/AdJson;->browser_type:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "adJson":Lcom/youku/vo/AdJson;
    :goto_1
    return-void

    .line 82
    .restart local v0    # "adJson":Lcom/youku/vo/AdJson;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 83
    .end local v0    # "adJson":Lcom/youku/vo/AdJson;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadUrl exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public openAppLogin(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 34
    sput-object p1, Lcom/tudou/webview/WebViewJsObj;->url:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 44
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/webview/WebViewJsObj;->activity:Landroid/app/Activity;

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    const-string v1, "TAG"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/tudou/webview/WebViewJsObj;->activity:Landroid/app/Activity;

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    .line 43
    const-string v1, "WebViewJsObj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
