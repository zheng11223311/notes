.class Lcom/tudou/service/attention/AttentionManagerImpl$4$1;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/attention/AttentionManagerImpl$4;

.field final synthetic val$fResu:Z


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl$4;Z)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$4;

    iput-boolean p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4$1;->val$fResu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4$1;->val$fResu:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$4;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$4;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$4;

    iget-object v1, v1, Lcom/tudou/service/attention/AttentionManagerImpl$4;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/attention/IAttention$CallBack;->onSucess(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$4$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$4;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$4;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v1, "SQL"

    invoke-virtual {v0, v1}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
