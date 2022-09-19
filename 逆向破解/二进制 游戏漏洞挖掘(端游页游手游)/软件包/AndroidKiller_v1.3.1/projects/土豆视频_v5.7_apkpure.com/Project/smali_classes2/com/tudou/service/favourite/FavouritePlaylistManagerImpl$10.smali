.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$10;
.super Ljava/lang/Object;
.source "FavouritePlaylistManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$10;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$10;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$10;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-virtual {v0, p1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 2
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 442
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 443
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$10;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onSucess(Ljava/lang/String;)V

    .line 444
    return-void
.end method
