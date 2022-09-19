.class Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;
.super Ljava/util/TimerTask;
.source "ListenClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/chat/ListenClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/chat/ListenClipboardService;


# direct methods
.method constructor <init>(Lcom/tudou/service/chat/ListenClipboardService;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;->this$0:Lcom/tudou/service/chat/ListenClipboardService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;->this$0:Lcom/tudou/service/chat/ListenClipboardService;

    invoke-static {v1}, Lcom/tudou/service/chat/ListenClipboardService;->access$000(Lcom/tudou/service/chat/ListenClipboardService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 166
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;->this$0:Lcom/tudou/service/chat/ListenClipboardService;

    invoke-static {v1}, Lcom/tudou/service/chat/ListenClipboardService;->access$100(Lcom/tudou/service/chat/ListenClipboardService;)Lcom/tudou/service/chat/ChatTipView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_info"

    iget-object v2, p0, Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;->this$0:Lcom/tudou/service/chat/ListenClipboardService;

    invoke-static {v2}, Lcom/tudou/service/chat/ListenClipboardService;->access$100(Lcom/tudou/service/chat/ListenClipboardService;)Lcom/tudou/service/chat/ChatTipView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/service/chat/ChatTipView;->getChatInfo()Lcom/youku/vo/ChatDialogInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;->this$0:Lcom/tudou/service/chat/ListenClipboardService;

    invoke-virtual {v1, v0}, Lcom/tudou/service/chat/ListenClipboardService;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;->this$0:Lcom/tudou/service/chat/ListenClipboardService;

    invoke-static {v1}, Lcom/tudou/service/chat/ListenClipboardService;->access$100(Lcom/tudou/service/chat/ListenClipboardService;)Lcom/tudou/service/chat/ChatTipView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/service/chat/ChatTipView;->removePoppedViewAndClear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method
