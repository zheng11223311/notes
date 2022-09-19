.class public abstract Lcom/sea_monster/network/AbstractHttpRequest;
.super Ljava/lang/Object;
.source "AbstractHttpRequest.java"

# interfaces
.implements Lcom/sea_monster/network/HttpRequestProcess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sea_monster/network/HttpRequestProcess",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final GET_METHOD:I = 0x1

.field public static final HIGH:I = 0x1

.field public static final LOW:I = -0x1

.field public static final NORMAL:I = 0x0

.field public static final POST_METHOD:I = 0x2

.field public static final PUT_METHOD:I = 0x3


# instance fields
.field private attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private callId:I

.field private fileName:Ljava/lang/String;

.field private isMultiPart:Z

.field private method:I

.field private packer:Lcom/sea_monster/network/packer/AbsEntityPacker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/network/packer/AbsEntityPacker",
            "<*>;"
        }
    .end annotation
.end field

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private parser:Lcom/sea_monster/network/parser/IEntityParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/network/parser/IEntityParser",
            "<*>;"
        }
    .end annotation
.end field

.field private priority:I

.field private resName:Ljava/lang/String;

.field private resStream:Ljava/io/InputStream;

.field private statusCallback:Lcom/sea_monster/network/StatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;"
        }
    .end annotation
.end field

.field private supportGzip:Z

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(ILjava/net/URI;Ljava/util/List;)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->supportGzip:Z

    .line 93
    iput p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->method:I

    .line 94
    iput-object p2, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    .line 95
    iput-object p3, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->callId:I

    .line 97
    iput v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->priority:I

    .line 98
    iput-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->isMultiPart:Z

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/util/List;I)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->supportGzip:Z

    .line 112
    iput p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->method:I

    .line 113
    iput-object p2, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    .line 114
    iput-object p3, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->callId:I

    .line 116
    iput p4, p0, Lcom/sea_monster/network/AbstractHttpRequest;->priority:I

    .line 117
    iput-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->isMultiPart:Z

    .line 118
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .param p4, "priority"    # I
    .param p5, "isMultiPart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->supportGzip:Z

    .line 73
    iput p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->method:I

    .line 74
    iput-object p2, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    .line 75
    iput-object p3, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->callId:I

    .line 77
    iput p4, p0, Lcom/sea_monster/network/AbstractHttpRequest;->priority:I

    .line 78
    iput-boolean p5, p0, Lcom/sea_monster/network/AbstractHttpRequest;->isMultiPart:Z

    .line 79
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/util/List;Lcom/sea_monster/network/parser/IEntityParser;)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/sea_monster/network/parser/IEntityParser",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p4, "parser":Lcom/sea_monster/network/parser/IEntityParser;, "Lcom/sea_monster/network/parser/IEntityParser<*>;"
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->supportGzip:Z

    .line 82
    iput p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->method:I

    .line 83
    iput-object p2, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    .line 84
    iput-object p3, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    .line 85
    iput-object p4, p0, Lcom/sea_monster/network/AbstractHttpRequest;->parser:Lcom/sea_monster/network/parser/IEntityParser;

    .line 86
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->callId:I

    .line 87
    iput v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->priority:I

    .line 88
    iput-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->isMultiPart:Z

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/util/List;Lcom/sea_monster/network/parser/IEntityParser;I)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .param p5, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/sea_monster/network/parser/IEntityParser",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p4, "parser":Lcom/sea_monster/network/parser/IEntityParser;, "Lcom/sea_monster/network/parser/IEntityParser<*>;"
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->supportGzip:Z

    .line 102
    iput p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->method:I

    .line 103
    iput-object p2, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    .line 104
    iput-object p3, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    .line 105
    iput-object p4, p0, Lcom/sea_monster/network/AbstractHttpRequest;->parser:Lcom/sea_monster/network/parser/IEntityParser;

    .line 106
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->callId:I

    .line 107
    iput p5, p0, Lcom/sea_monster/network/AbstractHttpRequest;->priority:I

    .line 108
    iput-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->isMultiPart:Z

    .line 109
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sea_monster/exception/BaseException;)V
    .locals 0
    .param p1, "e"    # Lcom/sea_monster/exception/BaseException;

    .prologue
    .line 121
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V

    .line 122
    return-void
