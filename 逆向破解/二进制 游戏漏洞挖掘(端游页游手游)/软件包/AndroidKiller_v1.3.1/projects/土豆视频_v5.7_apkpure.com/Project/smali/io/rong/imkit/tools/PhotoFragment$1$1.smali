.class Lio/rong/imkit/tools/PhotoFragment$1$1;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lcom/sea_monster/resource/ResCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PhotoFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/tools/PhotoFragment$1;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PhotoFragment$1;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$1$1;->this$1:Lio/rong/imkit/tools/PhotoFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/File;)V
    .locals 3
    .param p2, "file"    # Ljava/io/File;
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
    .line 90
    .local p1, "abstractHttpRequest":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$1$1;->this$1:Lio/rong/imkit/tools/PhotoFragment$1;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    const-string v1, "onComplete"

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$1$1;->this$1:Lio/rong/imkit/tools/PhotoFragment$1;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PhotoFragment;->access$000(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/network/AbstractHttpRequest;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lio/rong/imkit/tools/PhotoFragment$1$1;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/File;)V

    return-void
.end method

.method public onFailure(Lcom/sea_monster/network/AbstractHttpRequest;Lcom/sea_monster/exception/BaseException;)V
    .locals 4
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
    .line 96
    .local p1, "abstractHttpRequest":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$1$1;->this$1:Lio/rong/imkit/tools/PhotoFragment$1;

    iget-object v1, v1, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    const-string v2, "onFailure"

    invoke-virtual {p2}, Lcom/sea_monster/exception/BaseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v1

    new-instance v2, Lcom/sea_monster/resource/Resource;

    iget-object v3, p0, Lio/rong/imkit/tools/PhotoFragment$1$1;->this$1:Lio/rong/imkit/tools/PhotoFragment$1;

    iget-object v3, v3, Lio/rong/imkit/tools/PhotoFragment$1;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/sea_monster/resource/ResourceHandler;->getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$1$1;->this$1:Lio/rong/imkit/tools/PhotoFragment$1;

    iget-object v1, v1, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {v1}, Lio/rong/imkit/tools/PhotoFragment;->access$100(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 102
    return-void
.end method
