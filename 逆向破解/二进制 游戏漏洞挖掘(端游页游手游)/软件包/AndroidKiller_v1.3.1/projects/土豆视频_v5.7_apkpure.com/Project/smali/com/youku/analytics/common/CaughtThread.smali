.class public abstract Lcom/youku/analytics/common/CaughtThread;
.super Ljava/lang/Object;
.source "CaughtThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract caughtRun()V
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/analytics/common/CaughtThread;->caughtRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Thread Exception"

    invoke-static {v1}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
