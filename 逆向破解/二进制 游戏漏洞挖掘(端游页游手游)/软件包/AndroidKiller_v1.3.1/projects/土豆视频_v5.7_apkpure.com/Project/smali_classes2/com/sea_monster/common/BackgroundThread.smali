.class public abstract Lcom/sea_monster/common/BackgroundThread;
.super Ljava/lang/Object;
.source "BackgroundThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected isInterrupted()Z
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 11
    invoke-virtual {p0}, Lcom/sea_monster/common/BackgroundThread;->runImpl()V

    .line 12
    return-void
.end method

.method public abstract runImpl()V
.end method
