.class Lio/rong/imkit/RongIMClientWrapper$2$1;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper$2;->onReceived(Lio/rong/imlib/model/Message;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper$2;

.field final synthetic val$left:I

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper$2;Lio/rong/imlib/model/Message;I)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$2$1;->this$0:Lio/rong/imkit/RongIMClientWrapper$2;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$2$1;->val$message:Lio/rong/imlib/model/Message;

    iput p3, p0, Lio/rong/imkit/RongIMClientWrapper$2$1;->val$left:I

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 196
    const-string v0, "RongIMClientWrapper : updateMessageReceiptStatus"

    const-string v1, "fail"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 191
    sget-object v0, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;

    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$2$1;->val$message:Lio/rong/imlib/model/Message;

    iget v3, p0, Lio/rong/imkit/RongIMClientWrapper$2$1;->val$left:I

    invoke-direct {v1, v2, v3}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;-><init>(Lio/rong/imlib/model/Message;I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 192
    return-void
.end method
