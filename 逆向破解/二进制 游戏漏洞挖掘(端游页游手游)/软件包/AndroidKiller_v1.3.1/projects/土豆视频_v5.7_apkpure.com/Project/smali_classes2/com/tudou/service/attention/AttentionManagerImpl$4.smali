.class Lcom/tudou/service/attention/AttentionManagerImpl$4;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V
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
    .line 143
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4;->val$uid:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/data/SQLiteManagerTudou;->deleteAttention(Ljava/lang/String;)Z

    move-result v1

    .line 146
    .local v1, "resu":Z
    move v0, v1

    .line 147
    .local v0, "fResu":Z
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    invoke-static {v2}, Lcom/tudou/service/attention/AttentionManagerImpl;->access$000(Lcom/tudou/service/attention/AttentionManagerImpl;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$4$1;

    invoke-direct {v3, p0, v0}, Lcom/tudou/service/attention/AttentionManagerImpl$4$1;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl$4;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
