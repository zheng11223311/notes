.class public interface abstract Lcom/sea_monster/network/HttpHandler;
.super Ljava/lang/Object;
.source "HttpHandler.java"


# virtual methods
.method public abstract cancelRequest()V
.end method

.method public abstract cancelRequest(Lcom/sea_monster/network/AbstractHttpRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract executeRequest(Lcom/sea_monster/network/AbstractHttpRequest;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;)I"
        }
    .end annotation
.end method

.method public abstract executeRequestSync(Lcom/sea_monster/network/AbstractHttpRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sea_monster/exception/BaseException;
        }
    .end annotation
.end method
