.class Lcom/tudou/service/attention/AttentionManagerImpl$6;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->getAttentionListByAtt(ILcom/tudou/service/attention/IAttention$GetListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetListCallBack;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$6;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$6;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$6;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-virtual {v0, p1}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onFail(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 2
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 247
    new-instance v0, Lcom/youku/vo/Podcast;

    invoke-direct {v0}, Lcom/youku/vo/Podcast;-><init>()V

    .line 248
    .local v0, "podcast":Lcom/youku/vo/Podcast;
    invoke-virtual {p1, v0}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "podcast":Lcom/youku/vo/Podcast;
    check-cast v0, Lcom/youku/vo/Podcast;

    .line 249
    .restart local v0    # "podcast":Lcom/youku/vo/Podcast;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/vo/Podcast;->isFirstAccess:Z

    .line 250
    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$6;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-virtual {v1, v0}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onSucess(Lcom/youku/vo/Podcast;)V

    .line 251
    return-void
.end method
