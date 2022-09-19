.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;
.super Ljava/lang/Object;
.source "FavouritePlaylistManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->addToNetFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

.field final synthetic val$itemCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iput-object p3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$itemCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    const-string v4, "\u5176\u4ed6\u9519\u8bef"

    invoke-virtual {v3, v4}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    .line 138
    const-string v3, "\u4eb2\uff0c\u7f51\u7edc\u72b6\u6001\u4e0d\u7ed9\u529b\u554a"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    const v3, 0x7f0d02a3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v3, "\u7f51\u7edc\u6ca1\u6709\u8fde\u63a5\u4e0a\u54e6"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 145
    :cond_2
    const v2, 0x7f0d01e4

    .line 146
    .local v2, "stringId":I
    new-instance v1, Lcom/youku/http/ParseJson;

    invoke-direct {v1, p1}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "favaddJson":Lcom/youku/http/ParseJson;
    invoke-virtual {v1}, Lcom/youku/http/ParseJson;->parseResponseFailCode()I

    move-result v0

    .line 148
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_1
    const v3, 0x7f0d01e4

    if-eq v2, v3, :cond_0

    .line 170
    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 150
    :pswitch_0
    const v2, 0x7f0d01e1

    .line 151
    goto :goto_1

    .line 153
    :pswitch_1
    const v2, 0x7f0d01e2

    .line 154
    goto :goto_1

    .line 156
    :pswitch_2
    const v2, 0x7f0d01e3

    .line 157
    goto :goto_1

    .line 159
    :pswitch_3
    const v2, 0x7f0d01e4

    .line 160
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v4, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onSucess(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :pswitch_4
    const v2, 0x7f0d01e5

    .line 164
    goto :goto_1

    .line 166
    :pswitch_5
    const v2, 0x7f0d01e6

    goto :goto_1

    .line 148
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "dataString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "jsobj":Lorg/json/JSONObject;
    const-string v3, "0"

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 126
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v4, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onSucess(Ljava/lang/String;)V

    .line 133
    .end local v2    # "jsobj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 128
    .restart local v2    # "jsobj":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    const-string v4, "\u5176\u4ed6\u9519\u8bef"

    invoke-virtual {v3, v4}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v2    # "jsobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v4, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
