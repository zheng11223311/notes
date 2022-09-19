.class Lcom/sea_monster/resource/ResourceHandler$2;
.super Lcom/sea_monster/resource/ResRequest;
.source "ResourceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sea_monster/resource/ResourceHandler;->requestResource(Lcom/sea_monster/resource/Resource;Lcom/sea_monster/resource/ResCallback;Lcom/sea_monster/network/StoreStatusCallback;)Lcom/sea_monster/network/AbstractHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sea_monster/resource/ResourceHandler;

.field final synthetic val$callback:Lcom/sea_monster/resource/ResCallback;

.field final synthetic val$resource:Lcom/sea_monster/resource/Resource;


# direct methods
.method constructor <init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Lcom/sea_monster/network/StoreStatusCallback;Lcom/sea_monster/resource/ResCallback;Lcom/sea_monster/resource/Resource;)V
    .locals 0
    .param p2, "x0"    # Lcom/sea_monster/resource/ResourceHandler;
    .param p3, "x1"    # Lcom/sea_monster/resource/Resource;
    .param p4, "x2"    # Lcom/sea_monster/network/StoreStatusCallback;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    iput-object p5, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$callback:Lcom/sea_monster/resource/ResCallback;

    iput-object p6, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$resource:Lcom/sea_monster/resource/Resource;

    invoke-direct {p0, p2, p3, p4}, Lcom/sea_monster/resource/ResRequest;-><init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Lcom/sea_monster/network/StoreStatusCallback;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/File;)V
    .locals 5
    .param p2, "obj"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$callback:Lcom/sea_monster/resource/ResCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$callback:Lcom/sea_monster/resource/ResCallback;

    invoke-interface {v0, p1, p2}, Lcom/sea_monster/resource/ResCallback;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    invoke-static {v0}, Lcom/sea_monster/resource/ResourceHandler;->access$500(Lcom/sea_monster/resource/ResourceHandler;)V

    .line 182
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    iget-object v0, v0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$resource:Lcom/sea_monster/resource/Resource;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    new-instance v1, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;

    iget-object v2, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    iget-object v3, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$resource:Lcom/sea_monster/resource/Resource;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;-><init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Z)V

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/ResourceHandler;->notifyObservers(Ljava/lang/Object;)V

    .line 184
    const-string v0, "requestResource"

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/network/AbstractHttpRequest;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/resource/ResourceHandler$2;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/File;)V

    return-void
.end method

.method public onFailure(Lcom/sea_monster/network/AbstractHttpRequest;Lcom/sea_monster/exception/BaseException;)V
    .locals 5
    .param p2, "e"    # Lcom/sea_monster/exception/BaseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/sea_monster/exception/BaseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$callback:Lcom/sea_monster/resource/ResCallback;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$callback:Lcom/sea_monster/resource/ResCallback;

    invoke-interface {v0, p1, p2}, Lcom/sea_monster/resource/ResCallback;->onFailure(Lcom/sea_monster/network/AbstractHttpRequest;Lcom/sea_monster/exception/BaseException;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    invoke-static {v0}, Lcom/sea_monster/resource/ResourceHandler;->access$600(Lcom/sea_monster/resource/ResourceHandler;)V

    .line 192
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    iget-object v0, v0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$resource:Lcom/sea_monster/resource/Resource;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    new-instance v1, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;

    iget-object v2, p0, Lcom/sea_monster/resource/ResourceHandler$2;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    iget-object v3, p0, Lcom/sea_monster/resource/ResourceHandler$2;->val$resource:Lcom/sea_monster/resource/Resource;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;-><init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Z)V

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/ResourceHandler;->notifyObservers(Ljava/lang/Object;)V

    .line 194
    const-string v0, "requestResource"

    invoke-virtual {p2}, Lcom/sea_monster/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method
