.class Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

.field final synthetic val$code:Lio/rong/imlib/RongIMClient$ErrorCode;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0

    .prologue
    .line 6075
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;->this$0:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;->val$message:Lio/rong/imlib/model/Message;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;->val$code:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6078
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;->this$0:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;->val$message:Lio/rong/imlib/model/Message;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;->val$code:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 6079
    return-void
.end method
