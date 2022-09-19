.class public interface abstract Lcom/sea_monster/network/parser/IEntityParser;
.super Ljava/lang/Object;
.source "IEntityParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onHeaderParsed([Lorg/apache/http/Header;)V
.end method

.method public abstract parse(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation
.end method

.method public abstract parse(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation
.end method

.method public abstract parseGzip(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation
.end method

.method public abstract parseGzip(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/sea_monster/network/StatusCallback",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/ParseException;,
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation
.end method
