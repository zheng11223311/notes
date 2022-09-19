.class Lcom/tudou/service/attention/AttentionManagerImpl$9;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


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
    .line 303
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$9;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$9;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 307
    :try_start_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getAttentionList()Lcom/youku/vo/Podcast;

    move-result-object v1

    .line 308
    .local v1, "podcast":Lcom/youku/vo/Podcast;
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$9;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-virtual {v2, v1}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onSucess(Lcom/youku/vo/Podcast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v1    # "podcast":Lcom/youku/vo/Podcast;
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$9;->val$callback:Lcom/tudou/service/attention/IAttention$GetListCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
