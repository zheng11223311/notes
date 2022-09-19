.class public interface abstract Lcom/youku/laifeng/sdk/download/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# virtual methods
.method public abstract getBackOffMultiplier()F
.end method

.method public abstract getCurrentRetryCount()I
.end method

.method public abstract getCurrentTimeout()I
.end method

.method public abstract retry()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/laifeng/sdk/download/RetryError;
        }
    .end annotation
.end method
