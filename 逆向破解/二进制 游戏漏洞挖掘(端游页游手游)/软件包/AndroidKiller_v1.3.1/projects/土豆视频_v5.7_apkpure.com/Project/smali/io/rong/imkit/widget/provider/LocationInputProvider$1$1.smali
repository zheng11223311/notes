.class Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "LocationInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/LocationInputProvider$1;->onSuccess(Lio/rong/message/LocationMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$1;

.field final synthetic val$locationMessage:Lio/rong/message/LocationMessage;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/LocationInputProvider$1;Lio/rong/message/LocationMessage;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$1;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->val$locationMessage:Lio/rong/message/LocationMessage;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 80
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 4
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->val$locationMessage:Lio/rong/message/LocationMessage;

    invoke-virtual {v0}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->val$locationMessage:Lio/rong/message/LocationMessage;

    invoke-virtual {v0}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->val$locationMessage:Lio/rong/message/LocationMessage;

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 67
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$1;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/LocationInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;

    iget-object v2, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$1;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/LocationInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->val$locationMessage:Lio/rong/message/LocationMessage;

    invoke-virtual {v3}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;-><init>(Lio/rong/imkit/widget/provider/LocationInputProvider;Lio/rong/imlib/model/Message;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 76
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->val$locationMessage:Lio/rong/message/LocationMessage;

    invoke-virtual {v0}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v2, v2}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "onPluginClick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->val$locationMessage:Lio/rong/message/LocationMessage;

    invoke-virtual {v2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scheme does not support!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "onPluginClick"

    const-string v1, "File does not exist!"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method
