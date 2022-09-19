.class public Lorg/openad/common/net/XYDURLLoader;
.super Lorg/openad/events/XYDEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;
    }
.end annotation


# static fields
.field public static final EVENT_LOAD_COMPLETE:Ljava/lang/String; = "URLLoader.Load.Complete"

.field public static final EVENT_LOAD_ERROR:Ljava/lang/String; = "URLLoader.Load.Error"

.field public static LOADER_BUFFER_SIZE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "URLLoader"

.field protected static androidCookieStore:Lorg/openad/common/cookie/IXYDAndroidCookieStore;

.field private static cookieStore:Lorg/apache/http/client/CookieStore;


# instance fields
.field private client:Lorg/openad/common/net/IXYDHttpClient;

.field private clientAlive:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    sput v0, Lorg/openad/common/net/XYDURLLoader;->LOADER_BUFFER_SIZE:I

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    sput-object v0, Lorg/openad/common/net/XYDURLLoader;->cookieStore:Lorg/apache/http/client/CookieStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->clientAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->client:Lorg/openad/common/net/IXYDHttpClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->clientAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->client:Lorg/openad/common/net/IXYDHttpClient;

    return-void
.end method

.method static synthetic access$000(Lorg/openad/common/net/XYDURLLoader;)Lorg/openad/common/net/IXYDHttpClient;
    .locals 1

    iget-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->client:Lorg/openad/common/net/IXYDHttpClient;

    return-object v0
.end method

.method static synthetic access$002(Lorg/openad/common/net/XYDURLLoader;Lorg/openad/common/net/IXYDHttpClient;)Lorg/openad/common/net/IXYDHttpClient;
    .locals 0

    iput-object p1, p0, Lorg/openad/common/net/XYDURLLoader;->client:Lorg/openad/common/net/IXYDHttpClient;

    return-object p1
.end method

