.class public Lorg/openad/events/URLLoaderEvent;
.super Lorg/openad/events/XYDEvent;


# instance fields
.field private mHttpResponse:Lorg/apache/http/HttpResponse;

.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/openad/events/URLLoaderEvent;->mURL:Ljava/lang/String;

    iput-object p4, p0, Lorg/openad/events/URLLoaderEvent;->mHttpResponse:Lorg/apache/http/HttpResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpResponse;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object p3, p0, Lorg/openad/events/URLLoaderEvent;->mURL:Ljava/lang/String;

    iput-object p4, p0, Lorg/openad/events/URLLoaderEvent;->mHttpResponse:Lorg/apache/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    iget-object v0, p0, Lorg/openad/events/URLLoaderEvent;->mHttpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/events/URLLoaderEvent;->mURL:Ljava/lang/String;

    return-object v0
.end method
