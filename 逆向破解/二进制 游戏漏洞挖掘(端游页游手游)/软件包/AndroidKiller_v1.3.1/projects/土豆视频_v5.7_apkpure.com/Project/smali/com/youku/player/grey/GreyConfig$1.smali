.class Lcom/youku/player/grey/GreyConfig$1;
.super Ljava/lang/Object;
.source "GreyConfig.java"

# interfaces
.implements Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/grey/GreyConfig;->requestData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/grey/GreyConfig;


# direct methods
.method constructor <init>(Lcom/youku/player/grey/GreyConfig;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/youku/player/grey/GreyConfig$1;->this$0:Lcom/youku/player/grey/GreyConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {}, Lcom/youku/player/grey/GreyConfig;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get data fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/youku/player/grey/GreyConfig$1;->this$0:Lcom/youku/player/grey/GreyConfig;

    invoke-virtual {v0}, Lcom/youku/player/grey/GreyConfig;->destroy()V

    .line 85
    return-void
.end method

.method public onSuccess(Lcom/youku/player/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/player/network/HttpRequestManager;

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lcom/youku/player/grey/GreyConfig;->access$000()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/grey/GreyConfig$1;->this$0:Lcom/youku/player/grey/GreyConfig;

    invoke-static {v3}, Lcom/youku/player/grey/GreyConfig;->access$100(Lcom/youku/player/grey/GreyConfig;)Lcom/youku/player/network/IHttpRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/youku/player/network/IHttpRequest;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/youku/player/grey/GreyConfig$1;->this$0:Lcom/youku/player/grey/GreyConfig;

    invoke-static {v2}, Lcom/youku/player/grey/GreyConfig;->access$100(Lcom/youku/player/grey/GreyConfig;)Lcom/youku/player/network/IHttpRequest;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/network/IHttpRequest;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "jsonStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->setGreyConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "jsonStr":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/youku/player/grey/GreyConfig$1;->this$0:Lcom/youku/player/grey/GreyConfig;

    invoke-virtual {v2}, Lcom/youku/player/grey/GreyConfig;->destroy()V

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    invoke-static {}, Lcom/youku/player/grey/GreyConfig;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
