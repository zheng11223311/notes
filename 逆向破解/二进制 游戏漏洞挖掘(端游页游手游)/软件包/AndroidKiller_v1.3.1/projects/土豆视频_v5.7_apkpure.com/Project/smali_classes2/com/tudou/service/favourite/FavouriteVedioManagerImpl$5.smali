.class Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$5;
.super Ljava/lang/Object;
.source "FavouriteVedioManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->uploadLocalFavrite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$5;->this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v0, "\u6536\u85cf\u9875\u4e91\u8bb0\u5f55\u540c\u6b65\u5931\u8d25"

    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e91\u540c\u6b65"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v5, 0x0

    .line 202
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "dataString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "jsobj":Lorg/json/JSONObject;
    const-string v3, "0"

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$5;->this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

    invoke-virtual {v3}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->deleteLocalFavrite()V

    .line 215
    .end local v2    # "jsobj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 209
    .restart local v2    # "jsobj":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$5;->onFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v2    # "jsobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v5}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$5;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
