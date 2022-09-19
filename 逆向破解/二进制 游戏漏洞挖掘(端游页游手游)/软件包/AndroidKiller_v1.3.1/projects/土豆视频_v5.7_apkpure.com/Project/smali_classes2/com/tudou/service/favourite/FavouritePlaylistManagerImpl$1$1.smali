.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;
.super Ljava/lang/Object;
.source "FavouritePlaylistManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

.field final synthetic val$data:Lcom/youku/vo/PlaylistInfo$PlaylistData;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;Lcom/youku/vo/PlaylistInfo$PlaylistData;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->val$data:Lcom/youku/vo/PlaylistInfo$PlaylistData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iget-object v0, v0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iget-object v1, v1, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 13
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "str":Ljava/lang/String;
    const-class v0, Lcom/youku/vo/PlaylistLastItem;

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/vo/PlaylistLastItem;

    .line 72
    .local v11, "result":Lcom/youku/vo/PlaylistLastItem;
    if-eqz v11, :cond_0

    iget-object v0, v11, Lcom/youku/vo/PlaylistLastItem;->status:Ljava/lang/String;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/youku/vo/PlaylistLastItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iget-object v0, v0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->val$data:Lcom/youku/vo/PlaylistInfo$PlaylistData;

    iget-object v1, v1, Lcom/youku/vo/PlaylistInfo$PlaylistData;->code:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->val$data:Lcom/youku/vo/PlaylistInfo$PlaylistData;

    iget-object v2, v2, Lcom/youku/vo/PlaylistInfo$PlaylistData;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->val$data:Lcom/youku/vo/PlaylistInfo$PlaylistData;

    iget-object v3, v3, Lcom/youku/vo/PlaylistInfo$PlaylistData;->itemsCount:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->val$data:Lcom/youku/vo/PlaylistInfo$PlaylistData;

    iget-object v4, v4, Lcom/youku/vo/PlaylistInfo$PlaylistData;->coverPicUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->val$data:Lcom/youku/vo/PlaylistInfo$PlaylistData;

    iget-object v5, v5, Lcom/youku/vo/PlaylistInfo$PlaylistData;->playTimes:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->val$data:Lcom/youku/vo/PlaylistInfo$PlaylistData;

    iget-object v6, v6, Lcom/youku/vo/PlaylistInfo$PlaylistData;->lastModifiedTime:Ljava/lang/String;

    iget-object v7, v11, Lcom/youku/vo/PlaylistLastItem;->items:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/PlaylistLastItem$Item;

    iget-object v7, v7, Lcom/youku/vo/PlaylistLastItem$Item;->iid:Ljava/lang/String;

    iget-object v8, v11, Lcom/youku/vo/PlaylistLastItem;->items:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/vo/PlaylistLastItem$Item;

    iget-object v8, v8, Lcom/youku/vo/PlaylistLastItem$Item;->title:Ljava/lang/String;

    iget-object v9, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iget-object v9, v9, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-static/range {v0 .. v9}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->access$000(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    .line 90
    .end local v11    # "result":Lcom/youku/vo/PlaylistLastItem;
    .end local v12    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 84
    .restart local v11    # "result":Lcom/youku/vo/PlaylistLastItem;
    .restart local v12    # "str":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iget-object v0, v0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iget-object v1, v1, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v11    # "result":Lcom/youku/vo/PlaylistLastItem;
    .end local v12    # "str":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 88
    .local v10, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iget-object v0, v0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1$1;->this$1:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    iget-object v1, v1, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;->val$playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
