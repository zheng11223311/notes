.class public Lcom/youku/gamecenter/ClickActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClickActionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/ClickActionReceiver$1;
    }
.end annotation


# static fields
.field private static final PACKAGE_INSTALLER_CLASSNAME:Ljava/lang/String; = "com.android.packageinstaller.PackageInstallerActivity"

.field private static final PACKAGE_INSTALLER_PACKAGENAME:Ljava/lang/String; = "com.android.packageinstaller"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 117
    return-void
.end method

.method private cancelOlderApk(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/download/DownloadManager;)V
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "dm"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelOlderApk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 193
    iget v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    iget v1, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    if-lt v0, v1, :cond_0

    .line 194
    const-string v0, "cancelOlderApk return ,lastest version!"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_1

    .line 200
    const-string v0, "cancelOlderApk return , status not pause or stop!"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "cancelOlderApk  return , download_link_for_update empty!"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/youku/gamecenter/download/DownloadManager;->cancelDownload(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    .line 211
    iget v0, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iput v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    .line 213
    invoke-direct {p0}, Lcom/youku/gamecenter/ClickActionReceiver;->showCancelOlderApkTip()V

    .line 215
    const-string v0, "cancelOlderApk done!"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteOlderApk(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/download/DownloadManager;)V
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "dm"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOlderApk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 230
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "deleteOlderApk return,  download_link_for_update empty!"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/youku/gamecenter/download/DownloadManager;->deleteDownloaded(Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    .line 237
    iget v0, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iput v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    .line 239
    const-string v0, "deleteOlderApk done!"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getStatisticText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "location"    # I
    .param p2, "gametag"    # Ljava/lang/String;
    .param p3, "gametypename"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string v0, ""

    .line 253
    .local v0, "statistic":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locationid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gametag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gametypename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/youku/gamecenter/services/URLContainer;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_2
    return-object v0
.end method

.method private getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "local_apk_url"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 248
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 248
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleDownloadPause(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 3
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownloadPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    .line 157
    .local v0, "dm":Lcom/youku/gamecenter/download/DownloadManager;
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/download/DownloadManager;->pause(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private handleDownloadStart(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "location"    # I
    .param p4, "statistics"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownloadStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    .line 177
    .local v0, "dm":Lcom/youku/gamecenter/download/DownloadManager;
    iget-object v1, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/ClickActionReceiver;->cancelOlderApk(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/download/DownloadManager;)V

    .line 179
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-direct {p0, p3, v1, v2}, Lcom/youku/gamecenter/ClickActionReceiver;->getStatisticText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 184
    :cond_0
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iget-object v7, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    move-object v6, p2

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private handleDownloadUpdate(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "location"    # I
    .param p4, "statistics"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->deleteOlderApk(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/download/DownloadManager;)V

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/gamecenter/ClickActionReceiver;->handleDownloadStart(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    return-void
.end method

.method private handleGameInfoAction(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-string v1, "gameinfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 55
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/ClickActionReceiver;->handleGameInfoActionByStatus(Lcom/youku/gamecenter/data/GameInfo;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleGameInfoActionByStatus(Lcom/youku/gamecenter/data/GameInfo;Landroid/content/Intent;)V
    .locals 5
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "source":Ljava/lang/String;
    const/4 v0, 0x0

    .line 84
    .local v0, "location":I
    const/4 v2, 0x0

    .line 85
    .local v2, "statistics":Ljava/lang/String;
    const-string/jumbo v3, "source"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const-string/jumbo v3, "source"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    const-string v3, "locationid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    const-string v3, "locationid"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 89
    :cond_1
    const-string/jumbo v3, "statistics"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const-string/jumbo v3, "statistics"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    :cond_2
    sget-object v3, Lcom/youku/gamecenter/ClickActionReceiver$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v4}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 115
    const-string v3, "GameCenter"

    const-string v4, "DownloadReceiver->onReceive Unknow status"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/youku/gamecenter/ClickActionReceiver;->handleDownloadStart(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/ClickActionReceiver;->handleDownloadPause(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0

    .line 100
    :pswitch_2
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/youku/gamecenter/ClickActionReceiver;->handleDownloadStart(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/ClickActionReceiver;->handleLaunchApp(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0

    .line 106
    :pswitch_4
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/youku/gamecenter/ClickActionReceiver;->handleDownloadUpdate(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 109
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/ClickActionReceiver;->handleInstall(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0

    .line 112
    :pswitch_6
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/youku/gamecenter/ClickActionReceiver;->handleDownloadStart(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handleInstall(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 5
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInstall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 125
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->local_apk_url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/ClickActionReceiver;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 126
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    sget v3, Lcom/youku/gamecenter/R$string;->apk_install_error:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.packageinstaller"

    const-string v4, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    iget-object v2, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLaunchApp(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 9
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v8, 0x0

    .line 142
    :try_start_0
    iget-object v4, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 143
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v4, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/gamecenter/R$string;->apk_launch_error:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "launchApkError":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const-string/jumbo v0, "slideinfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/ClickActionReceiver;->handleSlideInfoAction(Landroid/content/Intent;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v0, "gameinfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/ClickActionReceiver;->handleGameInfoAction(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSlideInfoAction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    const-string/jumbo v1, "slideinfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 67
    .local v0, "slideInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_1

    .line 73
    iget-object v1, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    sget v2, Lcom/youku/gamecenter/R$string;->game_center_action_info_exist:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/ClickActionReceiver;->handleGameInfoActionByStatus(Lcom/youku/gamecenter/data/GameInfo;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showCancelOlderApkTip()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->re_download_new_version_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    return-void
.end method


# virtual methods
.method public logs(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v0, "GameCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/youku/gamecenter/ClickActionReceiver;->mContext:Landroid/content/Context;

    .line 32
    const-string v0, "onReceive ------------------start"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/ClickActionReceiver;->handleRequest(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    const-string v0, "onReceive ------------------end"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/ClickActionReceiver;->logs(Ljava/lang/String;)V

    .line 37
    return-void
.end method
