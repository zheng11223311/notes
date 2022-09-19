.class Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "LocationInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;

.field final synthetic val$event:Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;Ljava/io/File;Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$event:Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 140
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->access$100(Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;)Lio/rong/imlib/model/Message;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 144
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/LocationInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$event:Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 152
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;

    invoke-static {v0}, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->access$100(Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;)Lio/rong/imlib/model/Message;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 153
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$event:Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setProgress(I)V

    .line 154
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->this$1:Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/LocationInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->val$event:Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
