.class public abstract Lcom/sea_monster/network/ApiReqeust;
.super Ljava/lang/Object;
.source "ApiReqeust.java"

# interfaces
.implements Lcom/sea_monster/network/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sea_monster/network/ApiCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final GET_METHOD:I = 0x1

.field public static final POST_METHOD:I = 0x2

.field public static final PUT_METHOD:I = 0x3


# instance fields
.field private fileName:Ljava/lang/String;

.field private method:I

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

.field private resName:Ljava/lang/String;

.field private resStream:Ljava/io/InputStream;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(ILjava/net/URI;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 67
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 69
    iput-object p2, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "resStream"    # Ljava/io/InputStream;

    .prologue
    .line 96
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 98
    iput-object p2, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    .line 99
    iput-object p3, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "resStream"    # Ljava/io/InputStream;
    .param p4, "resName"    # Ljava/lang/String;

    .prologue
    .line 102
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 104
    iput-object p2, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    .line 105
    iput-object p3, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    .line 106
    iput-object p4, p0, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/util/List;)V
    .locals 11
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
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v10, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-ne p1, v10, :cond_3

    .line 37
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .local v5, "path":Ljava/lang/StringBuilder;
    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .line 43
    .local v3, "n":I
    if-eqz p3, :cond_0

    .line 44
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 46
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 47
    .local v4, "nameValuePair":Lorg/apache/http/NameValuePair;
    const-string v6, "%1$s=%2$s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    if-le v3, v1, :cond_1

    .line 51
    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54
    .end local v4    # "nameValuePair":Lorg/apache/http/NameValuePair;
    :cond_2
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    const-string v6, "url"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    .line 65
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "n":I
    .end local v5    # "path":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 55
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "n":I
    .restart local v5    # "path":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 61
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "n":I
    .end local v5    # "path":Ljava/lang/StringBuilder;
    :cond_3
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 62
    iput-object p2, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    .line 63
    iput-object p3, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    goto :goto_2
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .param p4, "resStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 74
    iput-object p2, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    .line 75
    iput-object p3, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    .line 76
    iput-object p4, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .param p4, "resStream"    # Ljava/io/InputStream;
    .param p5, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 81
    iput-object p2, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    .line 82
    iput-object p3, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    .line 83
    iput-object p4, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    .line 84
    iput-object p5, p0, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .param p4, "resStream"    # Ljava/io/InputStream;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 89
    iput-object p2, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    .line 90
    iput-object p3, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    .line 91
    iput-object p4, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    .line 92
    iput-object p5, p0, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lcom/sea_monster/network/ApiReqeust;->fileName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sea_monster/network/ApiReqeust;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/network/ApiReqeust;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iget v0, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    return v0
.end method

.method public getParams()Ljava/util/List;
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
    .line 126
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    return-object v0
.end method

.method public getResName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    return-object v0
.end method

