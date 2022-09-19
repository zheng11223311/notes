.class Lcom/sea_monster/resource/ResRequest$1;
.super Lcom/sea_monster/network/AbstractHttpRequest;
.source "ResRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sea_monster/resource/ResRequest;->obtainRequest()Lcom/sea_monster/network/AbstractHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sea_monster/network/AbstractHttpRequest",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sea_monster/resource/ResRequest;


# direct methods
.method constructor <init>(Lcom/sea_monster/resource/ResRequest;ILjava/net/URI;Ljava/util/List;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/net/URI;

    .prologue
    .line 42
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/sea_monster/resource/ResRequest$1;->this$0:Lcom/sea_monster/resource/ResRequest;

    invoke-direct {p0, p2, p3, p4}, Lcom/sea_monster/network/AbstractHttpRequest;-><init>(ILjava/net/URI;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/File;)V
    .locals 1
    .param p1, "obj"    # Ljava/io/File;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sea_monster/resource/ResRequest$1;->this$0:Lcom/sea_monster/resource/ResRequest;

    invoke-virtual {v0, p0, p1}, Lcom/sea_monster/resource/ResRequest;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sea_monster/resource/ResRequest$1;->onComplete(Ljava/io/File;)V

    return-void
.end method

.method public onFailure(Lcom/sea_monster/exception/BaseException;)V
    .locals 1
    .param p1, "e"    # Lcom/sea_monster/exception/BaseException;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sea_monster/resource/ResRequest$1;->this$0:Lcom/sea_monster/resource/ResRequest;

    invoke-virtual {v0, p0, p1}, Lcom/sea_monster/resource/ResRequest;->onFailure(Lcom/sea_monster/network/AbstractHttpRequest;Lcom/sea_monster/exception/BaseException;)V

    .line 52
    return-void
.end method

.method public processReadyRequest(Lorg/apache/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 47
    return-void
.end method
