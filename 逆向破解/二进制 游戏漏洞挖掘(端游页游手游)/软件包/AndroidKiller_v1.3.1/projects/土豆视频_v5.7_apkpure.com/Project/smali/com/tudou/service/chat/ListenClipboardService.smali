.class public final Lcom/tudou/service/chat/ListenClipboardService;
.super Landroid/app/Service;
.source "ListenClipboardService.java"

# interfaces
.implements Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;,
        Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;
    }
.end annotation


# static fields
.field private static final CHAT_WATCH_KEY:Ljava/lang/String; = "chat_watch"

.field private static final DEFAULT_HOME_LOAD_TIME:I = 0x1388


# instance fields
.field private isOpenWatch:Z

.field private mChatTipView:Lcom/tudou/service/chat/ChatTipView;

.field private mClipboardListener:Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;

.field private mClipboardManager:Landroid/content/ClipboardManager;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->isOpenWatch:Z

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/chat/ListenClipboardService;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/ListenClipboardService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/service/chat/ListenClipboardService;)Lcom/tudou/service/chat/ChatTipView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/ListenClipboardService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/service/chat/ListenClipboardService;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/chat/ListenClipboardService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tudou/service/chat/ListenClipboardService;->performClipboardCheck()V

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 186
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/tudou/service/chat/ListenClipboardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 187
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/tudou/service/chat/ChatManager;->NOTIFY_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 188
    return-void
.end method

.method private performClipboardCheck()V
    .locals 7

    .prologue
    .line 92
    :try_start_0
    iget-object v4, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardManager:Landroid/content/ClipboardManager;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/tudou/service/chat/ListenClipboardService;->isOpenWatch:Z

    if-nez v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {p0}, Lcom/youku/util/Util;->getClipData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "mClipData":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lcom/youku/vo/ChatDialogInfo;->matchRegex(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-static {v1}, Lcom/youku/vo/ChatDialogInfo;->formatChatData(Ljava/lang/String;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v0

    .line 98
    .local v0, "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v4, "sharedpreferences_chat"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/tudou/service/chat/ListenClipboardService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "share_word"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "oldShare":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    invoke-static {v3}, Lcom/youku/vo/ChatDialogInfo;->formatChatData(Ljava/lang/String;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v2

    .line 105
    .local v2, "oldInfo":Lcom/youku/vo/ChatDialogInfo;
    if-eqz v2, :cond_2

    iget-object v4, v0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    iget-object v5, v2, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    iget-object v5, v2, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    .end local v2    # "oldInfo":Lcom/youku/vo/ChatDialogInfo;
    :cond_2
    invoke-direct {p0, v0}, Lcom/tudou/service/chat/ListenClipboardService;->showContent(Lcom/youku/vo/ChatDialogInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    .end local v1    # "mClipData":Ljava/lang/String;
    .end local v3    # "oldShare":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showContent(Lcom/youku/vo/ChatDialogInfo;)V
    .locals 3
    .param p1, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    invoke-virtual {v1}, Lcom/tudou/service/chat/ChatTipView;->getChatInfo()Lcom/youku/vo/ChatDialogInfo;

    move-result-object v0

    .line 120
    .local v0, "dialogInfo":Lcom/youku/vo/ChatDialogInfo;
    invoke-virtual {p1, v0}, Lcom/youku/vo/ChatDialogInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    invoke-virtual {v1, p1}, Lcom/tudou/service/chat/ChatTipView;->updateContent(Lcom/youku/vo/ChatDialogInfo;)V

    .line 122
    invoke-direct {p0}, Lcom/tudou/service/chat/ListenClipboardService;->startTimeTask()V

    goto :goto_0

    .line 125
    .end local v0    # "dialogInfo":Lcom/youku/vo/ChatDialogInfo;
    :cond_2
    new-instance v1, Lcom/tudou/service/chat/ChatTipView;

    invoke-virtual {p0}, Lcom/tudou/service/chat/ListenClipboardService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/tudou/service/chat/ChatTipView;-><init>(Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;)V

    iput-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    .line 126
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    invoke-virtual {v1, p0}, Lcom/tudou/service/chat/ChatTipView;->setViewDismissHandler(Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;)V

    .line 127
    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    invoke-virtual {v1}, Lcom/tudou/service/chat/ChatTipView;->show()V

    .line 128
    invoke-direct {p0}, Lcom/tudou/service/chat/ListenClipboardService;->startTimeTask()V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/service/chat/ListenClipboardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_watch"

    sget-object v2, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v2, v2, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v2, v2, Lcom/youku/vo/TudouSwitchesBean$Switches;->watch_and_chat:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    return-void
.end method

.method private startTimeTask()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 147
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mTimer:Ljava/util/Timer;

    .line 148
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;

    invoke-direct {v1, p0}, Lcom/tudou/service/chat/ListenClipboardService$MyTimerTask;-><init>(Lcom/tudou/service/chat/ListenClipboardService;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 149
    const-string v0, "ListenClipboardService"

    const-string/jumbo v1, "startTimeTask mTimer.schedule"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private stopTimeTask()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/tudou/service/chat/ListenClipboardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 46
    new-instance v0, Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;

    invoke-direct {v0, p0}, Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;-><init>(Lcom/tudou/service/chat/ListenClipboardService;)V

    iput-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardListener:Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;

    .line 47
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardManager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardListener:Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardListener:Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardManager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ListenClipboardService;->mClipboardListener:Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    invoke-virtual {v0, v2}, Lcom/tudou/service/chat/ChatTipView;->setViewDismissHandler(Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;)V

    .line 64
    iput-object v2, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/tudou/service/chat/ListenClipboardService;->cancelNotification()V

    .line 67
    invoke-direct {p0}, Lcom/tudou/service/chat/ListenClipboardService;->stopTimeTask()V

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v2, "chat_close_all_view"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatTipView;->removePoppedViewAndClear()V

    .line 81
    :cond_0
    :goto_0
    const-string v0, "ListenClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenWatch over : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tudou/service/chat/ListenClipboardService;->isOpenWatch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return v1

    .line 77
    :cond_1
    const-string v2, "chat_watch"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->isOpenWatch:Z

    .line 78
    const-string v0, "ListenClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenWatch else : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tudou/service/chat/ListenClipboardService;->isOpenWatch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 77
    goto :goto_1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 53
    invoke-direct {p0}, Lcom/tudou/service/chat/ListenClipboardService;->cancelNotification()V

    .line 54
    invoke-virtual {p0}, Lcom/tudou/service/chat/ListenClipboardService;->stopSelf()V

    .line 55
    return-void
.end method

.method public onViewDismiss()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService;->mChatTipView:Lcom/tudou/service/chat/ChatTipView;

    .line 135
    invoke-direct {p0}, Lcom/tudou/service/chat/ListenClipboardService;->stopTimeTask()V

    .line 136
    return-void
.end method
