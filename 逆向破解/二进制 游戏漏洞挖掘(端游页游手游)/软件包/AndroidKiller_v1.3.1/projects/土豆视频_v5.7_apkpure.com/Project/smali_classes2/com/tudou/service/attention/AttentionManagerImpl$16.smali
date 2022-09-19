.class Lcom/tudou/service/attention/AttentionManagerImpl$16;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

.field final synthetic val$isVuser:Z

.field final synthetic val$lastItemTitle:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$uid:Ljava/lang/String;

.field final synthetic val$uname:Ljava/lang/String;

.field final synthetic val$upic:Ljava/lang/String;

.field final synthetic val$uploadcount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$upic:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$uploadcount:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$isVuser:Z

    iput-object p6, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$uname:Ljava/lang/String;

    iput p7, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$type:I

    iput-object p8, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$lastItemTitle:Ljava/lang/String;

    iput-object p9, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 865
    const/4 v8, 0x0

    .line 866
    .local v8, "resu":Z
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$upic:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$uploadcount:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$isVuser:Z

    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$uname:Ljava/lang/String;

    iget v5, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$type:I

    iget-object v6, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$lastItemTitle:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/youku/data/SQLiteManagerTudou;->addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Z

    move-result v8

    .line 870
    move v7, v8

    .line 871
    .local v7, "fResult":Z
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    invoke-static {v0}, Lcom/tudou/service/attention/AttentionManagerImpl;->access$000(Lcom/tudou/service/attention/AttentionManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tudou/service/attention/AttentionManagerImpl$16$1;

    invoke-direct {v1, p0, v7}, Lcom/tudou/service/attention/AttentionManagerImpl$16$1;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl$16;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 882
    return-void
.end method
