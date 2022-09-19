.class public interface abstract Lcom/youku/network/IHttpRequest;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract downloadUri(Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract getDataString()Ljava/lang/String;
.end method

.method public abstract getRequestTag()Ljava/lang/String;
.end method

.method public abstract isCancel()Z
.end method

.method public abstract parse(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
.end method
