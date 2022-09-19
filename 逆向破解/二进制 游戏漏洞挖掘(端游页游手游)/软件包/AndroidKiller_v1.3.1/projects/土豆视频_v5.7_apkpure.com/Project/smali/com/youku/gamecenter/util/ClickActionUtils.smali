.class public Lcom/youku/gamecenter/util/ClickActionUtils;
.super Ljava/lang/Object;
.source "ClickActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/util/ClickActionUtils$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static cancelOlderApk(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/download/DownloadManager;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "dm"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 167
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

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 169
    iget v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    iget v1, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    if-lt v0, v1, :cond_0

    .line 170
    const-string v0, "cancelOlderApk return ,lastest version!"

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_1

    .line 176
    const-string v0, "cancelOlderApk return , status not pause or stop!"

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    const-string v0, "cancelOlderApk  return , download_link_for_update empty!"

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/youku/gamecenter/download/DownloadManager;->cancelDownload(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    .line 187
    iget v0, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iput v0, p1, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    .line 189
    invoke-static {p0}, Lcom/youku/gamecenter/util/ClickActionUtils;->showCancelOlderApkTip(Landroid/content/Context;)V

    .line 191
    const-string v0, "cancelOlderApk done!"

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static deleteOlderApk(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/download/DownloadManager;)V
    .locals 2
    .param p0, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p1, "dm"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOlderApk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "deleteOlderApk return,  download_link_for_update empty!"

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v0, "deleteOlderApk done!"

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->isExistSilentDoneList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->deleteDownloadedWithoutCallback(Ljava/lang/String;)V

    .line 218
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    .line 219
    iget v0, p0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iput v0, p0, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->deleteDownloaded(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getStatisticText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "location"    # I
    .param p1, "gametag"    # Ljava/lang/String;
    .param p2, "gametypename"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, ""

    .line 224
    .local v0, "statistic":Ljava/lang/String;
    if-lez p0, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locationid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gametag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gametypename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/youku/gamecenter/services/URLContainer;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_2
    return-object v0
.end method

.method public static handleAdvDialogOKAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "advStartTrack"    # [Ljava/lang/String;
    .param p4, "advEndTrack"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 41
    sget v0, Lcom/youku/gamecenter/R$string;->game_center_already_installed:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_2

    .line 46
    sget v0, Lcom/youku/gamecenter/R$string;->game_center_action_info_exist:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_3

    .line 50
    sget v0, Lcom/youku/gamecenter/R$string;->game_center_tip_download_start:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 54
    :cond_3
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameInfoActionByStatus(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleDownloadPause(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 126
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

    invoke-static {v1}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    .line 129
    .local v0, "dm":Lcom/youku/gamecenter/download/DownloadManager;
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/download/DownloadManager;->pause(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private static handleDownloadStart(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "location"    # I
    .param p4, "statistics"    # Ljava/lang/String;
    .param p5, "dialogShow"    # Z
    .param p6, "advStartTrack"    # [Ljava/lang/String;
    .param p7, "advEndTrack"    # [Ljava/lang/String;

    .prologue
    .line 149
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

    invoke-static {v1}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    .line 153
    .local v0, "dm":Lcom/youku/gamecenter/download/DownloadManager;
    invoke-static {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/youku/gamecenter/util/ClickActionUtils;->cancelOlderApk(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/download/DownloadManager;)V

    .line 155
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-static {p3, v1, v2}, Lcom/youku/gamecenter/util/ClickActionUtils;->getStatisticText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 160
    :cond_0
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iget-object v7, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    move-object v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private static handleDownloadUpdate(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "location"    # I
    .param p4, "statistics"    # Ljava/lang/String;
    .param p5, "advStartTrack"    # [Ljava/lang/String;
    .param p6, "advEndTrack"    # [Ljava/lang/String;

    .prologue
    .line 136
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

    invoke-static {v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 138
    invoke-static {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/youku/gamecenter/util/ClickActionUtils;->deleteOlderApk(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/download/DownloadManager;)V

    .line 140
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->clearSingleUpgradeNotify(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleDownloadStart(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "locationId"    # I
    .param p4, "statistics"    # Ljava/lang/String;
    .param p5, "dialogShow"    # Z

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v0, "GameCenter"

    const-string v1, "WIRELESS-31820: gameInfo == null"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameInfoActionByStatus(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method private static handleGameInfoActionByStatus(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "locationId"    # I
    .param p4, "statistics"    # Ljava/lang/String;
    .param p5, "dialogShow"    # Z

    .prologue
    const/4 v6, 0x0

    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameInfoActionByStatus(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private static handleGameInfoActionByStatus(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "locationId"    # I
    .param p4, "statistics"    # Ljava/lang/String;
    .param p5, "dialogShow"    # Z
    .param p6, "advStartTrack"    # [Ljava/lang/String;
    .param p7, "advEndTrack"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 79
    const-string v0, "GameCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIRELESS-31820: gameInfo.status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/youku/gamecenter/util/ClickActionUtils$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const-string v0, "GameCenter"

    const-string v1, "DownloadReceiver->onReceive Unknow status"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-static/range {p0 .. p7}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleDownloadStart(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleDownloadPause(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 88
    invoke-static/range {v0 .. v7}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleDownloadStart(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_3
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleLaunchApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    .line 94
    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleDownloadUpdate(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_5
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleInstall(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0

    :pswitch_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 100
    invoke-static/range {v0 .. v7}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleDownloadStart(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 80
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

.method public static handleGameLaunchAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const-string v0, "GameCenter"

    const-string v1, "WIRELESS-31820: gameInfo == null 2"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleLaunchApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleInstall(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/gamecenter/util/ClickActionUtils;->logs(Ljava/lang/String;)V

    .line 114
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/youku/gamecenter/util/FileUtils;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 115
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->handleAppInstallPage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string/jumbo v1, "\u5b89\u88c5\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static handleSlideAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slideInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "locationId"    # I
    .param p4, "statistics"    # Ljava/lang/String;
    .param p5, "dialogShow"    # Z

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 28
    sget v0, Lcom/youku/gamecenter/R$string;->game_center_action_info_exist:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 32
    :cond_1
    invoke-static/range {p0 .. p5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameInfoActionByStatus(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public static logs(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "GameCenter"

    invoke-static {v0, p0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private static showCancelOlderApkTip(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->re_download_new_version_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    return-void
.end method
