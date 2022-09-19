.class public interface abstract Lcom/sea_monster/common/RequestProcess;
.super Ljava/lang/Object;
.source "RequestProcess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onFailure(Lcom/sea_monster/exception/BaseException;)V
.end method
