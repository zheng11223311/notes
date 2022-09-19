.class Lio/rong/imkit/tools/PictureFragment$2;
.super Ljava/lang/Object;
.source "PictureFragment.java"

# interfaces
.implements Lcom/sea_monster/network/StoreStatusCallback;


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
    .line 108
    iput-object p1, p0, Lio/rong/imkit/tools/PictureFragment$2;->this$0:Lio/rong/imkit/tools/PictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public statusCallback(Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;)V
    .locals 3
    .param p1, "storeStatus"    # Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    .prologue
    .line 111
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$2;->this$0:Lio/rong/imkit/tools/PictureFragment;

    const-string/jumbo v1, "statusCallback"

    invoke-virtual {p1}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public bridge synthetic statusCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/tools/PictureFragment$2;->statusCallback(Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;)V

    return-void
.end method
