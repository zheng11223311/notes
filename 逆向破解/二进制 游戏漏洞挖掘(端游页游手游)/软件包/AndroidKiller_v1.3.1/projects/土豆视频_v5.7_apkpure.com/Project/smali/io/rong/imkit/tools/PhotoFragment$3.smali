.class Lio/rong/imkit/tools/PhotoFragment$3;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PhotoFragment;->initPhoto(Landroid/net/Uri;Landroid/net/Uri;Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/PhotoFragment;

.field final synthetic val$thumbnail:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PhotoFragment;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    iput-object p2, p0, Lio/rong/imkit/tools/PhotoFragment$3;->val$thumbnail:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 179
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PhotoFragment;->access$400(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v0

    new-instance v1, Lcom/sea_monster/resource/Resource;

    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    iget-object v2, v2, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/ResourceHandler;->containsInDiskCache(Lcom/sea_monster/resource/Resource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v1

    new-instance v2, Lcom/sea_monster/resource/Resource;

    iget-object v3, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    iget-object v3, v3, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/sea_monster/resource/ResourceHandler;->getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    .line 184
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PhotoFragment;->access$500(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    iget-object v1, v1, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PhotoFragment;->access$600(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$3;->val$thumbnail:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PhotoFragment;->access$700(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$3;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    iget-object v2, v2, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
