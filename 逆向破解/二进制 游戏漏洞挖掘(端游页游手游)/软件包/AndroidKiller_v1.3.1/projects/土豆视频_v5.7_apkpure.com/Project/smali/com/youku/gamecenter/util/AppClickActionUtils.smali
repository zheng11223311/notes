.class public Lcom/youku/gamecenter/util/AppClickActionUtils;
.super Ljava/lang/Object;
.source "AppClickActionUtils.java"


# static fields
.field private static sClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/gamecenter/util/AppClickActionUtils;->sClickTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static handleDownloadAction(Landroid/content/Context;Landroid/widget/ImageView;ILcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "locationid"    # I
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "statistics"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 440
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    .line 441
    const-string v0, "GameCenter"

    const-string v1, "WIRELESS-31820: info.status != GameInfoStatus.STATUS_NEW"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p2

    move-object v4, p5

    .line 442
    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 455
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 447
    :cond_1
    const-string v0, "GameCenter"

    const-string v1, "WIRELESS-31820: network is wifi or no netWork"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {p0, p3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->isSdcardAvailable(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/UIUtils;->startAnimation(Landroid/content/Context;Landroid/widget/ImageView;)V

    :cond_2
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p2

    move-object v4, p5

    .line 451
    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, p5

    .line 454
    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/UIUtils;->showDwonloadContinueOrNotDialog(Landroid/content/Context;Landroid/widget/ImageView;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static handleLaunchApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 53
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    sget v3, Lcom/youku/gamecenter/R$string;->apk_launch_error:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static handleOpenOrInstallApp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ver_code"    # I
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "isDownloaded"    # Z
    .param p5, "download_link"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    invoke-static {p1, p2, p0}, Lcom/youku/gamecenter/util/SystemUtils;->isOpenDirectly(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    invoke-static {p0, p1, p3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleLaunchApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_0
    return v1

    .line 426
    :cond_0
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    .line 427
    invoke-static {p0, p5}, Lcom/youku/gamecenter/util/FileUtils;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 429
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    invoke-static {p0, v0, p1, p6}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->handleAppInstallPage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 433
    :cond_1
    const-string/jumbo v1, "\u5b89\u88c5\u5931\u8d25"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .end local v0    # "file":Ljava/io/File;
    :cond_2
    move v1, v2

    .line 435
    goto :goto_0
.end method

.method public static handleRepeatClick()Z
    .locals 4

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/youku/gamecenter/util/AppClickActionUtils;->sClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/youku/gamecenter/util/AppClickActionUtils;->sClickTime:J

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleSliderClickAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 406
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget v2, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    iget-object v6, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleOpenOrInstallApp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    :goto_1
    return-void

    :cond_0
    move v4, v7

    .line 406
    goto :goto_0

    .line 409
    :cond_1
    invoke-static {p1}, Lcom/youku/gamecenter/data/GameInfo;->isGameOnboard(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->on_no_board:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 413
    :cond_2
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isSdcardAvailable(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v2, 0x0

    .line 459
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v2

    .line 463
    :cond_1
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/gamecenter/util/SystemUtils;->computeByteSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 464
    .local v0, "totalSize":J
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->getAvailableSDCardMemory()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 468
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static launchClientHomePage(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    sget v1, Lcom/youku/gamecenter/services/URLContainer;->PRODUCT_ID:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.youku.ui.activity.HomePageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameCenterDialogActivity(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameCenterDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    const-string v1, "downloadinfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method public static launchGameCenterHomeActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method public static launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    return-void
.end method

.method public static launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    return-void
.end method

.method private static launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "statistics"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 163
    const-string v1, "locationid"

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    const-string/jumbo v1, "statistics"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "statistics"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    return-void
.end method

.method public static launchGameH5CardListActivity(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 475
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameH5CardListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameManagerActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method public static launchGameNetActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameNetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGamePresentActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentActivity(Landroid/content/Context;I)V

    .line 220
    return-void
.end method

.method public static launchGamePresentActivity(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tabId"    # I

    .prologue
    .line 223
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GamePresentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 227
    const-string/jumbo v1, "tabId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGamePresentDetailsActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GamePresentDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "presentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGamePresentListActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentListActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static launchGamePresentListActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    const-string v1, "pkgNameFromGameDetail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameRankActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameRankActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameRankActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "boxId"    # Ljava/lang/String;
    .param p3, "posterUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameRankActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "boxId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "posterUrl"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameSearchActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v0, "goSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public static launchGameSearchResultActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchWord"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 314
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "searchWord"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameSubCategoryActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/youku/gamecenter/data/CategoryInfo;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "tagId"    # Ljava/lang/String;
    .param p3, "cardTitle"    # Ljava/lang/String;
    .param p4, "focusPosition"    # I
    .param p5, "showtags"    # Z
    .param p6, "categoryInfo"    # Lcom/youku/gamecenter/data/CategoryInfo;

    .prologue
    .line 261
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p6, Lcom/youku/gamecenter/data/CategoryInfo;->tags:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 266
    .local v3, "length":I
    new-array v4, v3, [Ljava/lang/String;

    .line 267
    .local v4, "tagIds":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 269
    .local v5, "tagTitles":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 270
    iget-object v6, p6, Lcom/youku/gamecenter/data/CategoryInfo;->tags:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    .line 271
    .local v2, "item":Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    iget-object v6, v2, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->id:Ljava/lang/String;

    aput-object v6, v4, v0

    .line 272
    iget-object v6, v2, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    .end local v2    # "item":Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    :cond_1
    const-string v6, "from"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string/jumbo v6, "showtags"

    invoke-virtual {v1, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const-string/jumbo v6, "tagId"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v6, "tagIds"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v6, "cardTitle"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string/jumbo v6, "tagTitles"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v6, "categoryId"

    iget v7, p6, Lcom/youku/gamecenter/data/CategoryInfo;->id:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v6, "focusPosition"

    invoke-virtual {v1, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v6, "categoryTitle"

    iget-object v7, p6, Lcom/youku/gamecenter/data/CategoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameSubCategoryActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "boxId"    # Ljava/lang/String;
    .param p3, "postUrl"    # Ljava/lang/String;
    .param p4, "cardTitle"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "boxId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "postUrl"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "cardTitle"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameSubCategoryActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "tagId"    # Ljava/lang/String;
    .param p3, "cardTitle"    # Ljava/lang/String;
    .param p4, "isCategory"    # Z

    .prologue
    .line 237
    invoke-static {}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleRepeatClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string/jumbo v1, "tagId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "cardTitle"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "isCategory"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchGameVideoActivity(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "packagename"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public static launchGameVideoListActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameVideoListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public static launchLIVEView(Landroid/content/Context;Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mHomeVideoInfo"    # Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;

    .prologue
    const/4 v1, 0x1

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 393
    .local v0, "mIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.youku.ui.activity.DetailActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 394
    const-string v2, "liveid"

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->tid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v2, "liveurl"

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v2, "liveimg"

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->image:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v2, "isPay"

    iget v3, p1, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->paid:I

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    const-string/jumbo v1, "video_channel_type"

    iget v2, p1, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->playlist_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    const-string v1, "playlist_id"

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 403
    return-void

    .line 397
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static launchRecommandActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v0, "mIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.youku.phone"

    const-string v3, "com.youku.ui.activity.RecommandActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method

.method public static launchVideoDetailPage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # I
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "GameUserCenter"

    const-string v1, "--->launchVideoDetailPage start"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {p0, p1, p2}, Lcom/youku/gamecenter/statistics/GameAnalytics;->gameCardVideoClick(Landroid/content/Context;ILjava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchVideoDetailPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "GameUserCenter"

    const-string v1, "--->launchVideoDetailPage end"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public static launchVideoDetailPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchVideoDetailPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public static launchVideoDetailPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playlist_id"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v1, "GameUserCenter"

    const-string v2, "--->launchVideoDetailPage final start"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "GameUserCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->launchVideoDetailPage vid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget v1, Lcom/youku/gamecenter/services/URLContainer;->PRODUCT_ID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 350
    const-string v1, "GameUserCenter"

    const-string v2, "--->launchVideoDetailPage is youku"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.youku.ui.activity.DetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 353
    :cond_0
    sget v1, Lcom/youku/gamecenter/services/URLContainer;->PRODUCT_ID:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 354
    const-string v1, "GameUserCenter"

    const-string v2, "--->launchVideoDetailPage is tudou"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tudou.ui.activity.DetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 357
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    const-string v1, "GameUserCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->launchVideoDetailPage playlist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "playlist_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    const-string v1, "GameUserCenter"

    const-string v2, "--->launchVideoDetailPage final end"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public static launchWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public static launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "gameinfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public static launchWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.youku.ui.activity.WebViewActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
