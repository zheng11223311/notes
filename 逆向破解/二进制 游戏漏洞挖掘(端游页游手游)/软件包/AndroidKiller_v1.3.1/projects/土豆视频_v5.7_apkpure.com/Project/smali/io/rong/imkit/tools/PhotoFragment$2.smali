.class Lio/rong/imkit/tools/PhotoFragment$2;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lcom/sea_monster/network/StoreStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/PhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/PhotoFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PhotoFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$2;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public statusCallback(Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;)V
    .locals 6
    .param p1, "storeStatus"    # Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    .prologue
    .line 160
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$2;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-static {v0}, Lio/rong/imkit/tools/PhotoFragment;->access$300(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->getTotalSize()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->getReceivedSize()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    return-void
.end method

.method public bridge synthetic statusCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/tools/PhotoFragment$2;->statusCallback(Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;)V

    return-void
.end method
