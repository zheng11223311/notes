.class Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback$2;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

.field final synthetic val$code:Lio/rong/imlib/RongIMClient$ErrorCode;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0

    .prologue
    .line 6001
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback$2;->this$0:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback$2;->val$message:Lio/rong/imlib/model/Message;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback$2;->val$code:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6004
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback$2;->this$0:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback$2;->val$message:Lio/rong/imlib/model/Message;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback$2;->val$code:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 6005
    return-void
.end method
