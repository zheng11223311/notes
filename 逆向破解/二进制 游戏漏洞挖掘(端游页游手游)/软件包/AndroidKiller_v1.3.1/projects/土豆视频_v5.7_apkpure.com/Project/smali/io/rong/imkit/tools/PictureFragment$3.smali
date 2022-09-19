.class Lio/rong/imkit/tools/PictureFragment$3;
.super Ljava/lang/Object;
.source "PictureFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PictureFragment;->initPhoto(Landroid/net/Uri;)V
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
    .line 135
    iput-object p1, p0, Lio/rong/imkit/tools/PictureFragment$3;->this$0:Lio/rong/imkit/tools/PictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v0

    new-instance v1, Lcom/sea_monster/resource/Resource;

    iget-object v2, p0, Lio/rong/imkit/tools/PictureFragment$3;->this$0:Lio/rong/imkit/tools/PictureFragment;

    iget-object v2, v2, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/ResourceHandler;->containsInDiskCache(Lcom/sea_monster/resource/Resource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$3;->this$0:Lio/rong/imkit/tools/PictureFragment;

    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v1

    new-instance v2, Lcom/sea_monster/resource/Resource;

    iget-object v3, p0, Lio/rong/imkit/tools/PictureFragment$3;->this$0:Lio/rong/imkit/tools/PictureFragment;

    iget-object v3, v3, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/sea_monster/resource/ResourceHandler;->getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    .line 140
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$3;->this$0:Lio/rong/imkit/tools/PictureFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PictureFragment;->access$100(Lio/rong/imkit/tools/PictureFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lio/rong/imkit/tools/PictureFragment$3;->this$0:Lio/rong/imkit/tools/PictureFragment;

    iget-object v2, v2, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$3;->this$0:Lio/rong/imkit/tools/PictureFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PictureFragment;->access$200(Lio/rong/imkit/tools/PictureFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lio/rong/imkit/tools/PictureFragment$3;->this$0:Lio/rong/imkit/tools/PictureFragment;

    iget-object v2, v2, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
