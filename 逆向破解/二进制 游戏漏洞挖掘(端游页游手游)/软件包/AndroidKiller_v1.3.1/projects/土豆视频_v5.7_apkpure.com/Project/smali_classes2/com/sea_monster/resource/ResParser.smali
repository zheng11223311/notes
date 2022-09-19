.class public Lcom/sea_monster/resource/ResParser;
.super Ljava/lang/Object;
.source "ResParser.java"

# interfaces
.implements Lcom/sea_monster/network/parser/IEntityParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sea_monster/network/parser/IEntityParser",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private handler:Lcom/sea_monster/resource/ResourceHandler;

.field private res:Lcom/sea_monster/resource/Resource;


# direct methods
.method public constructor <init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;)V
    .locals 0
    .param p1, "handler"    # Lcom/sea_monster/resource/ResourceHandler;
    .param p2, "res"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/sea_monster/resource/ResParser;->res:Lcom/sea_monster/resource/Resource;

    .line 36
    iput-object p1, p0, Lcom/sea_monster/resource/ResParser;->handler:Lcom/sea_monster/resource/ResourceHandler;

    .line 37
    return-void
.end method

.method private parseEntityStream(Lcom/sea_monster/resource/IResourceHandler;Ljava/io/InputStream;)Ljava/io/File;
    .locals 1
    .param p1, "handler"    # Lcom/sea_monster/resource/IResourceHandler;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sea_monster/resource/ResParser;->res:Lcom/sea_monster/resource/Resource;

    invoke-interface {p1, v0, p2}, Lcom/sea_monster/resource/IResourceHandler;->store(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;)V

    .line 48
    iget-object v0, p0, Lcom/sea_monster/resource/ResParser;->res:Lcom/sea_monster/resource/Resource;

    invoke-interface {p1, v0}, Lcom/sea_monster/resource/IResourceHandler;->getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private parseEntityStream(Lcom/sea_monster/resource/IResourceHandler;Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)Ljava/io/File;
    .locals 7
    .param p1, "handler"    # Lcom/sea_monster/resource/IResourceHandler;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "total"    # J
    .param p5, "callback"    # Lcom/sea_monster/network/StoreStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v2, p0, Lcom/sea_monster/resource/ResParser;->res:Lcom/sea_monster/resource/Resource;

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sea_monster/resource/IResourceHandler;->store(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)V

    .line 41
    iget-object v0, p0, Lcom/sea_monster/resource/ResParser;->res:Lcom/sea_monster/resource/Resource;

    invoke-interface {p1, v0}, Lcom/sea_monster/resource/IResourceHandler;->getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onHeaderParsed([Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 26
    return-void
.end method

.method public parse(Lorg/apache/http/HttpEntity;)Ljava/io/File;
    .locals 2
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sea_monster/resource/ResParser;->handler:Lcom/sea_monster/resource/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sea_monster/resource/ResourceHandler;->getResourceHandler(Lorg/apache/http/HttpEntity;)Lcom/sea_monster/resource/IResourceHandler;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/resource/ResParser;->parseEntityStream(Lcom/sea_monster/resource/IResourceHandler;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/io/File;
    .locals 7
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "callback":Lcom/sea_monster/network/StatusCallback;, "Lcom/sea_monster/network/StatusCallback<*>;"
    instance-of v1, p2, Lcom/sea_monster/network/StoreStatusCallback;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/sea_monster/resource/ResParser;->handler:Lcom/sea_monster/resource/ResourceHandler;

    invoke-virtual {v1, p1}, Lcom/sea_monster/resource/ResourceHandler;->getResourceHandler(Lorg/apache/http/HttpEntity;)Lcom/sea_monster/resource/IResourceHandler;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    move-object v6, p2

    check-cast v6, Lcom/sea_monster/network/StoreStatusCallback;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sea_monster/resource/ResParser;->parseEntityStream(Lcom/sea_monster/resource/IResourceHandler;Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 60
    return-object v0

    .line 58
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/sea_monster/resource/ResParser;->handler:Lcom/sea_monster/resource/ResourceHandler;

    invoke-virtual {v1, p1}, Lcom/sea_monster/resource/ResourceHandler;->getResourceHandler(Lorg/apache/http/HttpEntity;)Lcom/sea_monster/resource/IResourceHandler;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sea_monster/resource/ResParser;->parseEntityStream(Lcom/sea_monster/resource/IResourceHandler;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/sea_monster/resource/ResParser;->parse(Lorg/apache/http/HttpEntity;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpEntity;
    .param p2, "x1"    # Lcom/sea_monster/network/StatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/resource/ResParser;->parse(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public parseGzip(Lorg/apache/http/HttpEntity;)Ljava/io/File;
    .locals 3
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sea_monster/resource/ResParser;->handler:Lcom/sea_monster/resource/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sea_monster/resource/ResourceHandler;->getResourceHandler(Lorg/apache/http/HttpEntity;)Lcom/sea_monster/resource/IResourceHandler;

    move-result-object v0

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/resource/ResParser;->parseEntityStream(Lcom/sea_monster/resource/IResourceHandler;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public parseGzip(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/io/File;
    .locals 7
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "callback":Lcom/sea_monster/network/StatusCallback;, "Lcom/sea_monster/network/StatusCallback<*>;"
    instance-of v1, p2, Lcom/sea_monster/network/StoreStatusCallback;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sea_monster/resource/ResParser;->handler:Lcom/sea_monster/resource/ResourceHandler;

    invoke-virtual {v1, p1}, Lcom/sea_monster/resource/ResourceHandler;->getResourceHandler(Lorg/apache/http/HttpEntity;)Lcom/sea_monster/resource/IResourceHandler;

    move-result-object v2

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    move-object v6, p2

    check-cast v6, Lcom/sea_monster/network/StoreStatusCallback;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sea_monster/resource/ResParser;->parseEntityStream(Lcom/sea_monster/resource/IResourceHandler;Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 76
    return-object v0

    .line 74
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/sea_monster/resource/ResParser;->handler:Lcom/sea_monster/resource/ResourceHandler;

    invoke-virtual {v1, p1}, Lcom/sea_monster/resource/ResourceHandler;->getResourceHandler(Lorg/apache/http/HttpEntity;)Lcom/sea_monster/resource/IResourceHandler;

    move-result-object v1

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1, v2}, Lcom/sea_monster/resource/ResParser;->parseEntityStream(Lcom/sea_monster/resource/IResourceHandler;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method public bridge synthetic parseGzip(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/sea_monster/resource/ResParser;->parseGzip(Lorg/apache/http/HttpEntity;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseGzip(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpEntity;
    .param p2, "x1"    # Lcom/sea_monster/network/StatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/resource/ResParser;->parseGzip(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
