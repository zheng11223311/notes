.class Lcom/tudou/android/chat/ChatFragment$6;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/chat/ChatFragment;
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
    .line 629
    iput-object p1, p0, Lcom/tudou/android/chat/ChatFragment$6;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment$6;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatFragment;->access$100(Lcom/tudou/android/chat/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment$6;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatFragment;->access$200(Lcom/tudou/android/chat/ChatFragment;)Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4"

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showLoadingView(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->joinChatRoom(Ljava/lang/String;)V

    goto :goto_0
.end method
