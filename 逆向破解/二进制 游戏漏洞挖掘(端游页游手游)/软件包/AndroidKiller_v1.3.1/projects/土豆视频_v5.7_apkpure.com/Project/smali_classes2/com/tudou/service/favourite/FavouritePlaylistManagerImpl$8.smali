.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$8;
.super Ljava/lang/Object;
.source "FavouritePlaylistManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$8;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$8;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$8;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;

    invoke-virtual {v0, p1}, Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;->onFail(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 347
    new-instance v0, Lcom/youku/vo/FavouritePlaylistResult;

    invoke-direct {v0}, Lcom/youku/vo/FavouritePlaylistResult;-><init>()V

    .line 348
    .local v0, "result":Lcom/youku/vo/FavouritePlaylistResult;
    invoke-virtual {p1, v0}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/youku/vo/FavouritePlaylistResult;
    check-cast v0, Lcom/youku/vo/FavouritePlaylistResult;

    .line 349
    .restart local v0    # "result":Lcom/youku/vo/FavouritePlaylistResult;
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$8;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;->onSucess(Lcom/youku/vo/FavouritePlaylistResult;I)V

    .line 350
    return-void
.end method
