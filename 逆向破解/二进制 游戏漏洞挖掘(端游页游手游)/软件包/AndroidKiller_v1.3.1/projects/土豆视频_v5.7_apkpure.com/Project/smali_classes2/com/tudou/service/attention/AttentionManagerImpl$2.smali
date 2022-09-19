.class Lcom/tudou/service/attention/AttentionManagerImpl$2;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->isAttention(Ljava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$2;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$2;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$2;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$2;->val$uid:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->isAttention(Ljava/lang/String;)Z

    move-result v0

    .line 90
    .local v0, "resu":Z
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$2;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$2;->val$uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/service/attention/IAttention$CallBack;->onSucess(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$2;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$2;->val$uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
