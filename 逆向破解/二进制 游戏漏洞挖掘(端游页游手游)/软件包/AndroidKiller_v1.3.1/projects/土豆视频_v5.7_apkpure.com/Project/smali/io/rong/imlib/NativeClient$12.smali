.class Lio/rong/imlib/NativeClient$12;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$PublishAckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultSendMessageCallback;)Lio/rong/imlib/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultSendMessageCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultSendMessageCallback;Lio/rong/imlib/model/Message;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lio/rong/imlib/NativeClient$12;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$12;->val$callback:Lio/rong/imlib/NativeClient$IResultSendMessageCallback;

    iput-object p3, p0, Lio/rong/imlib/NativeClient$12;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(ILjava/lang/String;J)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msgUId"    # Ljava/lang/String;
    .param p3, "sendTime"    # J

    .prologue
    .line 1262
    iget-object v0, p0, Lio/rong/imlib/NativeClient$12;->val$callback:Lio/rong/imlib/NativeClient$IResultSendMessageCallback;

    if-nez v0, :cond_0

    .line 1271
    :goto_0
    return-void

    .line 1264
    :cond_0
    if-nez p1, :cond_1

    .line 1265
    iget-object v0, p0, Lio/rong/imlib/NativeClient$12;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v0, p3, p4}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1266
    iget-object v0, p0, Lio/rong/imlib/NativeClient$12;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Message;->setUId(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lio/rong/imlib/NativeClient$12;->val$callback:Lio/rong/imlib/NativeClient$IResultSendMessageCallback;

    iget-object v1, p0, Lio/rong/imlib/NativeClient$12;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imlib/NativeClient$IResultSendMessageCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1269
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient$12;->val$callback:Lio/rong/imlib/NativeClient$IResultSendMessageCallback;

    iget-object v1, p0, Lio/rong/imlib/NativeClient$12;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/rong/imlib/NativeClient$IResultSendMessageCallback;->onError(Ljava/lang/Object;I)V

    goto :goto_0
.end method
