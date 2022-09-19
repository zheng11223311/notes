.class Lcom/taobao/update/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/update/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/update/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/taobao/update/AndroidHttpClient;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/taobao/update/AndroidHttpClient$CurlLogger;->this$0:Lcom/taobao/update/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/update/AndroidHttpClient;Lcom/taobao/update/AndroidHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/update/AndroidHttpClient;
    .param p2, "x1"    # Lcom/taobao/update/AndroidHttpClient$1;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/taobao/update/AndroidHttpClient$CurlLogger;-><init>(Lcom/taobao/update/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v1, p0, Lcom/taobao/update/AndroidHttpClient$CurlLogger;->this$0:Lcom/taobao/update/AndroidHttpClient;

    invoke-static {v1}, Lcom/taobao/update/AndroidHttpClient;->access$300(Lcom/taobao/update/AndroidHttpClient;)Lcom/taobao/update/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 389
    .local v0, "configuration":Lcom/taobao/update/AndroidHttpClient$LoggingConfiguration;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/taobao/update/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/taobao/update/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 393
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/taobao/update/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/update/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/taobao/update/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 395
    :cond_0
    return-void
.end method
