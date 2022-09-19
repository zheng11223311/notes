.class public Lcom/youku/gamecenter/widgets/GameCustomNotification;
.super Ljava/lang/Object;
.source "GameCustomNotification.java"


# static fields
.field private static SPName:Ljava/lang/String;


# instance fields
.field private images:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "gameLaunchNotification"

    sput-object v0, Lcom/youku/gamecenter/widgets/GameCustomNotification;->SPName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/youku/gamecenter/R$id;->small_icon1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/youku/gamecenter/R$id;->small_icon2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/youku/gamecenter/R$id;->small_icon3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/youku/gamecenter/R$id;->small_icon4:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/youku/gamecenter/R$id;->small_icon5:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCustomNotification;->images:[I

    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/GameCustomNotification;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/GameCustomNotification;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->handleShowGameNotifications(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public static clearSingleUpgradeNotify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    const-string v1, "GameCustomNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";packagename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";intValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameCustomNotification"

    const-string v2, "NotificationManager-> clear notifycation error!!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleGameNotificationShow(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 199
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 200
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x10

    iput v1, p3, Landroid/app/Notification;->flags:I

    .line 201
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 202
    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 203
    return-void
.end method

.method private handleShowGameNotifications(Landroid/content/Context;ILjava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->writeShowNoficationDateInSP(Landroid/content/Context;)V

    .line 125
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 126
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, p1, p2, v2}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->getSingleGameNotification(Landroid/content/Context;ILcom/youku/gamecenter/data/GameInfo;)Landroid/app/Notification;

    move-result-object v0

    .line 127
    .local v0, "notification":Landroid/app/Notification;
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    iget v1, v2, Lcom/youku/gamecenter/data/GameInfo;->notificationID:I

    .line 128
    .local v1, "notifyId":I
    sget v2, Lcom/youku/gamecenter/R$id;->game_launch_upgrade_notification_id:I

    if-ne p2, v2, :cond_2

    .line 129
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 130
    const-string v3, "GameCustomNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " packagename="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";intValue="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->handleGameNotificationShow(Landroid/content/Context;ILandroid/app/Notification;)V

    goto :goto_0

    .line 135
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "notifyId":I
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->getMultipleGameNotification(Landroid/content/Context;ILjava/util/List;)Landroid/app/Notification;

    move-result-object v0

    .line 137
    .restart local v0    # "notification":Landroid/app/Notification;
    invoke-direct {p0, p1, p2, v0}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->handleGameNotificationShow(Landroid/content/Context;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private isNotificationCanShow(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy/MM/dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "today":Ljava/lang/String;
    sget-object v8, Lcom/youku/gamecenter/widgets/GameCustomNotification;->SPName:Ljava/lang/String;

    invoke-virtual {p1, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 150
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "showDate"

    const-string v9, ""

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "lastShowDay":Ljava/lang/String;
    const-string/jumbo v8, "showRate"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 152
    .local v3, "showRate":I
    const-string v8, "isOpen"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 154
    .local v1, "isOpen":Z
    const-string/jumbo v8, "yyyy/MM/dd"

    invoke-static {v2, v5, v8}, Lcom/youku/gamecenter/util/SystemUtils;->getDateSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "dateSpace":I
    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v6

    .line 160
    :cond_1
    const/4 v8, -0x1

    if-eq v0, v8, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lt v8, v3, :cond_0

    :cond_2
    move v6, v7

    .line 164
    goto :goto_0
.end method

.method public static writeShowDateSpaceIntoSP(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateSpace"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 168
    sget-object v1, Lcom/youku/gamecenter/widgets/GameCustomNotification;->SPName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "showRate"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isOpen"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    return-void
.end method

.method private writeShowNoficationDateInSP(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "today":Ljava/lang/String;
    sget-object v2, Lcom/youku/gamecenter/widgets/GameCustomNotification;->SPName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "showDate"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method


# virtual methods
.method public getMultipleGameNotification(Landroid/content/Context;ILjava/util/List;)Landroid/app/Notification;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 79
    .local v2, "appContext":Landroid/content/Context;
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/youku/gamecenter/R$layout;->gamecenter_mutile_game_notification:I

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v8, "remoteView":Landroid/widget/RemoteViews;
    sget v9, Lcom/youku/gamecenter/R$id;->icon_img:I

    sget v10, Lcom/youku/gamecenter/R$drawable;->game_icon_youku:I

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 82
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/youku/gamecenter/GameManagerActivity;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "source"

    const-string v10, "999"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    new-instance v7, Landroid/app/Notification;

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_ic_stat:I

    sget v10, Lcom/youku/gamecenter/R$string;->game_start_install_notification:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x1

    invoke-direct {v7, v9, v10, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 86
    .local v7, "notification":Landroid/app/Notification;
    sget v9, Lcom/youku/gamecenter/R$id;->game_launch_upgrade_notification_id:I

    move/from16 v0, p2

    if-ne v0, v9, :cond_0

    .line 87
    sget v9, Lcom/youku/gamecenter/R$id;->title_txt:I

    sget v10, Lcom/youku/gamecenter/R$string;->game_lanuch_notify_mutile_upgrade:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 88
    const-string/jumbo v9, "showTab"

    const-string/jumbo v10, "upgrade"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    sget v9, Lcom/youku/gamecenter/R$string;->game_start_upgrade_notification:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 95
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 96
    const/4 v9, 0x4

    if-le v5, v9, :cond_1

    .line 95
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 92
    .end local v5    # "i":I
    :cond_0
    sget v9, Lcom/youku/gamecenter/R$id;->title_txt:I

    sget v10, Lcom/youku/gamecenter/R$string;->game_lanuch_notify_mutile_install:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    .restart local v5    # "i":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/gamecenter/data/GameInfo;

    iget-object v9, v9, Lcom/youku/gamecenter/data/GameInfo;->local_apk_url:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/youku/gamecenter/util/SystemUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    .local v3, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v9, p0, Lcom/youku/gamecenter/widgets/GameCustomNotification;->images:[I

    aget v9, v9, v5

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 100
    .end local v3    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 105
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const/high16 v9, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 106
    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Landroid/app/Notification;->when:J

    .line 108
    const/16 v9, 0x10

    iput v9, v7, Landroid/app/Notification;->flags:I

    .line 109
    return-object v7
.end method

.method public getSingleGameNotification(Landroid/content/Context;ILcom/youku/gamecenter/data/GameInfo;)Landroid/app/Notification;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeId"    # I
    .param p3, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, "appContext":Landroid/content/Context;
    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->local_apk_url:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/youku/gamecenter/util/SystemUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/youku/gamecenter/R$layout;->game_center_download_doned_notification:I

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v5, "remoteView":Landroid/widget/RemoteViews;
    sget v7, Lcom/youku/gamecenter/R$id;->icon_img:I

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 42
    sget v7, Lcom/youku/gamecenter/R$id;->title_txt:I

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 44
    sget v7, Lcom/youku/gamecenter/R$id;->game_launch_upgrade_notification_id:I

    if-ne p2, v7, :cond_0

    .line 45
    sget v7, Lcom/youku/gamecenter/R$id;->hint_txt:I

    sget v8, Lcom/youku/gamecenter/R$string;->game_lanuch_notify_upgrade:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p3, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 47
    new-instance v3, Landroid/app/Notification;

    const v7, 0x1080082

    sget v8, Lcom/youku/gamecenter/R$string;->game_start_upgrade_notification:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x1

    invoke-direct {v3, v7, v8, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 48
    .local v3, "notification":Landroid/app/Notification;
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/youku/gamecenter/GameManagerActivity;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v6, "upgradeIntent":Landroid/content/Intent;
    const-string/jumbo v7, "source"

    const-string v8, "999"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v7, "showTab"

    const-string/jumbo v8, "upgrade"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    sget v7, Lcom/youku/gamecenter/R$drawable;->game_icon_youku:I

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 52
    sget v7, Lcom/youku/gamecenter/R$string;->game_start_upgrade_notification:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 53
    iget v7, p3, Lcom/youku/gamecenter/data/GameInfo;->notificationID:I

    const/high16 v8, 0x10000000

    invoke-static {p1, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 54
    iput-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/app/Notification;->when:J

    .line 56
    const/16 v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    move-object v4, v3

    .line 73
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v6    # "upgradeIntent":Landroid/content/Intent;
    .local v4, "notification":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 60
    .end local v4    # "notification":Ljava/lang/Object;
    :cond_0
    new-instance v3, Landroid/app/Notification;

    const v7, 0x1080082

    sget v8, Lcom/youku/gamecenter/R$string;->game_start_install_notification:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x1

    invoke-direct {v3, v7, v8, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 61
    .restart local v3    # "notification":Landroid/app/Notification;
    sget v7, Lcom/youku/gamecenter/R$id;->hint_txt:I

    sget v8, Lcom/youku/gamecenter/R$string;->game_lanuch_notify_install:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 63
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.youku.appcenter.action.LAUNCH_APP_INSTALL_ACTION_TUDOU"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, "installIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    const-string v7, "packagename"

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v7, "local_apk_url"

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->local_apk_url:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v7, "game_id"

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget v7, p3, Lcom/youku/gamecenter/data/GameInfo;->notificationID:I

    const/high16 v8, 0x10000000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 69
    iput-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/app/Notification;->when:J

    .line 71
    const/16 v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    move-object v4, v3

    .line 73
    .restart local v4    # "notification":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected handleShowUpgradeGameNotifications(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledGameManagerData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUpgradeGameManagerData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadDatas->load installed data size == 0,   loadDatas return!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUpgradationPara()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/gamecenter/services/URLContainer;->getGamesUpgradationUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Game Upgradation url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/youku/gamecenter/services/GetGamesUpgradationService;

    invoke-direct {v0, p1}, Lcom/youku/gamecenter/services/GetGamesUpgradationService;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "service":Lcom/youku/gamecenter/services/GetGamesUpgradationService;
    new-instance v2, Lcom/youku/gamecenter/widgets/GameCustomNotification$1;

    invoke-direct {v2, p0, p1}, Lcom/youku/gamecenter/widgets/GameCustomNotification$1;-><init>(Lcom/youku/gamecenter/widgets/GameCustomNotification;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method public showLocalAppTips(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->isNotificationCanShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$id;->game_launch_install_notification_id:I

    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameDownloadDoneData()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->handleShowGameNotifications(Landroid/content/Context;ILjava/util/List;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->handleShowUpgradeGameNotifications(Landroid/content/Context;)V

    goto :goto_0
.end method
