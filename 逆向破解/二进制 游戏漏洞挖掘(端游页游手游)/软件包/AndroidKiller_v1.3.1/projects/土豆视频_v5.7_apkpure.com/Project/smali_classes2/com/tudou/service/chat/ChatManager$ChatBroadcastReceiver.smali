.class Lcom/tudou/service/chat/ChatManager$ChatBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/chat/ChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChatBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/chat/ChatManager;


# direct methods
.method constructor <init>(Lcom/tudou/service/chat/ChatManager;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/tudou/service/chat/ChatManager$ChatBroadcastReceiver;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    if-eqz p2, :cond_0

    .line 354
    const-string v3, "chat_tip_view_error_extra"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "tipStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 357
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    invoke-static {v2, v4, v5, v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;JZ)V

    .line 373
    .end local v2    # "tipStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 361
    .restart local v2    # "tipStr":Ljava/lang/String;
    :cond_1
    const-string v3, "chat_close_all_view"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 362
    .local v1, "isCloseView":Z
    if-eqz v1, :cond_2

    .line 363
    iget-object v3, p0, Lcom/tudou/service/chat/ChatManager$ChatBroadcastReceiver;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-virtual {v3}, Lcom/tudou/service/chat/ChatManager;->closeAllView()V

    goto :goto_0

    .line 367
    :cond_2
    const-string v3, "chat_info"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 368
    const-string v3, "chat_info"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChatDialogInfo;

    .line 369
    .local v0, "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    iget-object v3, p0, Lcom/tudou/service/chat/ChatManager$ChatBroadcastReceiver;->this$0:Lcom/tudou/service/chat/ChatManager;

    iget-object v4, p0, Lcom/tudou/service/chat/ChatManager$ChatBroadcastReceiver;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-virtual {v4, v0}, Lcom/tudou/service/chat/ChatManager;->getNotification(Lcom/youku/vo/ChatDialogInfo;)Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/service/chat/ChatManager;->access$200(Lcom/tudou/service/chat/ChatManager;Landroid/app/Notification;)V

    goto :goto_0
.end method
