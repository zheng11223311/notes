.class Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;
.super Ljava/lang/Object;
.source "MobiSageResCluster.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageResCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResClusterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageResCluster;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageResCluster;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;->this$0:Lcom/mobisage/android/MobiSageResCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageResCluster;Lcom/mobisage/android/MobiSageResCluster$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageResCluster;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageResCluster$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;-><init>(Lcom/mobisage/android/MobiSageResCluster;)V

    return-void
.end method


# virtual methods
.method public onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 34
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;->this$0:Lcom/mobisage/android/MobiSageResCluster;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageResCluster;->messageList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;->this$0:Lcom/mobisage/android/MobiSageResCluster;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageResCluster;->messageList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageResMessage;

    .line 36
    .local v0, "message":Lcom/mobisage/android/MobiSageResMessage;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;->this$0:Lcom/mobisage/android/MobiSageResCluster;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageResCluster;->result:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    .line 37
    iget-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    invoke-interface {v1, v0}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_0

    .line 40
    .end local v0    # "message":Lcom/mobisage/android/MobiSageResMessage;
    :cond_1
    return-void
.end method
