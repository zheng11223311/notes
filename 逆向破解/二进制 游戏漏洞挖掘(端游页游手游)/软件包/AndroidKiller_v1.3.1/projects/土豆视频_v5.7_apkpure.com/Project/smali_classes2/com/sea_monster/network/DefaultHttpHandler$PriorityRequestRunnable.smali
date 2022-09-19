.class public Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;
.super Lcom/sea_monster/common/PriorityRunnable;
.source "DefaultHttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/network/DefaultHttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PriorityRequestRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sea_monster/common/PriorityRunnable;"
    }
.end annotation


# instance fields
.field private request:Lcom/sea_monster/network/AbstractHttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sea_monster/network/DefaultHttpHandler;

.field private uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lcom/sea_monster/network/DefaultHttpHandler;Lcom/sea_monster/network/AbstractHttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;, "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<TT;>;"
    .local p2, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    .line 205
    invoke-virtual {p2}, Lcom/sea_monster/network/AbstractHttpRequest;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sea_monster/common/PriorityRunnable;-><init>(I)V

    .line 206
    iput-object p2, p0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    .line 207
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/sea_monster/network/AbstractHttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;, "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    return-object v0
.end method

.method public getUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 387
    .local p0, "this":Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;, "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public run()V
    .locals 33

    .prologue
    .line 213
    .local p0, "this":Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;, "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<TT;>;"
    const/16 v19, 0x0

    .line 214
    .local v19, "port":I
    const/4 v11, 0x0

    .line 217
    .local v11, "host":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sea_monster/network/AbstractHttpRequest;->obtainRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sea_monster/exception/PackException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "connectivity"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/ConnectivityManager;

    invoke-virtual/range {v28 .. v28}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 229
    .local v18, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v28

    sget-object v29, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 230
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/InternalException;

    const v30, -0xffff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V

    .line 380
    .end local v18    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v9

    .line 219
    .local v9, "e":Lcom/sea_monster/exception/InternalException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V

    goto :goto_0

    .line 221
    .end local v9    # "e":Lcom/sea_monster/exception/InternalException;
    :catch_1
    move-exception v9

    .line 222
    .local v9, "e":Lcom/sea_monster/exception/PackException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V

    goto :goto_0

    .line 234
    .end local v9    # "e":Lcom/sea_monster/exception/PackException;
    .restart local v18    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v22

    .line 235
    .local v22, "proxySelector":Ljava/net/ProxySelector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v20

    .line 236
    .local v20, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_3

    .line 237
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/net/Proxy;

    .line 238
    .local v21, "proxy":Ljava/net/Proxy;
    invoke-virtual/range {v21 .. v21}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v28

    if-eqz v28, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 239
    invoke-virtual/range {v21 .. v21}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v25

    check-cast v25, Ljava/net/InetSocketAddress;

    .line 240
    .local v25, "socketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v25 .. v25}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    .line 241
    invoke-virtual/range {v25 .. v25}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v19

    .line 247
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v21    # "proxy":Ljava/net/Proxy;
    .end local v25    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 249
    .local v8, "currentNetworkType":I
    if-nez v8, :cond_7

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_7

    if-lez v19, :cond_7

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v8, v11, v1}, Lcom/sea_monster/network/DefaultHttpHandler;->createHttpParams(ILjava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 254
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sea_monster/network/AbstractHttpRequest;->getResStream()Ljava/io/InputStream;

    move-result-object v28

    if-eqz v28, :cond_4

    if-nez v8, :cond_4

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const-string v29, "http.socket.timeout"

    const/16 v30, 0x7530

    invoke-interface/range {v28 .. v30}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 258
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v28, v0

    const-string v29, "Accept-Encoding"

    const-string v30, "gzip"

    invoke-interface/range {v28 .. v30}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v7, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v7}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 261
    .local v7, "context":Lorg/apache/http/protocol/HttpContext;
    const/4 v4, 0x0

    .line 264
    .local v4, "adapter":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    :try_start_1
    const-string v28, "http.authscheme-registry"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/DefaultHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v7, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v28, "http.cookiespec-registry"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v7, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v28, "http.cookie-store"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v7, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    const-string v28, "http.auth.credentials-provider"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v7, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    .line 271
    .local v23, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sea_monster/network/AbstractHttpRequest;->getParser()Lcom/sea_monster/network/parser/IEntityParser;

    move-result-object v28

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/sea_monster/network/parser/IEntityParser;->onHeaderParsed([Lorg/apache/http/Header;)V

    .line 273
    const-string v28, "http.connection"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    move-object v4, v0

    .line 275
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    const/16 v29, 0xc8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 276
    const-string v28, "Content-Length"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    .line 277
    .local v13, "lenHeader":Lorg/apache/http/Header;
    if-eqz v13, :cond_5

    .line 278
    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 279
    .local v14, "length":J
    const-wide/16 v28, 0x4e20

    cmp-long v28, v14, v28

    if-lez v28, :cond_5

    .line 280
    instance-of v0, v4, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 282
    const/16 v27, 0x0

    .line 283
    .local v27, "timeout":I
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v8, v0, :cond_9

    .line 284
    const-wide/16 v28, 0x4e20

    div-long v28, v14, v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    .line 285
    const/16 v28, 0x2710

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_8

    .line 291
    :goto_2
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->setSocketTimeout(I)V

    .line 296
    .end local v14    # "length":J
    .end local v27    # "timeout":I
    :cond_5
    const-string v28, "Content-Encoding"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 299
    .local v6, "codingHeader":Lorg/apache/http/Header;
    if-eqz v6, :cond_b

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    const-string v29, "gzip"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sea_monster/network/AbstractHttpRequest;->getParser()Lcom/sea_monster/network/parser/IEntityParser;

    move-result-object v28

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getStatusCallback()Lcom/sea_monster/network/StatusCallback;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Lcom/sea_monster/network/parser/IEntityParser;->parseGzip(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Object;

    move-result-object v24

    .line 304
    .local v24, "result":Ljava/lang/Object;, "TT;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->onComplete(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/sea_monster/exception/ParseException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 372
    .end local v6    # "codingHeader":Lorg/apache/http/Header;
    .end local v13    # "lenHeader":Lorg/apache/http/Header;
    .end local v24    # "result":Ljava/lang/Object;, "TT;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    if-eqz v4, :cond_6

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 252
    .end local v4    # "adapter":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    .end local v7    # "context":Lorg/apache/http/protocol/HttpContext;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lcom/sea_monster/network/DefaultHttpHandler;->createHttpParams(I)Lorg/apache/http/params/HttpParams;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_1

    .line 285
    .restart local v4    # "adapter":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    .restart local v7    # "context":Lorg/apache/http/protocol/HttpContext;
    .restart local v13    # "lenHeader":Lorg/apache/http/Header;
    .restart local v14    # "length":J
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    .restart local v27    # "timeout":I
    :cond_8
    const/16 v27, 0x2710

    goto/16 :goto_2

    .line 288
    :cond_9
    const-wide/16 v28, 0x2710

    :try_start_3
    div-long v28, v14, v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    .line 289
    const/16 v28, 0x7530

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_a

    :goto_5
    goto/16 :goto_2

    :cond_a
    const/16 v27, 0x7530

    goto :goto_5

    .line 302
    .end local v14    # "length":J
    .end local v27    # "timeout":I
    .restart local v6    # "codingHeader":Lorg/apache/http/Header;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sea_monster/network/AbstractHttpRequest;->getParser()Lcom/sea_monster/network/parser/IEntityParser;

    move-result-object v28

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getStatusCallback()Lcom/sea_monster/network/StatusCallback;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Lcom/sea_monster/network/parser/IEntityParser;->parse(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Object;

    move-result-object v24

    .restart local v24    # "result":Ljava/lang/Object;, "TT;"
    goto/16 :goto_3

    .line 305
    .end local v6    # "codingHeader":Lorg/apache/http/Header;
    .end local v13    # "lenHeader":Lorg/apache/http/Header;
    .end local v24    # "result":Ljava/lang/Object;, "TT;"
    :cond_c
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    const/16 v29, 0x12d

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    const/16 v29, 0x12e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 306
    :cond_d
    const-string v28, "location"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 307
    .local v17, "locationHeader":Lorg/apache/http/Header;
    if-eqz v17, :cond_10

    .line 308
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 309
    .local v16, "location":Ljava/lang/String;
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "The page was redirected to:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/sea_monster/exception/ParseException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    .line 311
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Ljava/net/URI;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->setUri(Ljava/net/URI;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->run()V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/sea_monster/exception/ParseException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 375
    if-eqz v4, :cond_e

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    :catchall_0
    move-exception v28

    :try_start_6
    monitor-exit v29
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v28

    .line 314
    :catch_2
    move-exception v9

    .line 315
    .local v9, "e":Ljava/net/URISyntaxException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/sea_monster/exception/ParseException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    goto/16 :goto_4

    .line 337
    .end local v9    # "e":Ljava/net/URISyntaxException;
    .end local v16    # "location":Ljava/lang/String;
    .end local v17    # "locationHeader":Lorg/apache/http/Header;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v9

    .line 338
    .local v9, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 375
    if-eqz v4, :cond_f

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 318
    .end local v9    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v17    # "locationHeader":Lorg/apache/http/Header;
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    :cond_10
    :try_start_a
    sget-object v28, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v29, "Location field value is null."

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    const-string v28, "HTTP"

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 321
    new-instance v10, Lcom/sea_monster/exception/InternalException;

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v10, v0, v1}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/String;)V

    .line 323
    .local v10, "exception":Lcom/sea_monster/exception/InternalException;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    .line 325
    .local v26, "statue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lcom/sea_monster/exception/ParseException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    goto/16 :goto_4

    .line 340
    .end local v10    # "exception":Lcom/sea_monster/exception/InternalException;
    .end local v17    # "locationHeader":Lorg/apache/http/Header;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v26    # "statue":I
    :catch_4
    move-exception v9

    .line 341
    .local v9, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 375
    if-eqz v4, :cond_11

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 328
    .end local v9    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    :cond_12
    :try_start_d
    const-string v28, "HTTP"

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 330
    new-instance v10, Lcom/sea_monster/exception/InternalException;

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->uriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v10, v0, v1}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/String;)V

    .line 332
    .restart local v10    # "exception":Lcom/sea_monster/exception/InternalException;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    .line 334
    .restart local v26    # "statue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Lcom/sea_monster/exception/ParseException; {:try_start_d .. :try_end_d} :catch_9
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto/16 :goto_4

    .line 344
    .end local v10    # "exception":Lcom/sea_monster/exception/InternalException;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v26    # "statue":I
    :catch_5
    move-exception v9

    .line 345
    .local v9, "e":Ljava/net/ConnectException;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 375
    if-eqz v4, :cond_13

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    .end local v9    # "e":Ljava/net/ConnectException;
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v28

    :try_start_10
    monitor-exit v29
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v28

    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .local v9, "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_2
    move-exception v28

    :try_start_11
    monitor-exit v29
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v28

    .local v9, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catchall_3
    move-exception v28

    :try_start_12
    monitor-exit v29
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v28

    .local v9, "e":Ljava/net/ConnectException;
    :catchall_4
    move-exception v28

    :try_start_13
    monitor-exit v29
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v28

    .line 348
    .end local v9    # "e":Ljava/net/ConnectException;
    :catch_6
    move-exception v9

    .line 349
    .local v9, "e":Ljava/net/SocketTimeoutException;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 375
    if-eqz v4, :cond_14

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    :catchall_5
    move-exception v28

    :try_start_16
    monitor-exit v29
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    throw v28

    .line 352
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v9

    .line 353
    .local v9, "e":Ljava/net/SocketException;
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 375
    if-eqz v4, :cond_15

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    :catchall_6
    move-exception v28

    :try_start_19
    monitor-exit v29
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    throw v28

    .line 356
    .end local v9    # "e":Ljava/net/SocketException;
    :catch_8
    move-exception v9

    .line 357
    .local v9, "e":Ljava/io/IOException;
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 375
    if-eqz v4, :cond_16

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    :catchall_7
    move-exception v28

    :try_start_1c
    monitor-exit v29
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    throw v28

    .line 359
    .end local v9    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 360
    .local v9, "e":Lcom/sea_monster/exception/ParseException;
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 375
    if-eqz v4, :cond_17

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    :catchall_8
    move-exception v28

    :try_start_1f
    monitor-exit v29
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    throw v28

    .line 362
    .end local v9    # "e":Lcom/sea_monster/exception/ParseException;
    :catch_a
    move-exception v9

    .line 363
    .local v9, "e":Lcom/sea_monster/exception/InternalException;
    :try_start_20
    invoke-virtual {v9}, Lcom/sea_monster/exception/InternalException;->getGeneralCode()I

    move-result v5

    .line 365
    .local v5, "code":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 375
    if-eqz v4, :cond_18

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    :catchall_9
    move-exception v28

    :try_start_22
    monitor-exit v29
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    throw v28

    .line 366
    .end local v5    # "code":I
    .end local v9    # "e":Lcom/sea_monster/exception/InternalException;
    :catch_b
    move-exception v9

    .line 367
    .local v9, "e":Ljava/lang/NullPointerException;
    :try_start_23
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/InternalException;

    const v30, -0xffff

    const-string v31, "NullPointerException"

    invoke-direct/range {v29 .. v31}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 375
    if-eqz v4, :cond_19

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    :catchall_a
    move-exception v28

    :try_start_25
    monitor-exit v29
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    throw v28

    .line 369
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :catch_c
    move-exception v9

    .line 370
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v28 .. v29}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    .line 375
    if-eqz v4, :cond_1a

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 374
    :catchall_b
    move-exception v28

    :try_start_28
    monitor-exit v29
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    throw v28

    .line 372
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catchall_c
    move-exception v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 373
    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->request:Lcom/sea_monster/network/AbstractHttpRequest;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v29
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    .line 375
    if-eqz v4, :cond_1b

    .line 376
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 378
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->this$0:Lcom/sea_monster/network/DefaultHttpHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    const-wide/16 v30, 0x0

    sget-object v32, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v29 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    throw v28

    .line 374
    :catchall_d
    move-exception v28

    :try_start_2a
    monitor-exit v29
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    throw v28
.end method
