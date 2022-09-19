.class Lcom/tudou/service/attention/AttentionManagerImpl$12$1;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/attention/AttentionManagerImpl$12;

.field final synthetic val$resu:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl$12;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$12;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;->val$resu:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;->val$resu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;->val$resu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$12;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;->val$resu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tudou/service/attention/IAttention$GetCallBack;->onSucess(Ljava/util/ArrayList;)V

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$12$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$12;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$12;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/service/attention/IAttention$GetCallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
