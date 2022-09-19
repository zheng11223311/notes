.class public abstract Lcom/mobisage/android/MobiSageRunnable;
.super Ljava/lang/Object;
.source "MobiSageRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected client:Lorg/apache/http/client/HttpClient;

.field protected msg:Lcom/mobisage/android/MobiSageMessage;


# direct methods
.method protected constructor <init>(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mobisage/android/MobiSageRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    .line 16
    return-void
.end method


# virtual methods
.method public destoryRunnable()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mobisage/android/MobiSageRunnable;->client:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/mobisage/android/MobiSageRunnable;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 21
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    .line 32
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageNetModule;->onMobisageRunnableFinish(Lcom/mobisage/android/MobiSageMessage;)V

    .line 26
    return-void
.end method
