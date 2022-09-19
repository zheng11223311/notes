.class Lcom/tudou/service/chat/ChatTipView$1;
.super Ljava/lang/Object;
.source "ChatTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/chat/ChatTipView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/chat/ChatTipView;


# direct methods
.method constructor <init>(Lcom/tudou/service/chat/ChatTipView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 65
    :try_start_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "chat_tip_view_error_extra"

    const-string v3, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatTipView;->access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "chat_close_all_view"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatTipView;->access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    :goto_0
    return-void

    .line 74
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatTipView;->access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->getClipData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "clipStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/youku/vo/ChatDialogInfo;->matchRegex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatTipView;->access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->clearClipData(Landroid/content/Context;)V

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatTipView;->access$100(Lcom/tudou/service/chat/ChatTipView;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 80
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v2, v3}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 81
    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatTipView;->access$100(Lcom/tudou/service/chat/ChatTipView;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v3}, Lcom/tudou/service/chat/ChatTipView;->access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/vo/ChatDialogInfo;->goDetailActivity(Landroid/content/Context;)V

    .line 84
    :cond_2
    const-string v2, "t1.chat_join.share"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "chat_close_all_view"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatTipView;->access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    .end local v0    # "clipStr":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "chat_close_all_view"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatTipView;->access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "chat_close_all_view"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    iget-object v3, p0, Lcom/tudou/service/chat/ChatTipView$1;->this$0:Lcom/tudou/service/chat/ChatTipView;

    invoke-static {v3}, Lcom/tudou/service/chat/ChatTipView;->access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    throw v2
.end method
