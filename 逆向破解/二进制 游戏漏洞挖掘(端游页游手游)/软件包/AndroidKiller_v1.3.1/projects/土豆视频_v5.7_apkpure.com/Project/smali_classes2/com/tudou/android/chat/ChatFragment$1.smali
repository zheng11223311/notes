.class Lcom/tudou/android/chat/ChatFragment$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatFragment;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/tudou/android/chat/ChatFragment$1;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 440
    const-string v0, "t1.chat_create.signout"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 441
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/service/chat/ChatManager;->dismissChatIcon(Z)V

    .line 442
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->quitChatRoom()V

    .line 443
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment$1;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatFragment;->hideSelf()V

    .line 444
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 445
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment$1;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatFragment;->access$000(Lcom/tudou/android/chat/ChatFragment;)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 446
    return-void
.end method
