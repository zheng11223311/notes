.class Lio/rong/imlib/NativeClient$13;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$PublishAckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->sendStatusMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;ILio/rong/imlib/NativeClient$IResultCallback;)Lio/rong/imlib/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;Lio/rong/imlib/model/Message;)V
    .locals 0

    .prologue
    .line 1332
    iput-object p1, p0, Lio/rong/imlib/NativeClient$13;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$13;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    iput-object p3, p0, Lio/rong/imlib/NativeClient$13;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(ILjava/lang/String;J)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msgUId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .prologue
    .line 1336
    iget-object v0, p0, Lio/rong/imlib/NativeClient$13;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-nez v0, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1339
    :cond_0
    if-nez p1, :cond_1

    .line 1340
    iget-object v0, p0, Lio/rong/imlib/NativeClient$13;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    iget-object v1, p0, Lio/rong/imlib/NativeClient$13;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1342
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient$13;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method
