.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;
.super Ljava/lang/Object;
.source "FavouritePlaylistManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->isFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final code:Ljava/lang/String;

.field final synthetic this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

.field final synthetic val$callback:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

.field final synthetic val$itemCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 1

    .prologue
    .line 384
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->val$itemCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->val$callback:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->val$itemCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->val$callback:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 389
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "dataString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, "jsobj":Lorg/json/JSONObject;
    const-string v2, "success"

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->val$callback:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onSucess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v1    # "jsobj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v2

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->val$callback:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
