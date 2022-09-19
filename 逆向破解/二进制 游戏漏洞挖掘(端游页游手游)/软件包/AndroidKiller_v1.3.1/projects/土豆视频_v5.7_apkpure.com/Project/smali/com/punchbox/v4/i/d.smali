.class Lcom/punchbox/v4/i/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/punchbox/v4/i/b;


# direct methods
.method private constructor <init>(Lcom/punchbox/v4/i/b;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/i/d;->a:Lcom/punchbox/v4/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/punchbox/v4/i/b;Lcom/punchbox/v4/i/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/v4/i/d;-><init>(Lcom/punchbox/v4/i/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/i/d;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    return-object v0
.end method
