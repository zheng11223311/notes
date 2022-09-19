.class public Lcom/youku/gamecenter/outer/HomeDialogHelper;
.super Ljava/lang/Object;
.source "HomeDialogHelper.java"

# interfaces
.implements Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;
.implements Lcom/youku/gamecenter/services/GetHomePageDialogService$OnHomePageDialogServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;,
        Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;
    }
.end annotation


# instance fields
.field private MAX_SILENT_GAME_SHOW_TIMES:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/youku/gamecenter/widgets/HomePageDialog;

.field private mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

.field private mPostImage:Landroid/graphics/drawable/Drawable;

.field private mShowDialog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->MAX_SILENT_GAME_SHOW_TIMES:I

    .line 57
    iput-object p1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/outer/HomeDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/HomeDialogHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/HomeDialogHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mPostImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/gamecenter/outer/HomeDialogHelper;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/HomeDialogHelper;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mPostImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Lcom/youku/gamecenter/widgets/HomePageDialog;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/HomeDialogHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mDialog:Lcom/youku/gamecenter/widgets/HomePageDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/outer/HomeDialogHelper;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/HomeDialogHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->sendTrackBySilentDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/HomeDialogHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private downloadGame(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 10
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getStatisticText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 552
    .local v9, "statistics":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    const-string v6, "31"

    iget-object v7, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    const-string v8, "download_game"

    invoke-virtual/range {v0 .. v9}, Lcom/youku/gamecenter/download/DownloadManager;->openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private filterDownloadedGames()V
    .locals 5

    .prologue
    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v2, "removedList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;>;"
    iget-object v3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    .line 372
    .local v1, "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    iget v3, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->op_type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 375
    iget-object v3, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_0

    .line 378
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    .line 383
    .restart local v1    # "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    iget-object v3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    :cond_2
    return-void
.end method

.method private getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/youku/gamecenter/R$string;->game_dialog_install_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->total_downloads:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    goto :goto_0
.end method

.method private getOpenTypeByInt(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 473
    packed-switch p1, :pswitch_data_0

    .line 479
    const-string/jumbo v0, "show_details"

    :goto_0
    return-object v0

    .line 475
    :pswitch_0
    const-string/jumbo v0, "show_details"

    goto :goto_0

    .line 477
    :pswitch_1
    const-string v0, "download_game"

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStatisticText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "location"    # I
    .param p2, "rec_tags"    # Ljava/lang/String;
    .param p3, "gametypename"    # Ljava/lang/String;

    .prologue
    .line 459
    const-string v0, ""

    .line 460
    .local v0, "statistic":Ljava/lang/String;
    if-lez p1, :cond_0

    .line 461
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

    .line 462
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
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

    .line 465
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
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

    .line 469
    :cond_2
    return-object v0
.end method

.method private getTrackPara()Ljava/lang/String;
    .locals 10

    .prologue
    .line 560
    iget-object v8, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    if-nez v8, :cond_0

    .line 561
    const-string v8, ""

    .line 600
    :goto_0
    return-object v8

    .line 565
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 566
    .local v6, "sb":Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v8, v8, Lcom/youku/gamecenter/data/HomePageDialogInfo;->id:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 567
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&popid=download_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v9, v9, Lcom/youku/gamecenter/data/HomePageDialogInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    :cond_1
    iget-object v8, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v3, v8, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    .line 572
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 573
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 576
    :cond_3
    const-string v1, ""

    .line 577
    .local v1, "ids":Ljava/lang/String;
    const-string v4, ""

    .line 578
    .local v4, "names":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_7

    .line 579
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    .line 580
    .local v2, "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    if-nez v2, :cond_5

    .line 578
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    :cond_5
    iget-object v8, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v8, :cond_4

    .line 586
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_6

    const-string v7, ""

    .line 587
    .local v7, "split":Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v9, v9, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v9, v9, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 586
    .end local v7    # "split":Ljava/lang/String;
    :cond_6
    const-string v7, ","

    goto :goto_3

    .line 591
    .end local v2    # "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&gameid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 596
    const-string v8, "gamename"

    invoke-static {v8, v4}, Lcom/youku/gamecenter/services/URLContainer;->getValidText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 597
    .local v5, "para":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    .end local v5    # "para":Ljava/lang/String;
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private handleItem1Clicked(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v11

    .line 486
    .local v11, "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    iget-object v10, v11, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    .line 488
    .local v10, "game":Lcom/youku/gamecenter/data/GameInfo;
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getStatisticText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "statistics":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, v10, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v2, v10, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v3, v10, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    iget v5, v10, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    const-string v6, "31"

    iget-object v7, v10, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget v8, v11, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->op_type:I

    invoke-direct {p0, v8}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getOpenTypeByInt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/youku/gamecenter/download/DownloadManager;->openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private handleItemButtonClicked(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v11

    .line 499
    .local v11, "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    iget-object v10, v11, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    .line 501
    .local v10, "game":Lcom/youku/gamecenter/data/GameInfo;
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getStatisticText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 502
    .local v9, "statistics":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, v10, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v2, v10, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v3, v10, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    iget v5, v10, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    const-string v6, "31"

    iget-object v7, v10, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    const-string v8, "download_game"

    invoke-virtual/range {v0 .. v9}, Lcom/youku/gamecenter/download/DownloadManager;->openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private hasValidData()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActivitiesDialogType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->op_type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDialogAlreadyShowed()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    const-string v4, "gamecenter"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "gamecenter_home_dialog_id"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "dialogId":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    :goto_0
    return v2

    :cond_0
    const-string v2, "gamecenter_home_dialog_showed"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private isItem1SingleStyle()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 292
    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    if-nez v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 299
    goto :goto_0
.end method

.method private loadImageAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 415
    :cond_0
    new-instance v0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;-><init>(Lcom/youku/gamecenter/outer/HomeDialogHelper;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 445
    .local v2, "i":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 446
    .local v3, "u":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 449
    .end local v3    # "u":Ljava/net/URL;
    :goto_0
    const/4 v1, 0x0

    .line 451
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :try_start_1
    const-string/jumbo v4, "src"

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 454
    :goto_1
    return-object v1

    .line 452
    :catch_0
    move-exception v4

    goto :goto_1

    .line 447
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private preLoadPostImage()V
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    if-nez v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v0

    .line 395
    .local v0, "itemInfo":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, v0, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mShowDialog:Z

    .line 405
    iget-object v1, v0, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->image:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->loadImageAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private preloadDialogDatas()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/youku/gamecenter/services/GetHomePageDialogService;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/youku/gamecenter/services/GetHomePageDialogService;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "service":Lcom/youku/gamecenter/services/GetHomePageDialogService;
    invoke-static {}, Lcom/youku/gamecenter/services/URLContainer;->getHomePageDialogUrl()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 185
    return-void
.end method

.method private preloadLocalPackages()V
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameCenterModel;->loadLocalPackages(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method private removeExcessDatas()V
    .locals 2

    .prologue
    .line 348
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    if-nez v1, :cond_1

    .line 363
    :cond_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 360
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private sendTrack()V
    .locals 4

    .prologue
    .line 193
    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_HOME_POP_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getTrackPara()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 198
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void
.end method

.method private sendTrackBySilentDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "gameid"    # Ljava/lang/String;
    .param p2, "gamename"    # Ljava/lang/String;
    .param p3, "is_install"    # Z

    .prologue
    .line 203
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .local v1, "url":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_HOME_POP_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    const-string v2, "&popid=install_null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&gameid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&gamename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p2}, Lcom/youku/gamecenter/services/URLContainer;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    if-eqz p3, :cond_0

    .line 212
    const-string v2, "&is_install=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    :cond_0
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 217
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    return-void
.end method

.method private setDialogAlreadyShowed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    iput-boolean v4, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mShowDialog:Z

    .line 239
    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    const-string v3, "gamecenter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 240
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gamecenter_home_dialog_id"

    iget-object v3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string v2, "gamecenter_home_dialog_showed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method private setDialogDatas(Lcom/youku/gamecenter/widgets/HomePageDialog;)V
    .locals 8
    .param p1, "dialog"    # Lcom/youku/gamecenter/widgets/HomePageDialog;

    .prologue
    .line 247
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v1

    .line 248
    .local v1, "itemInfo1":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mPostImage:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v6, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->rec_words:Ljava/lang/String;

    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->isItem1SingleStyle()Z

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/youku/gamecenter/widgets/HomePageDialog;->setItem1Data(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 254
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v2

    .line 255
    .local v2, "itemInfo2":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    if-eqz v2, :cond_0

    .line 258
    iget-object v4, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v4}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "downloads":Ljava/lang/String;
    iget-object v4, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->setItem2Data(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v5}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/youku/gamecenter/widgets/HomePageDialog;->getItem2Icon()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 263
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v3

    .line 264
    .local v3, "itemInfo3":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    if-eqz v3, :cond_0

    .line 267
    iget-object v4, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v4}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v4, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->setItem3Data(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v4

    iget-object v5, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v5}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/youku/gamecenter/widgets/HomePageDialog;->getItem3Icon()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private showActivitiesDialog(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v7

    .line 112
    .local v7, "itemInfo1":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    iget-object v0, v7, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v0, v7, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->image:Ljava/lang/String;

    iget-object v4, v7, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->rec_words:Ljava/lang/String;

    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/gamecenter/R$string;->game_home_page_activities_dialog_btn_name:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;

    iget-object v0, v7, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->h5_url:Ljava/lang/String;

    iget-object v8, v7, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {v6, p0, v0, v8}, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;-><init>(Lcom/youku/gamecenter/outer/HomeDialogHelper;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;)Lcom/youku/gamecenter/widgets/SilentGameDialog;

    .line 116
    return-void
.end method


# virtual methods
.method public checkAndGetSilentGameDate()Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 120
    iget-object v9, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/youku/gamecenter/download/DownloadManager;->SH_PUSH_GAME_SILENT_INSTALL_TOAST:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 123
    .local v4, "sh":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "toast_img"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "imageUrl":Ljava/lang/String;
    const-string/jumbo v9, "toast_msg"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "desc":Ljava/lang/String;
    const-string v9, "packagename"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v9, "version"

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 127
    .local v7, "version":I
    const-string/jumbo v9, "show_times"

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 128
    .local v6, "showTimes":I
    const-string/jumbo v9, "show_date"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "showDate":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v1, v8

    .line 152
    :cond_0
    :goto_0
    return-object v1

    .line 134
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    move-object v1, v8

    .line 135
    goto :goto_0

    .line 138
    :cond_3
    iget v9, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->MAX_SILENT_GAME_SHOW_TIMES:I

    if-ne v6, v9, :cond_4

    move-object v1, v8

    .line 139
    goto :goto_0

    .line 142
    :cond_4
    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v1, v8

    .line 144
    goto :goto_0

    .line 147
    :cond_5
    iget-object v9, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v9

    invoke-virtual {v9, v3, v7}, Lcom/youku/gamecenter/download/DownloadManager;->getGameSilentDownloadInfo(Ljava/lang/String;I)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v1

    .line 149
    .local v1, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    if-nez v1, :cond_0

    move-object v1, v8

    .line 152
    goto :goto_0
.end method

.method public checkAndShowHomePageDialog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->showSilentGameDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mShowDialog:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->isActivitiesDialogType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->showActivitiesDialog(Landroid/content/Context;)V

    .line 94
    :goto_1
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->sendTrack()V

    .line 96
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->setDialogAlreadyShowed()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {p1, p0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->createDialog(Landroid/content/Context;Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;)Lcom/youku/gamecenter/widgets/HomePageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mDialog:Lcom/youku/gamecenter/widgets/HomePageDialog;

    .line 90
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mDialog:Lcom/youku/gamecenter/widgets/HomePageDialog;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->setDialogDatas(Lcom/youku/gamecenter/widgets/HomePageDialog;)V

    goto :goto_1
.end method

.method public onBottomClicked()V
    .locals 3

    .prologue
    .line 541
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 542
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->getItemByIndex(I)Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    move-result-object v1

    .line 543
    .local v1, "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v2, :cond_1

    .line 541
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    iget-object v2, v1, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->downloadGame(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_1

    .line 548
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    :cond_2
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 1
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mShowDialog:Z

    .line 308
    return-void
.end method

.method public onItem1ActionButtonClicked()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->handleItemButtonClicked(I)V

    .line 526
    return-void
.end method

.method public onItem1Clicked()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->handleItem1Clicked(I)V

    .line 511
    return-void
.end method

.method public onItem2ActionButtonClicked()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->handleItemButtonClicked(I)V

    .line 531
    return-void
.end method

.method public onItem2Clicked()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->handleItem1Clicked(I)V

    .line 516
    return-void
.end method

.method public onItem3ActionButtonClicked()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->handleItemButtonClicked(I)V

    .line 536
    return-void
.end method

.method public onItem3Clicked()V
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->handleItem1Clicked(I)V

    .line 521
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/HomePageDialogInfo;)V
    .locals 1
    .param p1, "recomInfo"    # Lcom/youku/gamecenter/data/HomePageDialogInfo;

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mShowDialog:Z

    .line 315
    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iput-object p1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mHomePageDialogInfo:Lcom/youku/gamecenter/data/HomePageDialogInfo;

    .line 322
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->isDialogAlreadyShowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->filterDownloadedGames()V

    .line 330
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->hasValidData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->removeExcessDatas()V

    .line 338
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->preLoadPostImage()V

    goto :goto_0
.end method

.method public preLoadDatas()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->checkAndGetSilentGameDate()Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->preloadLocalPackages()V

    .line 68
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->preloadDialogDatas()V

    goto :goto_0
.end method

.method public showSilentGameDialog(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->checkAndGetSilentGameDate()Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v8

    .line 158
    .local v8, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    if-nez v8, :cond_0

    .line 176
    :goto_0
    return v0

    .line 161
    :cond_0
    sget-object v1, Lcom/youku/gamecenter/download/DownloadManager;->SH_PUSH_GAME_SILENT_INSTALL_TOAST:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 164
    .local v9, "sh":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 165
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "show_times"

    invoke-interface {v9, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 166
    .local v10, "showTimes":I
    const-string/jumbo v1, "toast_img"

    const-string v2, ""

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "imageUrl":Ljava/lang/String;
    const-string/jumbo v1, "toast_msg"

    const-string v2, ""

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "desc":Ljava/lang/String;
    const-string/jumbo v1, "show_times"

    add-int/lit8 v2, v10, 0x1

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string/jumbo v1, "show_date"

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xa

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    iget-object v1, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    iget-object v2, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->sendTrackBySilentDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    iget-object v1, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    iget-object v2, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/gamecenter/R$string;->str_install:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;

    invoke-direct {v6, p0, v8}, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;-><init>(Lcom/youku/gamecenter/outer/HomeDialogHelper;Lcom/youku/gamecenter/download/DownloadInfo;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;)Lcom/youku/gamecenter/widgets/SilentGameDialog;

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method
