.class Lio/rong/imkit/tools/PictureFragment$1;
.super Ljava/lang/Object;
.source "PictureFragment.java"

# interfaces
.implements Lcom/sea_monster/resource/ResCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PictureFragment;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/PictureFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PictureFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lio/rong/imkit/tools/PictureFragment$1;->this$0:Lio/rong/imkit/tools/PictureFragment;

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
    .line 99
    .local p1, "abstractHttpRequest":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$1;->this$0:Lio/rong/imkit/tools/PictureFragment;

    const-string v1, "onComplete"

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$1;->this$0:Lio/rong/imkit/tools/PictureFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PictureFragment;->access$000(Lio/rong/imkit/tools/PictureFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/network/AbstractHttpRequest;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lio/rong/imkit/tools/PictureFragment$1;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/File;)V

    return-void
.end method

.method public onFailure(Lcom/sea_monster/network/AbstractHttpRequest;Lcom/sea_monster/exception/BaseException;)V
    .locals 3
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
    .line 105
    .local p1, "abstractHttpRequest":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$1;->this$0:Lio/rong/imkit/tools/PictureFragment;

    const-string v1, "onFailure"

    invoke-virtual {p2}, Lcom/sea_monster/exception/BaseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return-void
.end method
