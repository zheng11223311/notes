.class public interface abstract Lorg/openad/common/net/IXYDHttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# virtual methods
.method public abstract addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
.end method

.method public abstract close()V
.end method

.method public abstract removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lorg/apache/http/client/protocol/RequestAddCookies;",
            ">;)V"
        }
    .end annotation
.end method
