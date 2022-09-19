.class final Lcom/mobisage/android/MobiSageResCluster;
.super Lcom/mobisage/android/MobiSageResMessage;
.source "MobiSageResCluster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageResCluster$1;,
        Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;
    }
.end annotation


# instance fields
.field public messageList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/mobisage/android/MobiSageResMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageResMessage;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageResCluster;->messageList:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    new-instance v0, Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobisage/android/MobiSageResCluster$ResClusterCallback;-><init>(Lcom/mobisage/android/MobiSageResCluster;Lcom/mobisage/android/MobiSageResCluster$1;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageResCluster;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 16
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0}, Lcom/mobisage/android/MobiSageResMessage;->finalize()V

    .line 21
    iget-object v0, p0, Lcom/mobisage/android/MobiSageResCluster;->messageList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageResCluster;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 23
    return-void
.end method
