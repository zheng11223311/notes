.class Lcom/tudou/service/attention/AttentionManagerImpl$17;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->deleteLocalAttention(Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$DeleteCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$DeleteCallBack;

.field final synthetic val$uids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$DeleteCallBack;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$17;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$17;->val$uids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$17;->val$callback:Lcom/tudou/service/attention/IAttention$DeleteCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 895
    const/4 v0, 0x0

    .line 897
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$17;->val$uids:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->deleteAttention(Ljava/util/ArrayList;)Z

    move-result v0

    .line 899
    if-eqz v0, :cond_0

    .line 900
    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$17;->val$callback:Lcom/tudou/service/attention/IAttention$DeleteCallBack;

    invoke-virtual {v1}, Lcom/tudou/service/attention/IAttention$DeleteCallBack;->onSucess()V

    .line 904
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$17;->val$callback:Lcom/tudou/service/attention/IAttention$DeleteCallBack;

    invoke-virtual {v1}, Lcom/tudou/service/attention/IAttention$DeleteCallBack;->onFail()V

    goto :goto_0
.end method