.method static synthetic access$100(Lorg/openad/common/net/XYDURLLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->clientAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {v1, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    sget v2, Lorg/openad/common/net/XYDURLLoader;->LOADER_BUFFER_SIZE:I

    new-array v2, v2, [C

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->clientAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->client:Lorg/openad/common/net/IXYDHttpClient;

    invoke-interface {v0}, Lorg/openad/common/net/IXYDHttpClient;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openad/common/net/XYDURLLoader;->client:Lorg/openad/common/net/IXYDHttpClient;

    :cond_0
    return-void
.end method

.method protected initHttpClient(Lorg/openad/common/net/XYDURLRequest;I)Lorg/openad/common/net/IXYDHttpClient;
    .locals 4

    const-string v0, "User-Agent\tYouku;4.2.3;Android;4.1.2;GT-I9100"

    invoke-static {v0}, Lorg/openad/common/net/XYDHttpClient;->newInstance(Ljava/lang/String;)Lorg/openad/common/net/IXYDHttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/openad/common/net/IXYDHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v0}, Lorg/openad/common/net/IXYDHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method protected initRequestHeader(Lorg/openad/common/net/XYDURLRequest;Lorg/openad/common/net/IXYDHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const-class v1, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-interface {p2, v1}, Lorg/openad/common/net/IXYDHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    const-string v1, "Cookie"

    invoke-interface {p3, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lorg/openad/common/net/XYDURLRequest;->data:Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p3, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v2, p1, Lorg/openad/common/net/XYDURLRequest;->data:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/openad/common/net/XYDURLRequest;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initRequestMethod(Lorg/openad/common/net/XYDURLRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget v3, p1, Lorg/openad/common/net/XYDURLRequest;->method:I

    if-ne v3, v1, :cond_0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p1, Lorg/openad/common/net/XYDURLRequest;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/openad/common/net/XYDURLRequest;->method:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    iget v3, p1, Lorg/openad/common/net/XYDURLRequest;->method:I

    if-nez v3, :cond_1

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p1, Lorg/openad/common/net/XYDURLRequest;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/openad/common/net/XYDURLRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " causes IllegalArgumentException."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected issueHttpRequest(Lorg/openad/common/net/IXYDHttpClient;Lorg/openad/common/net/XYDURLRequest;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/openad/common/net/XYDURLLoader;->initRequestMethod(Lorg/openad/common/net/XYDURLRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p2, p1, v0}, Lorg/openad/common/net/XYDURLLoader;->initRequestHeader(Lorg/openad/common/net/XYDURLRequest;Lorg/openad/common/net/IXYDHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)V

    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {p1, v0, v1}, Lorg/openad/common/net/IXYDHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v2, "URLLoader.Load.Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/openad/common/net/XYDURLLoader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {p1}, Lorg/openad/common/net/IXYDHttpClient;->close()V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v2}, Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lorg/openad/common/net/XYDURLRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/openad/common/util/URIUtil;->getFixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_2
    if-eqz v1, :cond_0

    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "URLLoader.Load.Error"

    invoke-virtual {v2}, Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/openad/common/net/XYDURLLoader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Lorg/openad/common/net/IXYDHttpClient;->close()V

    goto :goto_1

    :cond_1
    :try_start_3
    iput-object v3, p2, Lorg/openad/common/net/XYDURLRequest;->url:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, p2}, Lorg/openad/common/net/XYDURLLoader;->initRequestMethod(Lorg/openad/common/net/XYDURLRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_4
    .catch Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Lorg/openad/common/net/XYDURLLoader$URLLoaderErrorException;->printStackTrace()V

    :cond_2
    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2, v0, v1}, Lorg/openad/common/net/XYDURLLoader;->parseResponseBody(Lorg/openad/common/net/XYDURLRequest;Lorg/apache/http/HttpResponse;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "URLLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "URLLoader.Load.Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/openad/common/net/XYDURLLoader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p1}, Lorg/openad/common/net/IXYDHttpClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lorg/openad/common/net/IXYDHttpClient;->close()V

    throw v0
.end method

.method public load(Lorg/openad/common/net/XYDURLRequest;)V
    .locals 2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-virtual {p0, p1, v0, v1}, Lorg/openad/common/net/XYDURLLoader;->load(Lorg/openad/common/net/XYDURLRequest;D)V

    return-void
.end method

.method public load(Lorg/openad/common/net/XYDURLRequest;D)V
    .locals 2

    new-instance v0, Lorg/openad/common/net/XYDURLLoader$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/openad/common/net/XYDURLLoader$1;-><init>(Lorg/openad/common/net/XYDURLLoader;Lorg/openad/common/net/XYDURLRequest;D)V

    invoke-virtual {v0}, Lorg/openad/common/net/XYDURLLoader$1;->start()V

    return-void
.end method

.method protected parseResponseBody(Lorg/openad/common/net/XYDURLRequest;Lorg/apache/http/HttpResponse;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v1, p1, Lorg/openad/common/net/XYDURLRequest;->method:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/net/XYDURLLoader;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/openad/events/URLLoaderEvent;

    const-string v2, "URLLoader.Load.Complete"

    invoke-virtual {p1}, Lorg/openad/common/net/XYDURLRequest;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, p2}, Lorg/openad/events/URLLoaderEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0, v1}, Lorg/openad/common/net/XYDURLLoader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "URLLoader.Load.Complete"

    invoke-direct {v0, v1, p3}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/openad/common/net/XYDURLLoader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/net/XYDURLLoader;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/openad/events/URLLoaderEvent;

    const-string v2, "URLLoader.Load.Complete"

    invoke-virtual {p1}, Lorg/openad/common/net/XYDURLRequest;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, p2}, Lorg/openad/events/URLLoaderEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0, v1}, Lorg/openad/common/net/XYDURLLoader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "URLLoader.Load.Error"

    const-string v2, "entity is null"

    invoke-direct {v0, v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/openad/common/net/XYDURLLoader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0
.end method

.method public setAndroidCookieStore(Lorg/openad/common/cookie/IXYDAndroidCookieStore;)V
    .locals 0

    sput-object p1, Lorg/openad/common/net/XYDURLLoader;->androidCookieStore:Lorg/openad/common/cookie/IXYDAndroidCookieStore;

    return-void
.end method
