.class public interface abstract Lcom/sea_monster/network/HttpRequestProcess;
.super Ljava/lang/Object;
.source "HttpRequestProcess.java"

# interfaces
.implements Lcom/sea_monster/common/RequestProcess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sea_monster/common/RequestProcess",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract processReadyRequest(Lorg/apache/http/HttpRequest;)V
.end method