.method public getResStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public obtainRequest(Lcom/sea_monster/network/parser/IEntityParser;Lcom/sea_monster/network/AuthType;)Lcom/sea_monster/network/AbstractHttpRequest;
    .locals 1
    .param p2, "consumer"    # Lcom/sea_monster/network/AuthType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/parser/IEntityParser",
            "<TT;>;",
            "Lcom/sea_monster/network/AuthType;",
            ")",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    .local p1, "parser":Lcom/sea_monster/network/parser/IEntityParser;, "Lcom/sea_monster/network/parser/IEntityParser<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sea_monster/network/ApiReqeust;->obtainRequest(Lcom/sea_monster/network/parser/IEntityParser;Lcom/sea_monster/network/AuthType;Z)Lcom/sea_monster/network/AbstractHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public obtainRequest(Lcom/sea_monster/network/parser/IEntityParser;Lcom/sea_monster/network/AuthType;Z)Lcom/sea_monster/network/AbstractHttpRequest;
    .locals 9
    .param p2, "consumer"    # Lcom/sea_monster/network/AuthType;
    .param p3, "isMulitPart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/parser/IEntityParser",
            "<TT;>;",
            "Lcom/sea_monster/network/AuthType;",
            "Z)",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    .local p1, "parser":Lcom/sea_monster/network/parser/IEntityParser;, "Lcom/sea_monster/network/parser/IEntityParser<TT;>;"
    move-object v8, p0

    .line 170
    .local v8, "request":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    new-instance v0, Lcom/sea_monster/network/ApiReqeust$1;

    iget v2, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    iget-object v3, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    iget-object v4, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    const/4 v5, 0x1

    move-object v1, p0

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/sea_monster/network/ApiReqeust$1;-><init>(Lcom/sea_monster/network/ApiReqeust;ILjava/net/URI;Ljava/util/List;IZLcom/sea_monster/network/AuthType;Lcom/sea_monster/network/ApiReqeust;)V

    .line 200
    .local v0, "httpRequest":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    invoke-virtual {v0, p1}, Lcom/sea_monster/network/AbstractHttpRequest;->setParser(Lcom/sea_monster/network/parser/IEntityParser;)V

    .line 201
    iget-object v1, v8, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->setResStream(Ljava/io/InputStream;)V

    .line 205
    :cond_0
    iget-object v1, v8, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, v8, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->setResName(Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object v1, v8, Lcom/sea_monster/network/ApiReqeust;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, v8, Lcom/sea_monster/network/ApiReqeust;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->setFileName(Ljava/lang/String;)V

    .line 211
    :cond_2
    return-object v0
.end method

.method public obtainRequest(Lcom/sea_monster/network/parser/IEntityParser;Lcom/sea_monster/network/packer/AbsEntityPacker;Lcom/sea_monster/network/AuthType;)Lcom/sea_monster/network/AbstractHttpRequest;
    .locals 8
    .param p3, "consumer"    # Lcom/sea_monster/network/AuthType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/parser/IEntityParser",
            "<TT;>;",
            "Lcom/sea_monster/network/packer/AbsEntityPacker",
            "<*>;",
            "Lcom/sea_monster/network/AuthType;",
            ")",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    .local p1, "parser":Lcom/sea_monster/network/parser/IEntityParser;, "Lcom/sea_monster/network/parser/IEntityParser<TT;>;"
    .local p2, "packer":Lcom/sea_monster/network/packer/AbsEntityPacker;, "Lcom/sea_monster/network/packer/AbsEntityPacker<*>;"
    move-object v7, p0

    .line 218
    .local v7, "request":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    new-instance v0, Lcom/sea_monster/network/ApiReqeust$2;

    iget v2, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    iget-object v3, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    iget-object v4, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sea_monster/network/ApiReqeust$2;-><init>(Lcom/sea_monster/network/ApiReqeust;ILjava/net/URI;Ljava/util/List;ILcom/sea_monster/network/AuthType;Lcom/sea_monster/network/ApiReqeust;)V

    .line 248
    .local v0, "httpRequest":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    invoke-virtual {v0, p1}, Lcom/sea_monster/network/AbstractHttpRequest;->setParser(Lcom/sea_monster/network/parser/IEntityParser;)V

    .line 249
    invoke-virtual {v0, p2}, Lcom/sea_monster/network/AbstractHttpRequest;->setPacker(Lcom/sea_monster/network/packer/AbsEntityPacker;)V

    .line 250
    iget-object v1, v7, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->setResStream(Ljava/io/InputStream;)V

    .line 254
    :cond_0
    iget-object v1, v7, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, v7, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->setResName(Ljava/lang/String;)V

    .line 257
    :cond_1
    iget-object v1, v7, Lcom/sea_monster/network/ApiReqeust;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, v7, Lcom/sea_monster/network/ApiReqeust;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->setFileName(Ljava/lang/String;)V

    .line 260
    :cond_2
    return-object v0
.end method

.method public setMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 114
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iput p1, p0, Lcom/sea_monster/network/ApiReqeust;->method:I

    .line 115
    return-void
.end method

.method public setParams(Ljava/util/List;)V
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
    .line 130
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

    .line 131
    return-void
.end method

.method public setResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 138
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/ApiReqeust;->resName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setResStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "resStream"    # Ljava/io/InputStream;

    .prologue
    .line 146
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/ApiReqeust;->resStream:Ljava/io/InputStream;

    .line 147
    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 122
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust;, "Lcom/sea_monster/network/ApiReqeust<TT;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v5, "URI:%1$s\n"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sea_monster/network/ApiReqeust;->uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "i":I
    iget-object v5, p0, Lcom/sea_monster/network/ApiReqeust;->params:Ljava/util/List;

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

    .line 157
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

    .line 158
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 160
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
