.class Lcom/youku/service/login/LoginManagerImpl$10;
.super Ljava/lang/Object;
.source "LoginManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/service/login/LoginManagerImpl;->autoLogin(Lcom/youku/service/login/ILogin$ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/service/login/LoginManagerImpl;

.field final synthetic val$call:Lcom/youku/service/login/ILogin$ICallBack;


# direct methods
.method constructor <init>(Lcom/youku/service/login/LoginManagerImpl;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/youku/service/login/LoginManagerImpl$10;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl$10;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 617
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto login failed======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl$10;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    const-string v1, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    .line 619
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 596
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "str":Ljava/lang/String;
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto login sucess======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-static {v2}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 600
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 601
    const-string v3, "is_login"

    invoke-static {v1, v3}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 603
    .local v0, "is_login":Z
    if-eqz v0, :cond_0

    .line 604
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$10;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v3}, Lcom/youku/service/login/ILogin$ICallBack;->onSuccess()V

    .line 613
    .end local v0    # "is_login":Z
    :goto_0
    return-void

    .line 606
    .restart local v0    # "is_login":Z
    :cond_0
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v3

    invoke-interface {v3}, Lcom/youku/service/login/ILogin;->logout()V

    .line 607
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$10;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    const-string v4, "\u7528\u6237\u4e0d\u80fd\u767b\u5f55"

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 610
    .end local v0    # "is_login":Z
    :cond_1
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$10;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    const-string v4, "\u8fd4\u56de\u4e3a\u7a7a"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0
.end method
