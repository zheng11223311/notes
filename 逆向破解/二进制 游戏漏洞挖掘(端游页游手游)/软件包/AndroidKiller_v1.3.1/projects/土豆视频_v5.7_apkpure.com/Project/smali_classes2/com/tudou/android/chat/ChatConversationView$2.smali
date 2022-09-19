.class Lcom/tudou/android/chat/ChatConversationView$2;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "ChatConversationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatConversationView;->sendMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatConversationView;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatConversationView;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tudou/android/chat/ChatConversationView$2;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 135
    const-string v0, "TestChatRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---onError--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 140
    const-string v0, "TestChatRoomActivity"

    const-string v1, "---onSuccess--"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tudou/android/chat/ChatConversationView$2;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
