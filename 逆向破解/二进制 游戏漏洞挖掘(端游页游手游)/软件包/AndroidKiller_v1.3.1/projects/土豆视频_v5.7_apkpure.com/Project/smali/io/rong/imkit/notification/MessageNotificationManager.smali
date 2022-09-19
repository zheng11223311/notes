.class public Lio/rong/imkit/notification/MessageNotificationManager;
.super Ljava/lang/Object;
.source "MessageNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/notification/MessageNotificationManager$SingletonHolder;
    }
.end annotation


# static fields
.field static final NEGLECT_TIME:I = 0xbb8

.field static isInNeglectTime:Z

.field static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lio/rong/imkit/notification/MessageNotificationManager;->isInNeglectTime:Z

    .line 34
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lio/rong/imkit/notification/MessageNotificationManager;->timer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/notification/MessageNotificationManager;Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/notification/MessageNotificationManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lio/rong/imlib/model/Message;
    .param p3, "x3"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imkit/notification/MessageNotificationManager;->notify(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    return-void
.end method

.method public static getInstance()Lio/rong/imkit/notification/MessageNotificationManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lio/rong/imkit/notification/MessageNotificationManager$SingletonHolder;->instance:Lio/rong/imkit/notification/MessageNotificationManager;

    return-object v0
.end method

.method private isInQuietTime(Landroid/content/Context;)Z
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-static/range {p1 .. p1}, Lio/rong/imkit/utils/CommonUtils;->getNotificationQuietHoursForStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "startTimeStr":Ljava/lang/String;
    const/4 v3, -0x1

    .line 136
    .local v3, "hour":I
    const/4 v4, -0x1

    .line 137
    .local v4, "minute":I
    const/4 v5, -0x1

    .line 139
    .local v5, "second":I
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 140
    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 143
    .local v12, "time":[Ljava/lang/String;
    :try_start_0
    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_0

    .line 144
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 145
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 146
    const/4 v13, 0x2

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 153
    .end local v12    # "time":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v13, -0x1

    if-eq v3, v13, :cond_1

    const/4 v13, -0x1

    if-eq v4, v13, :cond_1

    const/4 v13, -0x1

    if-ne v5, v13, :cond_2

    .line 154
    :cond_1
    const/4 v13, 0x0

    .line 174
    :goto_1
    return v13

    .line 148
    .restart local v12    # "time":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-class v13, Lio/rong/imkit/notification/MessageNotificationManager;

    const-string v14, "getConversationNotificationStatus"

    const-string v15, "NumberFormatException"

    invoke-static {v13, v14, v15}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "time":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 158
    .local v8, "startCalendar":Ljava/util/Calendar;
    const/16 v13, 0xb

    invoke-virtual {v8, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 159
    const/16 v13, 0xc

    invoke-virtual {v8, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/16 v13, 0xd

    invoke-virtual {v8, v13, v5}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-static/range {p1 .. p1}, Lio/rong/imkit/utils/CommonUtils;->getNotificationQuietHoursForSpanMinutes(Landroid/content/Context;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    int-to-long v6, v13

    .line 164
    .local v6, "spanTime":J
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v10, v14, v16

    .line 166
    .local v10, "startTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 167
    .local v2, "endCalendar":Ljava/util/Calendar;
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v6

    add-long v14, v14, v16

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    .local v0, "currentCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 172
    const/4 v13, 0x1

    goto :goto_1

    .line 174
    :cond_3
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private notify(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lio/rong/imlib/model/Message;
    .param p3, "left"    # I

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lio/rong/common/SystemUtils;->isAppRunningOnTop(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 92
    .local v0, "isInBackground":Z
    :goto_0
    if-nez p3, :cond_0

    sget-boolean v4, Lio/rong/imkit/notification/MessageNotificationManager;->isInNeglectTime:Z

    if-eqz v4, :cond_3

    .line 93
    :cond_0
    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lio/rong/imkit/RongNotificationManager;->getInstance()Lio/rong/imkit/RongNotificationManager;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lio/rong/imkit/RongNotificationManager;->onReceiveMessageFromApp(Lio/rong/imlib/model/Message;Z)V

    .line 129
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isInBackground":Z
    :cond_2
    move v0, v3

    .line 91
    goto :goto_0

    .line 99
    .restart local v0    # "isInBackground":Z
    :cond_3
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v4, v5, :cond_1

    .line 103
    if-eqz v0, :cond_4

    .line 104
    sget-boolean v4, Lio/rong/imkit/notification/MessageNotificationManager;->isInNeglectTime:Z

    if-nez v4, :cond_1

    .line 105
    invoke-static {}, Lio/rong/imkit/RongNotificationManager;->getInstance()Lio/rong/imkit/RongNotificationManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lio/rong/imkit/RongNotificationManager;->onReceiveMessageFromApp(Lio/rong/imlib/model/Message;Z)V

    .line 106
    sget-object v3, Lio/rong/imkit/notification/MessageNotificationManager;->timer:Ljava/util/Timer;

    new-instance v4, Lio/rong/imkit/notification/MessageNotificationManager$2;

    invoke-direct {v4, p0}, Lio/rong/imkit/notification/MessageNotificationManager$2;-><init>(Lio/rong/imkit/notification/MessageNotificationManager;)V

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 112
    sput-boolean v2, Lio/rong/imkit/notification/MessageNotificationManager;->isInNeglectTime:Z

    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imkit/utils/CommonUtils;->isInConversationPager(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/MessageTag;

    .line 116
    .local v1, "msgTag":Lio/rong/imlib/MessageTag;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 117
    invoke-static {}, Lio/rong/imkit/notification/MessageSounder;->getInstance()Lio/rong/imkit/notification/MessageSounder;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/notification/MessageSounder;->messageReminder()V

    .line 118
    sget-boolean v3, Lio/rong/imkit/notification/MessageNotificationManager;->isInNeglectTime:Z

    if-nez v3, :cond_1

    .line 119
    sget-object v3, Lio/rong/imkit/notification/MessageNotificationManager;->timer:Ljava/util/Timer;

    new-instance v4, Lio/rong/imkit/notification/MessageNotificationManager$3;

    invoke-direct {v4, p0}, Lio/rong/imkit/notification/MessageNotificationManager$3;-><init>(Lio/rong/imkit/notification/MessageNotificationManager;)V

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 125
    sput-boolean v2, Lio/rong/imkit/notification/MessageNotificationManager;->isInNeglectTime:Z

    goto :goto_1
.end method


# virtual methods
.method public notifyIfNeed(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lio/rong/imlib/model/Message;
    .param p3, "left"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lio/rong/imkit/notification/MessageNotificationManager;->isInQuietTime(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v0

    .line 64
    .local v0, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/rong/imkit/RongContext;->getConversationNotifyStatusFromCache(Lio/rong/imkit/model/ConversationKey;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v1

    .line 65
    .local v1, "notificationStatus":Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    if-eqz v1, :cond_2

    .line 66
    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->NOTIFY:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    if-ne v1, v2, :cond_0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imkit/notification/MessageNotificationManager;->notify(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    goto :goto_0

    .line 73
    .end local v0    # "key":Lio/rong/imkit/model/ConversationKey;
    .end local v1    # "notificationStatus":Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v2

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/notification/MessageNotificationManager$1;

    invoke-direct {v5, p0, p1, p2, p3}, Lio/rong/imkit/notification/MessageNotificationManager$1;-><init>(Lio/rong/imkit/notification/MessageNotificationManager;Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    invoke-virtual {v2, v3, v4, v5}, Lio/rong/imkit/RongIMClientWrapper;->getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method
