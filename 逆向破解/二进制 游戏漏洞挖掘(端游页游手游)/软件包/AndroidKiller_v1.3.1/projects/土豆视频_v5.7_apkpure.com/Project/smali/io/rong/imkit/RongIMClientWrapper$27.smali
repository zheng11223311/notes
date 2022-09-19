.class Lio/rong/imkit/RongIMClientWrapper$27;
.super Ljava/lang/Object;
.source "RongIMClientWrapper.java"

# interfaces
.implements Lcom/sea_monster/resource/ResCallback;


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
    .line 2125
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$27;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$27;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/File;)V
    .locals 2
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
    .line 2129
    .local p1, "abstractHttpRequest":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$27;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$27;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onSuccess(Ljava/lang/Object;)V

    .line 2132
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/network/AbstractHttpRequest;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2125
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$27;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/File;)V

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
    .line 2136
    .local p1, "abstractHttpRequest":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$27;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    const-string v1, "downloadMedia"

    invoke-virtual {p2}, Lcom/sea_monster/exception/BaseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    return-void
.end method
