.class Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;
.super Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
.source "ImageInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 144
    const-string v0, "UploadRunnable"

    const-string v1, "onAttached"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 5
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "code"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    invoke-direct {v2, v3, v0}, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;-><init>(Lio/rong/imkit/widget/provider/ImageInputProvider;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 151
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    :cond_0
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 0
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "progress"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 5
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    const/4 v4, 0x0

    .line 157
    const-string v0, "UploadRunnable"

    const-string v1, "onSuccess"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    invoke-direct {v2, v3, v0}, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;-><init>(Lio/rong/imkit/widget/provider/ImageInputProvider;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    :cond_0
    return-void
.end method
