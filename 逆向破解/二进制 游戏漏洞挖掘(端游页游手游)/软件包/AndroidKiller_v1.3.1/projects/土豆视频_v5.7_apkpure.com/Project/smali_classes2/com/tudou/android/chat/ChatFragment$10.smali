.class Lcom/tudou/android/chat/ChatFragment$10;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatFragment;->onUnReadMessage()V
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
    .line 723
    iput-object p1, p0, Lcom/tudou/android/chat/ChatFragment$10;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 726
    const-string v0, "byron"

    const-string v1, "onUnReadMessage();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatManager;->showChatIconRedDot()V

    .line 728
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment$10;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatFragment;->access$400(Lcom/tudou/android/chat/ChatFragment;)Lcom/tudou/android/chat/ChatCreatedResultView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatCreatedResultView;->setRedIconToogle(Z)V

    .line 729
    return-void
.end method
