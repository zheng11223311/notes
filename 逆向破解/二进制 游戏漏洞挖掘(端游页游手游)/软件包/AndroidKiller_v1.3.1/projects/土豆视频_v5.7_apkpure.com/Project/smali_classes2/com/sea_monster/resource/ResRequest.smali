.class public abstract Lcom/sea_monster/resource/ResRequest;
.super Ljava/lang/Object;
.source "ResRequest.java"

# interfaces
.implements Lcom/sea_monster/resource/ResCallback;


# instance fields
.field private handler:Lcom/sea_monster/resource/ResourceHandler;

.field private res:Lcom/sea_monster/resource/Resource;

.field private storeStatusCallback:Lcom/sea_monster/network/StoreStatusCallback;


# direct methods
.method public constructor <init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;)V
    .locals 1
    .param p1, "handler"    # Lcom/sea_monster/resource/ResourceHandler;
    .param p2, "res"    # Lcom/sea_monster/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sea_monster/resource/ResRequest;-><init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Lcom/sea_monster/network/StoreStatusCallback;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Lcom/sea_monster/network/StoreStatusCallback;)V
    .locals 4
    .param p1, "handler"    # Lcom/sea_monster/resource/ResourceHandler;
    .param p2, "res"    # Lcom/sea_monster/resource/Resource;
    .param p3, "callback"    # Lcom/sea_monster/network/StoreStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p2}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "resScheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Ljava/net/URISyntaxException;

    invoke-virtual {p2}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scheme invilidate fail"

    invoke-direct {v1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/sea_monster/resource/ResRequest;->handler:Lcom/sea_monster/resource/ResourceHandler;

    .line 31
    iput-object p3, p0, Lcom/sea_monster/resource/ResRequest;->storeStatusCallback:Lcom/sea_monster/network/StoreStatusCallback;

    .line 32
    iput-object p2, p0, Lcom/sea_monster/resource/ResRequest;->res:Lcom/sea_monster/resource/Resource;

    .line 33
    return-void
.end method


# virtual methods
.method public getStoreStatusCallback()Lcom/sea_monster/network/StoreStatusCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sea_monster/resource/ResRequest;->storeStatusCallback:Lcom/sea_monster/network/StoreStatusCallback;

    return-object v0
.end method

.method public obtainRequest()Lcom/sea_monster/network/AbstractHttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/sea_monster/resource/ResRequest$1;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sea_monster/resource/ResRequest;->res:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/resource/ResRequest$1;-><init>(Lcom/sea_monster/resource/ResRequest;ILjava/net/URI;Ljava/util/List;)V

    .line 60
    .local v0, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/sea_monster/resource/ResRequest;->storeStatusCallback:Lcom/sea_monster/network/StoreStatusCallback;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/sea_monster/resource/ResRequest;->storeStatusCallback:Lcom/sea_monster/network/StoreStatusCallback;

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->setStatusCallback(Lcom/sea_monster/network/StatusCallback;)V

    .line 64
    :cond_0
    new-instance v1, Lcom/sea_monster/resource/ResParser;

    iget-object v2, p0, Lcom/sea_monster/resource/ResRequest;->handler:Lcom/sea_monster/resource/ResourceHandler;

    iget-object v3, p0, Lcom/sea_monster/resource/ResRequest;->res:Lcom/sea_monster/resource/Resource;

    invoke-direct {v1, v2, v3}, Lcom/sea_monster/resource/ResParser;-><init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;)V

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->setParser(Lcom/sea_monster/network/parser/IEntityParser;)V

    .line 66
    return-object v0
.end method
