.class Lio/rong/imlib/NativeClient$17;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$BizAckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0

    .prologue
    .line 1596
    iput-object p1, p0, Lio/rong/imlib/NativeClient$17;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$17;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(II)V
    .locals 3
    .param p1, "opStatus"    # I
    .param p2, "status"    # I

    .prologue
    .line 1599
    iget-object v0, p0, Lio/rong/imlib/NativeClient$17;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-nez v0, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1602
    :cond_0
    if-nez p1, :cond_2

    .line 1603
    iget-object v1, p0, Lio/rong/imlib/NativeClient$17;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->getValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->NOTIFY:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->getValue()I

    move-result v0

    goto :goto_1

    .line 1605
    :cond_2
    const-string/jumbo v0, "setConversationNotificationStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operationComplete: opStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lio/rong/imlib/NativeClient$17;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p2}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method
