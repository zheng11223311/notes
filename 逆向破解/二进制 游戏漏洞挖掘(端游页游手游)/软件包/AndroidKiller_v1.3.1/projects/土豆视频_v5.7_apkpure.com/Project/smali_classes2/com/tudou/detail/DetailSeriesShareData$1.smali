.class final Lcom/tudou/detail/DetailSeriesShareData$1;
.super Ljava/lang/Object;
.source "DetailSeriesShareData.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailSeriesShareData;->fetchData(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$albumid:Ljava/lang/String;

.field final synthetic val$desc:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tudou/detail/DetailSeriesShareData$1;->val$albumid:Ljava/lang/String;

    iput p2, p0, Lcom/tudou/detail/DetailSeriesShareData$1;->val$desc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Lcom/tudou/detail/DetailSeriesShareData;->access$400(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lcom/tudou/detail/DetailSeriesShareData;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {}, Lcom/tudou/detail/DetailSeriesShareData;->access$100()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/detail/DetailSeriesShareData$1;->val$albumid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Lcom/youku/http/ParseJson;

    invoke-direct {v1, v2}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "parsejson":Lcom/youku/http/ParseJson;
    iget v3, p0, Lcom/tudou/detail/DetailSeriesShareData$1;->val$desc:I

    invoke-virtual {v1, v3}, Lcom/youku/http/ParseJson;->parseVideoSeris_ForV3_3(I)Lcom/youku/vo/DetailSeris;

    move-result-object v3

    invoke-static {v3}, Lcom/tudou/detail/DetailSeriesShareData;->access$202(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    .line 141
    invoke-static {}, Lcom/tudou/detail/DetailSeriesShareData;->access$300()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v1    # "parsejson":Lcom/youku/http/ParseJson;
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v3}, Lcom/tudou/detail/DetailSeriesShareData;->access$400(Ljava/lang/String;)V

    goto :goto_0
.end method
