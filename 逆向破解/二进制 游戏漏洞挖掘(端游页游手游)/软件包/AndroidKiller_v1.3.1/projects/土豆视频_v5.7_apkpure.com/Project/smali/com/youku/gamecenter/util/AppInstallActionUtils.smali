.class public Lcom/youku/gamecenter/util/AppInstallActionUtils;
.super Ljava/lang/Object;
.source "AppInstallActionUtils.java"


# static fields
.field public static final SF_FILE_NAME:Ljava/lang/String; = "install_track"

.field public static final SF_KEY_INSTALL_TIME:Ljava/lang/String; = "install_time"

.field public static final SF_KEY_PACKAGE:Ljava/lang/String; = "install_packagename"

.field public static final SF_KEY_TRACKSEND:Ljava/lang/String; = "install_track_send"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static handleAppInstallDone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->hasTackSend(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 53
    .local v1, "hasTackSend":Z
    if-eqz v1, :cond_1

    .line 54
    const-string v2, "Statistics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " track has send , return!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v2, "Statistics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " send track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->sendTrackInstallEnd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 60
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->saveTrackSend(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static handleAppInstallPage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "gameId"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->launchAppInstallPage(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 43
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p2, p3}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->sendTrackInstallStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return v0
.end method

.method public static handleAppInstallPageInDownloadProcess(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "gameId"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "ytidAndUsernameAndVip"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->launchAppInstallPage(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 33
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0, p2, p3, p4, p5}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->sendTrackInstallStartInDownloadProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return v0
.end method

.method private static hasTackSend(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 78
    const-string v6, "install_track"

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 80
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "install_packagename"

    const-string/jumbo v7, "unknow"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "packagename":Ljava/lang/String;
    const-string v6, "install_track_send"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 82
    .local v0, "hasSend":Ljava/lang/Boolean;
    const-string v6, "install_time"

    const-wide/16 v8, 0x0

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 84
    .local v4, "sendTime":Ljava/lang/Long;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    :goto_0
    return v5

    .line 87
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const/4 v3, 0x1

    .line 88
    .local v3, "sendOverTime":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 89
    const-string v6, "Statistics"

    const-string v7, " hasTrack  sendOverTime, will send"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "sendOverTime":Z
    :cond_1
    move v3, v5

    .line 87
    goto :goto_1

    .line 94
    .restart local v3    # "sendOverTime":Z
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method

.method private static launchAppInstallPage(Landroid/content/Context;Ljava/io/File;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    :cond_0
    sget v2, Lcom/youku/gamecenter/R$string;->apk_install_error:I

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 134
    :goto_0
    return v1

    .line 129
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "temp":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static saveTrackSend(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v2, "install_track"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "install_packagename"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v2, "install_track_send"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v2, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void
.end method

.method private static sendTrackInstallEnd(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->getInstance()Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sendAppInstallEnd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static sendTrackInstallStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "gameId"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;

    invoke-direct {v0}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;-><init>()V

    .line 115
    .local v0, "message":Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;
    iput-object p1, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->key:Ljava/lang/String;

    .line 116
    iput-object p2, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->id:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/youku/gamecenter/statistics/GameTrack;->getUidPara()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->uid:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/youku/gamecenter/statistics/GameTrack;->getYTidAndUsernameAndVipPara()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->ytidAndUsernameAndVip:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->getInstance()Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->key:Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v0}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sendAppInstallStart(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V

    .line 120
    return-void
.end method

.method private static sendTrackInstallStartInDownloadProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "gameId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "ytidAndUsernameAndVip"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;

    invoke-direct {v0}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;-><init>()V

    .line 105
    .local v0, "message":Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;
    iput-object p1, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->key:Ljava/lang/String;

    .line 106
    iput-object p2, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->id:Ljava/lang/String;

    .line 107
    iput-object p3, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->uid:Ljava/lang/String;

    .line 108
    iput-object p4, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->ytidAndUsernameAndVip:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->getInstance()Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->key:Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v0}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sendAppInstallStart(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V

    .line 110
    return-void
.end method
