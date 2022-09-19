.class Lcom/tudou/detail/DetailModel$14;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getActorCorrelationAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$l:Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$14;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$14;->val$l:Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$14;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$14;->val$l:Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$14;->val$l:Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$14;->val$key:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;->onActorInfoGetted(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 1807
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1795
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1796
    .local v0, "str":Ljava/lang/String;
    const-class v2, Lcom/youku/vo/SearchUgcDao;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchUgcDao;

    .line 1797
    .local v1, "ugcDao":Lcom/youku/vo/SearchUgcDao;
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$14;->val$l:Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;

    if-eqz v2, :cond_0

    .line 1798
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$14;->val$l:Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;

    iget-object v3, p0, Lcom/tudou/detail/DetailModel$14;->val$key:Ljava/lang/String;

    iget-object v4, v1, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v4, v4, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->items:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;->onActorInfoGetted(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 1800
    :cond_0
    return-void
.end method
