.class Lio/rong/imkit/widget/provider/VoiceInputProvider$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "VoiceInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/VoiceInputProvider;->stopRec(Z)V
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
.field final synthetic this$0:Lio/rong/imkit/widget/provider/VoiceInputProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/VoiceInputProvider;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/VoiceInputProvider;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 370
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 3
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 362
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    .line 363
    .local v0, "status":Lio/rong/imlib/model/Message$ReceivedStatus;
    invoke-virtual {v0}, Lio/rong/imlib/model/Message$ReceivedStatus;->setListened()V

    .line 364
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lio/rong/imkit/RongIMClientWrapper;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z

    .line 365
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 359
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/VoiceInputProvider$1;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method
