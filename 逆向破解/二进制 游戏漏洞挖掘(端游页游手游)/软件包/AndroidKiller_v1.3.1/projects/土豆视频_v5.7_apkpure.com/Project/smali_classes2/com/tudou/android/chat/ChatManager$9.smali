.class Lcom/tudou/android/chat/ChatManager$9;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lio/rong/imkit/RongIM$ConversationBehaviorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->setOnMessageClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatManager;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatManager;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$9;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imlib/model/Message;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    const/4 v2, 0x1

    .line 543
    const-string v3, "byron"

    const-string v4, "onMessageClick();"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p3}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    .line 545
    .local v1, "content":Lio/rong/imlib/model/MessageContent;
    instance-of v3, v1, Lio/rong/imkit/tudou/YTContentMessage;

    if-eqz v3, :cond_2

    .line 546
    const-string v3, "byron"

    const-string v4, "content instanceof YTContentMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager$9;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v3}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v2

    .line 548
    :cond_1
    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager$9;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v3}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 549
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onVideoMessageClick(Lio/rong/imlib/model/MessageContent;)V

    goto :goto_0

    .line 552
    .end local v0    # "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMessageLinkClick(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "link"    # Ljava/lang/String;

    .prologue
    .line 557
    const-string v0, "byron"

    const-string v1, "onMessageLinkClick();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageLongClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imlib/model/Message;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 563
    const-string v1, "byron"

    const-string v2, "onMessageLongClick();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p3}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 565
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    instance-of v1, v0, Lio/rong/imkit/tudou/YTContentMessage;

    if-eqz v1, :cond_0

    .line 566
    const-string v1, "byron"

    const-string v2, "onMessageLongClick content instanceof YTContentMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v1, 0x1

    .line 569
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUserPortraitClick(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/UserInfo;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p3, "user"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 530
    const-string v0, "byron"

    const-string v1, "onUserPortraitClick();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public onUserPortraitLongClick(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/UserInfo;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p3, "user"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 537
    const-string v0, "byron"

    const-string v1, "onUserPortraitLongClick();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x0

    return v0
.end method
