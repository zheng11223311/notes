.class Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;
.super Ljava/lang/Object;
.source "ImageInputProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/ImageInputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadRunnable"
.end annotation


# instance fields
.field msg:Lio/rong/imlib/model/Message;

.field final synthetic this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/provider/ImageInputProvider;Lio/rong/imlib/model/Message;)V
    .locals 0
    .param p2, "msg"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 134
    iput-object p1, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->msg:Lio/rong/imlib/model/Message;

    .line 136
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    const-string v0, "UploadRunnable"

    const-string/jumbo v1, "sendImageMessage"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->msg:Lio/rong/imlib/model/Message;

    new-instance v2, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;-><init>(Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;)V

    invoke-virtual {v0, v1, v3, v3, v2}, Lio/rong/imkit/RongIMClientWrapper;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    .line 169
    return-void
.end method
