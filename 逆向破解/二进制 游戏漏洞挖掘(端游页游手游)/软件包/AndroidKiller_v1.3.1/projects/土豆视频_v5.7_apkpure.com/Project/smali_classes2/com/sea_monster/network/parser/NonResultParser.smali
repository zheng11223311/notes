.class public Lcom/sea_monster/network/parser/NonResultParser;
.super Ljava/lang/Object;
.source "NonResultParser.java"

# interfaces
.implements Lcom/sea_monster/network/parser/IEntityParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sea_monster/network/parser/IEntityParser",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderParsed([Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 18
    return-void
.end method

.method public parse(Lorg/apache/http/HttpEntity;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;)",
            "Ljava/lang/Boolean;"
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
    .line 28
    .local p2, "callback":Lcom/sea_monster/network/StatusCallback;, "Lcom/sea_monster/network/StatusCallback<*>;"
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
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
    .line 14
    invoke-virtual {p0, p1}, Lcom/sea_monster/network/parser/NonResultParser;->parse(Lorg/apache/http/HttpEntity;)Ljava/lang/Boolean;

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
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/network/parser/NonResultParser;->parse(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public parseGzip(Lorg/apache/http/HttpEntity;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public parseGzip(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;)",
            "Ljava/lang/Boolean;"
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
    .line 40
    .local p2, "callback":Lcom/sea_monster/network/StatusCallback;, "Lcom/sea_monster/network/StatusCallback<*>;"
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
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
    .line 14
    invoke-virtual {p0, p1}, Lcom/sea_monster/network/parser/NonResultParser;->parseGzip(Lorg/apache/http/HttpEntity;)Ljava/lang/Boolean;

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
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/network/parser/NonResultParser;->parseGzip(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
