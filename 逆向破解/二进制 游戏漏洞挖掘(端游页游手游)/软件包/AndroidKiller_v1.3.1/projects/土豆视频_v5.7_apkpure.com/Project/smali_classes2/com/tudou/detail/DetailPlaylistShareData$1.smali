.class final Lcom/tudou/detail/DetailPlaylistShareData$1;
.super Ljava/lang/Object;
.source "DetailPlaylistShareData.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailPlaylistShareData;->fetchData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Lcom/tudou/detail/DetailPlaylistShareData;->access$300(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Lcom/youku/http/ParseJson;

    invoke-direct {v0, v1}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "parsejson":Lcom/youku/http/ParseJson;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/youku/http/ParseJson;->parseVideoSeris_ForV3_3(I)Lcom/youku/vo/DetailSeris;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/detail/DetailPlaylistShareData;->access$102(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    .line 131
    const-string v2, "test2"

    const-string v3, "DetailSeriesShareData fetchData notifyDataSuccess"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->access$200()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v0    # "parsejson":Lcom/youku/http/ParseJson;
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
