.class Lio/rong/imkit/RongIMClientWrapper$28;
.super Ljava/lang/Object;
.source "RongIMClientWrapper.java"

# interfaces
.implements Lcom/sea_monster/network/StoreStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->downloadMedia(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
    .locals 0

    .prologue
    .line 2139
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$28;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$28;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public statusCallback(Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;)V
    .locals 4
    .param p1, "storeStatus"    # Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    .prologue
    .line 2143
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$28;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$28;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-virtual {p1}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->getPercent()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onProgress(I)V

    .line 2146
    :cond_0
    return-void
.end method

.method public bridge synthetic statusCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2139
    check-cast p1, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIMClientWrapper$28;->statusCallback(Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;)V

    return-void
.end method
