.class Lcom/tudou/android/chat/ChatManager$10;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->setOnSendButtonClickListener()V
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
    .line 581
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 584
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    .line 585
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 586
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 587
    iget-object v8, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v8}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-nez v8, :cond_0

    .line 614
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v8, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v8}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 589
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onSendBlankMessage()V

    .line 590
    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 591
    const-string v8, ""

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 594
    .end local v0    # "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    :cond_2
    const/4 v3, 0x0

    .line 595
    .local v3, "isNeedCheck":Z
    sget-object v8, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    if-eqz v8, :cond_3

    sget-object v8, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    invoke-virtual {v8}, Lcom/youku/vo/TudouSwitchesBean;->getSensitiveSwitch()Z

    move-result v3

    .line 596
    :cond_3
    if-eqz v3, :cond_4

    .line 597
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/rong/message/TextMessage;->obtain(Ljava/lang/String;)Lio/rong/message/TextMessage;

    move-result-object v6

    .line 598
    .local v6, "textMessage":Lio/rong/message/TextMessage;
    new-instance v7, Lio/rong/imlib/model/UserInfo;

    iget-object v8, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v8}, Lcom/tudou/android/chat/ChatManager;->access$300(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v9}, Lcom/tudou/android/chat/ChatManager;->access$800(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v10}, Lcom/tudou/android/chat/ChatManager;->access$900(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 599
    .local v7, "userInfo":Lio/rong/imlib/model/UserInfo;
    invoke-virtual {v6, v7}, Lio/rong/message/TextMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 600
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v8

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v10, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v10}, Lcom/tudou/android/chat/ChatManager;->access$1000(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v11}, Lcom/tudou/android/chat/ChatManager;->access$300(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11, v6}, Lio/rong/imkit/RongIMClientWrapper;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v4

    .line 606
    .local v4, "message":Lio/rong/imlib/model/Message;
    iget-object v8, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Lcom/tudou/android/chat/ChatManager;->checkChatText(Lio/rong/imlib/model/Message;Ljava/lang/String;)V

    .line 610
    .end local v4    # "message":Lio/rong/imlib/model/Message;
    .end local v6    # "textMessage":Lio/rong/message/TextMessage;
    .end local v7    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 611
    const-string v8, ""

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 613
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 608
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v8, p0, Lcom/tudou/android/chat/ChatManager$10;->this$0:Lcom/tudou/android/chat/ChatManager;

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/tudou/android/chat/ChatManager;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;)V

    goto :goto_1
.end method
