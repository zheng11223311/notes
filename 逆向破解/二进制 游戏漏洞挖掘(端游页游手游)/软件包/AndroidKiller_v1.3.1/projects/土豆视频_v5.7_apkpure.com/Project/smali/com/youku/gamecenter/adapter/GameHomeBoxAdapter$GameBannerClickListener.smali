.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;
.super Ljava/lang/Object;
.source "GameHomeBoxAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GameBannerClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/youku/gamecenter/data/HomePageBoxInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/data/HomePageBoxInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/youku/gamecenter/data/HomePageBoxInfo;

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mContext:Landroid/content/Context;

    .line 891
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mData:Lcom/youku/gamecenter/data/HomePageBoxInfo;

    .line 892
    return-void
.end method

.method private getBannerOpenType(I)Ljava/lang/String;
    .locals 1
    .param p1, "openType"    # I

    .prologue
    .line 941
    if-nez p1, :cond_0

    .line 942
    const-string v0, "download_game"

    .line 953
    :goto_0
    return-object v0

    .line 944
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 945
    const-string/jumbo v0, "show_details"

    goto :goto_0

    .line 947
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 948
    const-string/jumbo v0, "show_presents"

    goto :goto_0

    .line 950
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 951
    const-string/jumbo v0, "show_h5_activity"

    goto :goto_0

    .line 953
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private getStatisticText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tags"    # Ljava/lang/String;
    .param p2, "gametypename"    # Ljava/lang/String;

    .prologue
    .line 930
    const-string v0, ""

    .line 931
    .local v0, "statistic":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
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

    .line 934
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 935
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

    .line 937
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mData:Lcom/youku/gamecenter/data/HomePageBoxInfo;

    iget v0, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->operation_type:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->getBannerOpenType(I)Ljava/lang/String;

    move-result-object v8

    .line 899
    .local v8, "openType":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mData:Lcom/youku/gamecenter/data/HomePageBoxInfo;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v10

    .line 900
    .local v10, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v10, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    const-string/jumbo v0, "show_presents"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mContext:Landroid/content/Context;

    iget-object v1, v10, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentListActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_2
    const-string/jumbo v0, "show_h5_activity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 912
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mData:Lcom/youku/gamecenter/data/HomePageBoxInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->h5ActivitiesInfo:Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mData:Lcom/youku/gamecenter/data/HomePageBoxInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->h5ActivitiesInfo:Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mData:Lcom/youku/gamecenter/data/HomePageBoxInfo;

    invoke-virtual {v2}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v2

    const-string v3, "39"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_3
    const-string v0, "download_game"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v10, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_4

    .line 917
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tip_download_start:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 921
    :cond_4
    invoke-virtual {v10}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->getStatisticText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 922
    .local v9, "statistics":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, v10, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v2, v10, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iget-object v3, v10, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    iget v5, v10, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    const-string v6, "33"

    iget-object v7, v10, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/youku/gamecenter/download/DownloadManager;->openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
