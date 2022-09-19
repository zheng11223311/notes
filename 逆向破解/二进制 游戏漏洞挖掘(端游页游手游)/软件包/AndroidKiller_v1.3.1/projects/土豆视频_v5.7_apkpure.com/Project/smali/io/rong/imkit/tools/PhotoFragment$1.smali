.class Lio/rong/imkit/tools/PhotoFragment$1;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PhotoFragment;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/PhotoFragment;

.field final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PhotoFragment;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$1;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v1

    new-instance v2, Lcom/sea_monster/resource/Resource;

    iget-object v3, p0, Lio/rong/imkit/tools/PhotoFragment$1;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    new-instance v3, Lio/rong/imkit/tools/PhotoFragment$1$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/tools/PhotoFragment$1$1;-><init>(Lio/rong/imkit/tools/PhotoFragment$1;)V

    iget-object v4, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {v4}, Lio/rong/imkit/tools/PhotoFragment;->access$200(Lio/rong/imkit/tools/PhotoFragment;)Lcom/sea_monster/network/StoreStatusCallback;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sea_monster/resource/ResourceHandler;->requestResource(Lcom/sea_monster/resource/Resource;Lcom/sea_monster/resource/ResCallback;Lcom/sea_monster/network/StoreStatusCallback;)Lcom/sea_monster/network/AbstractHttpRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
