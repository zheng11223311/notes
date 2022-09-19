.class Lcom/tudou/service/attention/AttentionManagerImpl$8;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->getAttentionList(ILcom/tudou/service/attention/IAttention$GetListCallBack;)V
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
    .line 289
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$8;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$8;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$8;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-virtual {v0, p1}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onFail(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 2
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 292
    new-instance v0, Lcom/youku/vo/Podcast;

    invoke-direct {v0}, Lcom/youku/vo/Podcast;-><init>()V

    .line 293
    .local v0, "podcast":Lcom/youku/vo/Podcast;
    invoke-virtual {p1, v0}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "podcast":Lcom/youku/vo/Podcast;
    check-cast v0, Lcom/youku/vo/Podcast;

    .line 294
    .restart local v0    # "podcast":Lcom/youku/vo/Podcast;
    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$8;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-virtual {v1, v0}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onSucess(Lcom/youku/vo/Podcast;)V

    .line 295
    return-void
.end method
