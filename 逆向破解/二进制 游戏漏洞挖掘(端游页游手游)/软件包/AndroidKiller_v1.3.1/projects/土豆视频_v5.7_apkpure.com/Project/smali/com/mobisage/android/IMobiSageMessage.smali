.class public interface abstract Lcom/mobisage/android/IMobiSageMessage;
.super Ljava/lang/Object;
.source "IMobiSageMessage.java"


# virtual methods
.method public abstract createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract createMessageRunnable()Ljava/lang/Runnable;
.end method
