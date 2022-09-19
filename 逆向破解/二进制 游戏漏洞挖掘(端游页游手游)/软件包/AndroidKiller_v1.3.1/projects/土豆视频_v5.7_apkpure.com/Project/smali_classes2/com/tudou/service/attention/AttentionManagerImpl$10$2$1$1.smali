.class Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1$1;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1;

.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1$1;->this$3:Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1$1;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 481
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1$1;->this$3:Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1;->this$2:Lcom/tudou/service/attention/AttentionManagerImpl$10$2;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$10;

    iget-object v0, v0, Lcom/tudou/service/attention/AttentionManagerImpl$10;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iget-object v1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1$1;->val$ids:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/tudou/service/attention/AttentionManagerImpl;->access$100(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/util/ArrayList;)V

    .line 482
    return-void
.end method
