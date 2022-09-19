.class public Lcom/tudou/service/chat/ChatManager;
.super Ljava/lang/Object;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/chat/ChatManager$ChatBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final CHAT_CLOSE_ALL_VIEW:Ljava/lang/String; = "chat_close_all_view"

.field public static final CHAT_INFO_EXTRA:Ljava/lang/String; = "chat_info"

.field public static final CHAT_NOTIFICATION_ACTION:Ljava/lang/String; = "com.tudou.android.service.chat.notification.action"

.field public static final CHAT_TIP_VIEW_ERROR_EXTRA:Ljava/lang/String; = "chat_tip_view_error_extra"

.field public static NOTIFY_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChatManager"

.field public static isNowShow:Z

.field private static mChatManager:Lcom/tudou/service/chat/ChatManager;

.field public static showChatIcon:Z

.field public static viewIsHomeLocation:Z


# instance fields
.field private chatIconChatInfo:Lcom/youku/vo/ChatDialogInfo;

.field private isHengPlay:Z

.field private mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

.field public mHeight:I

.field private mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/tudou/service/chat/ChatManager;->isNowShow:Z

    .line 39
    sput-boolean v0, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    .line 40
    sput-boolean v0, Lcom/tudou/service/chat/ChatManager;->viewIsHomeLocation:Z

    .line 42
    const/16 v0, 0x1b57

    sput v0, Lcom/tudou/service/chat/ChatManager;->NOTIFY_ID:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput v0, p0, Lcom/tudou/service/chat/ChatManager;->mHeight:I

    .line 240
    iput-boolean v0, p0, Lcom/tudou/service/chat/ChatManager;->isHengPlay:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/chat/ChatManager;Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/youku/vo/ChatDialogInfo;
    .param p3, "x3"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/service/chat/ChatManager;->dialogButtonClick(Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/service/chat/ChatManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatManager;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/tudou/service/chat/ChatManager;->isHengPlay:Z

    return v0
.end method

.method static synthetic access$102(Lcom/tudou/service/chat/ChatManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/tudou/service/chat/ChatManager;->isHengPlay:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tudou/service/chat/ChatManager;Landroid/app/Notification;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatManager;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/tudou/service/chat/ChatManager;->showNotification(Landroid/app/Notification;)V

    return-void
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    .line 407
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 408
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/tudou/service/chat/ChatManager;->NOTIFY_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 409
    return-void
.end method

.method private dialogButtonClick(Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;
    .param p3, "isGoDetail"    # Z

    .prologue
    .line 114
    if-eqz p1, :cond_1

    .line 116
    :try_start_0
    invoke-static {p1}, Lcom/youku/util/Util;->getClipData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "clipStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/youku/vo/ChatDialogInfo;->matchRegex(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {p1}, Lcom/youku/util/Util;->clearClipData(Landroid/content/Context;)V

    .line 120
    :cond_0
    if-eqz p3, :cond_1

    .line 121
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 122
    invoke-virtual {p2, p1}, Lcom/youku/vo/ChatDialogInfo;->goDetailActivity(Landroid/content/Context;)V

    .line 124
    const-string/jumbo v1, "t1.chat_join.Popup"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v0    # "clipStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/service/chat/ChatManager;->closeAllView()V

    .line 130
    sget-boolean v1, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tudou/service/chat/ChatManager;->showChatIcon(Z)V

    .line 134
    :cond_2
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v1

    .line 129
    invoke-virtual {p0}, Lcom/tudou/service/chat/ChatManager;->closeAllView()V

    .line 130
    sget-boolean v1, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tudou/service/chat/ChatManager;->showChatIcon(Z)V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/tudou/service/chat/ChatManager;->closeAllView()V

    .line 130
    sget-boolean v2, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v2, :cond_3

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tudou/service/chat/ChatManager;->showChatIcon(Z)V

    :cond_3
    throw v1
.end method

.method public static getInstance()Lcom/tudou/service/chat/ChatManager;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/tudou/service/chat/ChatManager;->mChatManager:Lcom/tudou/service/chat/ChatManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/tudou/service/chat/ChatManager;

    invoke-direct {v0}, Lcom/tudou/service/chat/ChatManager;-><init>()V

    sput-object v0, Lcom/tudou/service/chat/ChatManager;->mChatManager:Lcom/tudou/service/chat/ChatManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/tudou/service/chat/ChatManager;->mChatManager:Lcom/tudou/service/chat/ChatManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tudou/service/chat/ChatManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    .line 63
    sget-object v0, Lcom/tudou/service/chat/ChatManager;->mChatManager:Lcom/tudou/service/chat/ChatManager;

    invoke-direct {v0, p0}, Lcom/tudou/service/chat/ChatManager;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/tudou/service/chat/ChatManager;->mChatManager:Lcom/tudou/service/chat/ChatManager;

    return-object v0
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/tudou/service/chat/ChatManager$ChatBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tudou/service/chat/ChatManager$ChatBroadcastReceiver;-><init>(Lcom/tudou/service/chat/ChatManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showNotification(Landroid/app/Notification;)V
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 402
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 403
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/tudou/service/chat/ChatManager;->NOTIFY_ID:I

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 404
    return-void
.end method


# virtual methods
.method public checkClipData(Landroid/content/Context;)Lcom/youku/vo/ChatDialogInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    :try_start_0
    invoke-static {p1}, Lcom/youku/util/Util;->getClipData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "mClipData":Ljava/lang/String;
    const-string/jumbo v3, "share_word"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->getChatPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "oldShare":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/tudou/service/chat/ChatManager;->checkClipData(Ljava/lang/String;Ljava/lang/String;)Lcom/youku/vo/ChatDialogInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 304
    .end local v1    # "mClipData":Ljava/lang/String;
    .end local v2    # "oldShare":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public checkClipData(Ljava/lang/String;Ljava/lang/String;)Lcom/youku/vo/ChatDialogInfo;
    .locals 6
    .param p1, "mClipData"    # Ljava/lang/String;
    .param p2, "oldShare"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 310
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/youku/vo/ChatDialogInfo;->matchRegex(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    invoke-static {p1}, Lcom/youku/vo/ChatDialogInfo;->formatChatData(Ljava/lang/String;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v0

    .line 312
    .local v0, "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    if-eqz v0, :cond_1

    .line 313
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    invoke-static {p2}, Lcom/youku/vo/ChatDialogInfo;->formatChatData(Ljava/lang/String;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v2

    .line 315
    .local v2, "oldInfo":Lcom/youku/vo/ChatDialogInfo;
    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    iget-object v5, v2, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    iget-object v5, v2, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 324
    .end local v0    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    .end local v2    # "oldInfo":Lcom/youku/vo/ChatDialogInfo;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    :cond_1
    move-object v0, v3

    .line 320
    goto :goto_0

    .end local v0    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    :cond_2
    move-object v0, v3

    .line 322
    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 324
    goto :goto_0
.end method

.method public checkClipShowDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/service/chat/ChatManager;->isOpenChatWatch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tudou/service/chat/ChatManager;->checkClipData(Landroid/content/Context;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v0

    .line 73
    .local v0, "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    iget-object v1, v1, Lcom/youku/widget/InviteChatDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/tudou/service/chat/ChatManager;->dismissChatDiaLog()V

    .line 79
    :cond_3
    new-instance v1, Lcom/youku/widget/InviteChatDialog;

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v2

    invoke-direct {v1, p1, v0, v2}, Lcom/youku/widget/InviteChatDialog;-><init>(Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;Z)V

    iput-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    new-instance v2, Lcom/tudou/service/chat/ChatManager$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/tudou/service/chat/ChatManager$1;-><init>(Lcom/tudou/service/chat/ChatManager;Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/InviteChatDialog;->setLeftButOnClickListener(Lcom/youku/widget/InviteChatDialog$ButOnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    new-instance v2, Lcom/tudou/service/chat/ChatManager$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/tudou/service/chat/ChatManager$2;-><init>(Lcom/tudou/service/chat/ChatManager;Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/InviteChatDialog;->setRightButOnClickListener(Lcom/youku/widget/InviteChatDialog$ButOnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    invoke-virtual {v1}, Lcom/youku/widget/InviteChatDialog;->show()V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tudou/service/chat/ChatManager;->dismissChatIcon(Z)V

    goto :goto_0

    .line 104
    .end local v0    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 81
    .restart local v0    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    :cond_4
    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    invoke-virtual {v1, v0}, Lcom/youku/widget/InviteChatDialog;->setChatInfo(Lcom/youku/vo/ChatDialogInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public closeAllView()V
    .locals 3

    .prologue
    .line 413
    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    invoke-virtual {v1}, Lcom/youku/widget/InviteChatDialog;->dismiss()V

    .line 417
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v2, Lcom/tudou/service/chat/ListenClipboardService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 419
    const-string v1, "chat_close_all_view"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 423
    invoke-direct {p0}, Lcom/tudou/service/chat/ChatManager;->cancelNotification()V

    .line 424
    return-void
.end method

.method public dismissChatDiaLog()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mInviteChatDialog:Lcom/youku/widget/InviteChatDialog;

    invoke-virtual {v0}, Lcom/youku/widget/InviteChatDialog;->dismiss()V

    .line 110
    :cond_0
    return-void
.end method

.method public dismissChatIcon(Z)V
    .locals 1
    .param p1, "isClose"    # Z

    .prologue
    const/4 v0, 0x0

    .line 220
    sput-boolean v0, Lcom/tudou/service/chat/ChatManager;->isNowShow:Z

    .line 221
    if-eqz p1, :cond_0

    .line 222
    sput-boolean v0, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    .line 223
    sput-boolean v0, Lcom/tudou/service/chat/ChatManager;->viewIsHomeLocation:Z

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatIconFloatView;->removeView()V

    .line 228
    :cond_1
    return-void
.end method

.method public fullscreenDismissChatIcon()V
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->isNowShow:Z

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/service/chat/ChatManager;->dismissChatIcon(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method public getNotification(Lcom/youku/vo/ChatDialogInfo;)Landroid/app/Notification;
    .locals 8
    .param p1, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;

    .prologue
    .line 377
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v4, 0x7f0203ee

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 379
    invoke-virtual {p1}, Lcom/youku/vo/ChatDialogInfo;->getSysoendInvideDialogTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 380
    invoke-virtual {p1}, Lcom/youku/vo/ChatDialogInfo;->getSysoendInvideDialogTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 381
    const-string/jumbo v4, "\u9080\u8bf7\u4f60\u8fb9\u770b\u8fb9\u804a"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 382
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 383
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 385
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v1, "i":Landroid/content/Intent;
    const/high16 v4, 0x34400000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 387
    const-string v4, "chat_info"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 388
    new-instance v2, Lcom/tudou/push/PushMsg;

    invoke-direct {v2}, Lcom/tudou/push/PushMsg;-><init>()V

    .line 389
    .local v2, "msg":Lcom/tudou/push/PushMsg;
    const/16 v4, 0x8

    iput v4, v2, Lcom/tudou/push/PushMsg;->type:I

    .line 390
    const-string v4, "action"

    const-string v5, "CHAT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v4, "PushMsg"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 392
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v5, Lcom/tudou/push/EmptyActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 393
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v5, v6

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 394
    .local v3, "p":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const v5, 0x7f020435

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 396
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method

.method public goneChatIconRedDot()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatIconFloatView;->goneRedDot()V

    .line 214
    :cond_0
    return-void
.end method

.method public isOpenChatWatch()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 339
    sget-object v1, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v1, v1, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v1, v1, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v1, v1, Lcom/youku/vo/TudouSwitchesBean$Switches;->watch_and_chat:I

    if-ne v1, v0, :cond_0

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSoftKeyBoardListener()V
    .locals 0

    .prologue
    .line 295
    invoke-static {}, Lcom/tudou/service/chat/SoftKeyBoardListener;->removeListener()V

    .line 296
    return-void
.end method

.method public savePreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shareStr"    # Ljava/lang/String;

    .prologue
    .line 330
    :try_start_0
    invoke-static {p1}, Lcom/youku/util/Util;->getClipData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "mClipData":Ljava/lang/String;
    const-string/jumbo v2, "share_word"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->getChatPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "oldData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/youku/vo/ChatDialogInfo;->matchRegex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {p1}, Lcom/youku/util/Util;->clearClipData(Landroid/content/Context;)V

    .line 334
    :cond_0
    const-string/jumbo v2, "share_word"

    invoke-static {v2, p2}, Lcom/tudou/android/Youku;->savaChatPreferences(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "mClipData":Ljava/lang/String;
    .end local v1    # "oldData":Ljava/lang/String;
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setDetailActivity(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 155
    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0, p1}, Lcom/tudou/service/chat/ChatIconFloatView;->setDetailActivity(Lcom/tudou/ui/activity/DetailActivity;)V

    .line 157
    :cond_0
    return-void
.end method

.method public setKeyBoardLocation(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 148
    iget v0, p0, Lcom/tudou/service/chat/ChatManager;->mHeight:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-eqz v0, :cond_0

    .line 149
    iput p1, p0, Lcom/tudou/service/chat/ChatManager;->mHeight:I

    .line 150
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0, p1}, Lcom/tudou/service/chat/ChatIconFloatView;->updataViewLocation(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public setSoftKeyBoardListener(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    new-instance v0, Lcom/tudou/service/chat/ChatManager$3;

    invoke-direct {v0, p0, p1}, Lcom/tudou/service/chat/ChatManager$3;-><init>(Lcom/tudou/service/chat/ChatManager;Landroid/app/Activity;)V

    invoke-static {p1, v0}, Lcom/tudou/service/chat/SoftKeyBoardListener;->setListener(Landroid/app/Activity;Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    .line 292
    return-void
.end method

.method public setVideoPoint(Ljava/lang/String;I)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "point"    # I

    .prologue
    .line 160
    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/service/chat/ChatIconFloatView;->setVideoPoint(Ljava/lang/String;I)V

    .line 162
    :cond_0
    return-void
.end method

.method public setViewLocation(ZZ)V
    .locals 1
    .param p1, "isHome"    # Z
    .param p2, "isUpdataHoneLocation"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 139
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0, p2}, Lcom/tudou/service/chat/ChatIconFloatView;->updataViewLocation(Z)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->viewIsHomeLocation:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->viewIsHomeLocation:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    :cond_3
    sput-boolean p1, Lcom/tudou/service/chat/ChatManager;->viewIsHomeLocation:Z

    .line 142
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0, p1}, Lcom/tudou/service/chat/ChatIconFloatView;->updataViewLocation(Z)V

    goto :goto_0
.end method

.method public showChatIcon()V
    .locals 2

    .prologue
    .line 185
    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->chatIconChatInfo:Lcom/youku/vo/ChatDialogInfo;

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "ChatManager"

    const-string/jumbo v1, "showChatIcon()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->chatIconChatInfo:Lcom/youku/vo/ChatDialogInfo;

    invoke-virtual {p0, v0}, Lcom/tudou/service/chat/ChatManager;->showChatIcon(Lcom/youku/vo/ChatDialogInfo;)V

    .line 189
    :cond_0
    return-void
.end method

.method public showChatIcon(Lcom/youku/vo/ChatDialogInfo;)V
    .locals 3
    .param p1, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;

    .prologue
    const/4 v2, 0x1

    .line 169
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/tudou/service/chat/ChatManager;->chatIconChatInfo:Lcom/youku/vo/ChatDialogInfo;

    .line 174
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Lcom/tudou/service/chat/ChatIconFloatView;

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tudou/service/chat/ChatIconFloatView;-><init>(Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;)V

    iput-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatIconFloatView;->show()V

    .line 180
    sput-boolean v2, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    .line 181
    sput-boolean v2, Lcom/tudou/service/chat/ChatManager;->isNowShow:Z

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0, p1}, Lcom/tudou/service/chat/ChatIconFloatView;->updataChatInfo(Lcom/youku/vo/ChatDialogInfo;)V

    goto :goto_1
.end method

.method public showChatIcon(Z)V
    .locals 2
    .param p1, "isUpdataHoneLocation"    # Z

    .prologue
    .line 192
    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->chatIconChatInfo:Lcom/youku/vo/ChatDialogInfo;

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "ChatManager"

    const-string/jumbo v1, "showChatIcon()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->chatIconChatInfo:Lcom/youku/vo/ChatDialogInfo;

    invoke-virtual {p0, v0}, Lcom/tudou/service/chat/ChatManager;->showChatIcon(Lcom/youku/vo/ChatDialogInfo;)V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tudou/service/chat/ChatManager;->setViewLocation(ZZ)V

    .line 198
    :cond_0
    return-void
.end method

.method public showChatIconRedDot()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->mChatIconFloatView:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatIconFloatView;->showRedDot()V

    .line 206
    :cond_0
    return-void
.end method

.method public smallscreenShowChatIcon()V
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->showChatIcon:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tudou/service/chat/ChatManager;->isNowShow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->chatIconChatInfo:Lcom/youku/vo/ChatDialogInfo;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager;->chatIconChatInfo:Lcom/youku/vo/ChatDialogInfo;

    invoke-virtual {p0, v0}, Lcom/tudou/service/chat/ChatManager;->showChatIcon(Lcom/youku/vo/ChatDialogInfo;)V

    .line 233
    :cond_0
    return-void
.end method
