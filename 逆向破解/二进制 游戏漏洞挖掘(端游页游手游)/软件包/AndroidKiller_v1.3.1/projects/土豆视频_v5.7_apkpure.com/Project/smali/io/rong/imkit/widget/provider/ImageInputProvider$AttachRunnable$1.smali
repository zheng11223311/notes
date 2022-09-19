.class Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ImageInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->run()V
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
.field final synthetic this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 124
    const-string v0, "AttachRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError insert image, error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 5
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    const/4 v4, 0x0

    .line 112
    const-string v0, "AttachRunnable"

    const-string v1, "onSuccess insert image"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 114
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 115
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v1}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$100(Lio/rong/imkit/widget/provider/ImageInputProvider;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    invoke-direct {v2, v3, v0}, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;-><init>(Lio/rong/imkit/widget/provider/ImageInputProvider;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 118
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method
