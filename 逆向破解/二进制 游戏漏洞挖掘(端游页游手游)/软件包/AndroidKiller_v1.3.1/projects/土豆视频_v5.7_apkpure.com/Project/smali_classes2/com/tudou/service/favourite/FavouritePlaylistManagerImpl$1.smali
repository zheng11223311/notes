.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;
.super Ljava/lang/Object;
.source "FavouritePlaylistManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->addToFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

.field final synthetic val$playlistCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$playlistCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "str":Ljava/lang/String;
    const-class v7, Lcom/youku/vo/PlaylistInfo;

    invoke-static {v5, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/PlaylistInfo;

    .line 57
    .local v4, "result":Lcom/youku/vo/PlaylistInfo;
    iget v7, v4, Lcom/youku/vo/PlaylistInfo;->error:I

    if-nez v7, :cond_0

    .line 59
    iget-object v7, v4, Lcom/youku/vo/PlaylistInfo;->data:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/PlaylistInfo$PlaylistData;

    .line 61
    .local v0, "data":Lcom/youku/vo/PlaylistInfo$PlaylistData;
    iget-object v7, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$playlistCode:Ljava/lang/String;

    invoke-static {v7}, Lcom/youku/http/TudouURLContainer;->getVideoListUGCURLV4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "url":Ljava/lang/String;
    const-class v7, Lcom/youku/network/IHttpRequest;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 64
    .local v3, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/youku/network/HttpIntent;

    const-string v7, "GET"

    const/4 v8, 0x1

    invoke-direct {v2, v6, v7, v8}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    .local v2, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v7, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;

    invoke-direct {v7, p0, v0}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;Lcom/youku/vo/PlaylistInfo$PlaylistData;)V

    invoke-interface {v3, v2, v7}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 103
    .end local v0    # "data":Lcom/youku/vo/PlaylistInfo$PlaylistData;
    .end local v2    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v3    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v4    # "result":Lcom/youku/vo/PlaylistInfo;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 98
    .restart local v4    # "result":Lcom/youku/vo/PlaylistInfo;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v8, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$playlistCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v4    # "result":Lcom/youku/vo/PlaylistInfo;
    .end local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v8, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$playlistCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
