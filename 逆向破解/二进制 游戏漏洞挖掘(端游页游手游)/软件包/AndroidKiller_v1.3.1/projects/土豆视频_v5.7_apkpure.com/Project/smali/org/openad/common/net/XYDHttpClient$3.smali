.class Lorg/openad/common/net/XYDHttpClient$3;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openad/common/net/XYDHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openad/common/net/XYDHttpClient;


# direct methods
.method constructor <init>(Lorg/openad/common/net/XYDHttpClient;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/common/net/XYDHttpClient$3;->this$0:Lorg/openad/common/net/XYDHttpClient;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/ProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/net/URISyntaxException;

    if-nez v2, :cond_0

    throw v1

    :cond_0
    check-cast v0, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/URIUtil;->getFixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    throw v1

    :cond_1
    const-string v1, "location"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method
