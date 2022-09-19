.class public abstract Lcom/tudou/service/download/OnPreparedCallback;
.super Ljava/lang/Object;
.source "OnPreparedCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.method public onOnePrepared(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 22
    return-void
.end method

.method public abstract onfinish(Z)V
.end method
