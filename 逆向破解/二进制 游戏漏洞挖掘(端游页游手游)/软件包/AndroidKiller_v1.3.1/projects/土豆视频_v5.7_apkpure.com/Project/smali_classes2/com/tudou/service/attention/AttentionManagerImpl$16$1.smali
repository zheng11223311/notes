.class Lcom/tudou/service/attention/AttentionManagerImpl$16$1;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/attention/AttentionManagerImpl$16;

.field final synthetic val$fResult:Z


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl$16;Z)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$16;

    iput-boolean p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16$1;->val$fResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16$1;->val$fResult:Z

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$16;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$16;

    iget-object v1, v1, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/attention/IAttention$CallBack;->onSucess(Ljava/lang/String;)V

    .line 880
    :goto_0
    return-void

    .line 877
    :cond_0
    const-string v0, "\u8ba2\u9605\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$16$1;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$16;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$16;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v1, "SQL"

    invoke-virtual {v0, v1}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
