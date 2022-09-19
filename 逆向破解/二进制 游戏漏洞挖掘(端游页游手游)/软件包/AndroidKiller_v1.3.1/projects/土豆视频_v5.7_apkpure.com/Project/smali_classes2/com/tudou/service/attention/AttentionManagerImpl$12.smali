.class Lcom/tudou/service/attention/AttentionManagerImpl$12;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->isAttention(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

.field final synthetic val$uids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->val$uids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    iput-object p4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 589
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->val$uids:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/youku/data/SQLiteManagerTudou;->isAttention(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 591
    .local v1, "resu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    new-instance v0, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;

    invoke-direct {v0, p0, v1}, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl$12;Ljava/util/ArrayList;)V

    .line 602
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->val$activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 608
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
