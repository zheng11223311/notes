.class public interface abstract Lcom/baseproject/network/IHttpRequest;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getDataString()Ljava/lang/String;
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

.method public abstract request(Lcom/baseproject/network/HttpIntent;Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;)V
.end method

.method public abstract setCookie(Ljava/lang/String;)V
.end method
