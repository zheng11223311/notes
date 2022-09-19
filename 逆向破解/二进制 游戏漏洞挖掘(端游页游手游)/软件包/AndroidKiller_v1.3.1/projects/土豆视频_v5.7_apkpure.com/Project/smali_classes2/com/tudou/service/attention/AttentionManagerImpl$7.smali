.class Lcom/tudou/service/attention/AttentionManagerImpl$7;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


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
    .line 261
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$7;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$7;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 265
    :try_start_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getAttentionList()Lcom/youku/vo/Podcast;

    move-result-object v1

    .line 266
    .local v1, "podcast":Lcom/youku/vo/Podcast;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/vo/Podcast;->isFirstAccess:Z

    .line 267
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$7;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-virtual {v2, v1}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onSucess(Lcom/youku/vo/Podcast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "podcast":Lcom/youku/vo/Podcast;
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$7;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