.end method

.method public containsAttr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 192
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->attrs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttr(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->attrs:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->attrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->callId:I

    return v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->method:I

    return v0
.end method

.method public getPacker()Lcom/sea_monster/network/packer/AbsEntityPacker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/network/packer/AbsEntityPacker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->packer:Lcom/sea_monster/network/packer/AbsEntityPacker;

    return-object v0
.end method

.method public getParamsMap()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    return-object v0
.end method

.method public getParser()Lcom/sea_monster/network/parser/IEntityParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/network/parser/IEntityParser",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->parser:Lcom/sea_monster/network/parser/IEntityParser;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->priority:I

    return v0
.end method

.method public getResStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCallback()Lcom/sea_monster/network/StatusCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->statusCallback:Lcom/sea_monster/network/StatusCallback;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isSupportGzip()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-boolean v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->supportGzip:Z

    return v0
.end method

.method public obtainRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sea_monster/exception/InternalException;,
            Lcom/sea_monster/exception/PackException;
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->method:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 224
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    invoke-direct {v8, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 225
    .local v8, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v8}, Lcom/sea_monster/network/AbstractHttpRequest;->processReadyRequest(Lorg/apache/http/HttpRequest;)V

    .line 275
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-object v8

    .line 228
    :cond_0
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    invoke-direct {v8, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 230
    .local v8, "request":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v8}, Lcom/sea_monster/network/AbstractHttpRequest;->processReadyRequest(Lorg/apache/http/HttpRequest;)V

    .line 232
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resStream:Ljava/io/InputStream;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->packer:Lcom/sea_monster/network/packer/AbsEntityPacker;

    if-eqz v1, :cond_3

    .line 235
    :cond_2
    const/4 v7, 0x0

    .line 236
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resStream:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    .line 237
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 238
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 239
    new-instance v0, Lcom/sea_monster/network/entity/MultipartEntity;

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    iget-object v2, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sea_monster/network/AbstractHttpRequest;->fileName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/network/entity/MultipartEntity;-><init>(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_3

    .line 262
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->supportGzip:Z

    if-eqz v1, :cond_9

    .line 263
    new-instance v1, Lcom/sea_monster/network/entity/GzipEntity;

    invoke-direct {v1, v0}, Lcom/sea_monster/network/entity/GzipEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v8, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_1 .. :try_end_1} :catch_5

    .line 274
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_3
    :goto_2
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_0

    .line 241
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    :try_start_2
    new-instance v0, Lcom/sea_monster/network/entity/MultipartEntity;

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    iget-object v2, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resName:Ljava/lang/String;

    const-string v4, "rong_file.jpg"

    const-string v5, "UTF-8"

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/network/entity/MultipartEntity;-><init>(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_1

    .line 243
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    new-instance v0, Lcom/sea_monster/network/entity/MultipartEntity;

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    iget-object v2, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resStream:Ljava/io/InputStream;

    const-string v3, "rong_file"

    const-string v4, "rong_file.jpg"

    const-string v5, "UTF-8"

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/network/entity/MultipartEntity;-><init>(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_1

    .line 245
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    :cond_6
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->packer:Lcom/sea_monster/network/packer/AbsEntityPacker;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v1, :cond_7

    .line 247
    :try_start_3
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->packer:Lcom/sea_monster/network/packer/AbsEntityPacker;

    invoke-virtual {v1}, Lcom/sea_monster/network/packer/AbsEntityPacker;->pack()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_1

    .line 248
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v6

    .line 249
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v1, Lcom/sea_monster/exception/PackException;

    invoke-direct {v1, v6}, Lcom/sea_monster/exception/PackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_4 .. :try_end_4} :catch_3

    .line 268
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v0, v7

    .line 269
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    new-instance v1, Lcom/sea_monster/exception/PackException;

    invoke-direct {v1, v6}, Lcom/sea_monster/exception/PackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 250
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception v6

    .line 251
    .local v6, "e":Lorg/json/JSONException;
    :try_start_5
    new-instance v1, Lcom/sea_monster/exception/PackException;

    invoke-direct {v1, v6}, Lcom/sea_monster/exception/PackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_5 .. :try_end_5} :catch_3

    .line 271
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v6

    move-object v0, v7

    .line 272
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .local v6, "e":Lcom/sea_monster/exception/InternalException;
    :goto_4
    throw v6

    .line 253
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "e":Lcom/sea_monster/exception/InternalException;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    :cond_7
    :try_start_6
    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 254
    iget-boolean v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->isMultiPart:Z

    if-eqz v1, :cond_8

    .line 255
    new-instance v0, Lcom/sea_monster/network/entity/MultipartEntity;

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lcom/sea_monster/network/entity/MultipartEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_1

    .line 259
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    :cond_8
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_1

    .line 265
    :cond_9
    :try_start_7
    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 268
    :catch_4
    move-exception v6

    goto :goto_3

    .line 271
    :catch_5
    move-exception v6

    goto :goto_4

    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    :cond_a
    move-object v0, v7

    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    goto/16 :goto_1
.end method

.method public processReadyRequest(Lorg/apache/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 286
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    return-void
.end method

.method public putAttr(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 185
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->attrs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->attrs:Ljava/util/Map;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/network/AbstractHttpRequest;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 177
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->fileName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 129
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iput p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->method:I

    .line 130
    return-void
.end method

.method public setPacker(Lcom/sea_monster/network/packer/AbsEntityPacker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/packer/AbsEntityPacker",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p1, "packer":Lcom/sea_monster/network/packer/AbsEntityPacker;, "Lcom/sea_monster/network/packer/AbsEntityPacker<*>;"
    iput-object p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->packer:Lcom/sea_monster/network/packer/AbsEntityPacker;

    .line 166
    return-void
.end method

.method public setParamsMap(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    .line 150
    return-void
.end method

.method public setParser(Lcom/sea_monster/network/parser/IEntityParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/parser/IEntityParser",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p1, "parser":Lcom/sea_monster/network/parser/IEntityParser;, "Lcom/sea_monster/network/parser/IEntityParser<*>;"
    iput-object p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->parser:Lcom/sea_monster/network/parser/IEntityParser;

    .line 158
    return-void
.end method

.method public setResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 173
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setResStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 169
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->resStream:Ljava/io/InputStream;

    .line 170
    return-void
.end method

.method public setStatusCallback(Lcom/sea_monster/network/StatusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p1, "statusCallback":Lcom/sea_monster/network/StatusCallback;, "Lcom/sea_monster/network/StatusCallback<*>;"
    iput-object p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->statusCallback:Lcom/sea_monster/network/StatusCallback;

    .line 58
    return-void
.end method

.method public setSupportGzip(Z)V
    .locals 0
    .param p1, "supportGzip"    # Z

    .prologue
    .line 65
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iput-boolean p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->supportGzip:Z

    .line 66
    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 141
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .local p0, "this":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v5, "CallId:%1$d\n"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/sea_monster/network/AbstractHttpRequest;->callId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v5, "URI:%1$s\n"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sea_monster/network/AbstractHttpRequest;->uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, "i":I
    iget-object v5, p0, Lcom/sea_monster/network/AbstractHttpRequest;->params:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 215
    .local v3, "pair":Lorg/apache/http/NameValuePair;
    const-string v5, "Params($1$d):%2$s\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 216
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 218
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
