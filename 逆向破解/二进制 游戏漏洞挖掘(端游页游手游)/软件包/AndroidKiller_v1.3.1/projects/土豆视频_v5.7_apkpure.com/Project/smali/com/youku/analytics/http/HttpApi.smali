.class public interface abstract Lcom/youku/analytics/http/HttpApi;
.super Ljava/lang/Object;
.source "HttpApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/analytics/http/HttpApi$HttpReulst;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x2710

.field public static final RETRY_COUNT:I = 0x1

.field public static final SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final SO_TIMEOUT:I = 0xea60


# virtual methods
.method public abstract addHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract doHttpGet(Ljava/lang/String;Lcom/youku/analytics/http/HttpApi$HttpReulst;)V
.end method

.method public abstract doHttpPost(Landroid/content/Context;Ljava/lang/String;Lcom/youku/analytics/http/HttpApi$HttpReulst;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/youku/analytics/http/HttpApi$HttpReulst;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract doPostFile(Ljava/lang/String;Ljava/io/File;Lcom/youku/analytics/http/HttpApi$HttpReulst;)V
.end method

.method public abstract getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
.end method
