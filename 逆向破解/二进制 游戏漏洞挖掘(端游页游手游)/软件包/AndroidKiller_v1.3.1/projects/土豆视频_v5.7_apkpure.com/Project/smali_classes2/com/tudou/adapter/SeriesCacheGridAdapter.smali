.class public Lcom/tudou/adapter/SeriesCacheGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeriesCacheGridAdapter.java"


# instance fields
.field private curpg:I

.field private detailSeris:Lcom/youku/vo/DetailSeris;

.field private detailactivity:Lcom/tudou/ui/activity/DetailActivity;

.field idownload:Lcom/tudou/service/download/DownloadManager;

.field public ischeckall:Z

.field private itemCode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/DetailSeris;Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "detailSeris"    # Lcom/youku/vo/DetailSeris;
    .param p3, "detailactivity"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-boolean v3, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->ischeckall:Z

    .line 35
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->idownload:Lcom/tudou/service/download/DownloadManager;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    :cond_0
    iput-object p2, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 46
    iput-object p3, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailactivity:Lcom/tudou/ui/activity/DetailActivity;

    .line 47
    iput-object p1, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->mContext:Landroid/content/Context;

    .line 48
    iget-object v2, p2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 58
    :cond_1
    return-void

    .line 51
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 52
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 54
    iget-object v2, p2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SeriesVideo;

    iput-boolean v3, v2, Lcom/youku/vo/SeriesVideo;->checked:Z

    .line 55
    iget-object v2, p2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SeriesVideo;

    iput-boolean v3, v2, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isNotLimitCache(I)Z
    .locals 2
    .param p1, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 181
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkALl()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-boolean v2, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->ischeckall:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/youku/vo/SeriesVideo;->checked:Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 191
    goto :goto_1

    .line 194
    :cond_1
    iget-boolean v1, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->ischeckall:Z

    if-nez v1, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->ischeckall:Z

    .line 195
    return-void

    :cond_2
    move v3, v4

    .line 194
    goto :goto_2
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemByPage(II)Ljava/lang/Object;
    .locals 2
    .param p1, "page"    # I
    .param p2, "pos"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, -0xf0f10

    const/4 v10, 0x0

    .line 105
    if-nez p2, :cond_4

    .line 106
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0301c0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 109
    const v7, 0x7f0c082b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/SquareTextView;

    .line 112
    .local v5, "textview":Lcom/youku/widget/SquareTextView;
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :goto_0
    const/4 v1, 0x0

    .local v1, "l":I
    const/4 v2, 0x1

    .local v2, "r":I
    const/4 v4, 0x0

    .local v4, "t":I
    const/4 v0, 0x1

    .line 117
    .local v0, "b":I
    const/4 v7, 0x5

    if-ge p1, v7, :cond_0

    .line 118
    const/4 v4, 0x1

    .line 120
    :cond_0
    rem-int/lit8 v7, p1, 0x5

    if-nez v7, :cond_1

    .line 121
    const/4 v1, 0x1

    .line 123
    :cond_1
    invoke-virtual {p2, v1, v4, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailactivity:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailactivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailactivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v7

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v7, :cond_2

    .line 128
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailactivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v7

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->itemCode:Ljava/lang/String;

    .line 133
    :cond_2
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_8

    .line 136
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SeriesVideo;

    .line 138
    .local v3, "sv":Lcom/youku/vo/SeriesVideo;
    iget-object v6, v3, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    .line 140
    .local v6, "vid":Ljava/lang/String;
    iget v7, v3, Lcom/youku/vo/SeriesVideo;->video_stage:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/youku/widget/SquareTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget v7, v3, Lcom/youku/vo/SeriesVideo;->video_stage:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/youku/widget/SquareTextView;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->idownload:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v7, v6}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    const-string v7, "test1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "existsDownloadInfo vid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v5, v11}, Lcom/youku/widget/SquareTextView;->setBackgroundColor(I)V

    .line 148
    iget v7, v3, Lcom/youku/vo/SeriesVideo;->video_stage:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v10, v7}, Lcom/youku/widget/SquareTextView;->setGone(ZI)V

    .line 177
    .end local v3    # "sv":Lcom/youku/vo/SeriesVideo;
    .end local v6    # "vid":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p2

    .line 114
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v4    # "t":I
    .end local v5    # "textview":Lcom/youku/widget/SquareTextView;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/SquareTextView;

    .restart local v5    # "textview":Lcom/youku/widget/SquareTextView;
    goto/16 :goto_0

    .line 151
    .restart local v0    # "b":I
    .restart local v1    # "l":I
    .restart local v2    # "r":I
    .restart local v3    # "sv":Lcom/youku/vo/SeriesVideo;
    .restart local v4    # "t":I
    .restart local v6    # "vid":Ljava/lang/String;
    :cond_5
    const v7, 0x7f0200aa

    invoke-virtual {v5, v7}, Lcom/youku/widget/SquareTextView;->setBackgroundResource(I)V

    .line 152
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/SeriesVideo;

    iget-boolean v7, v7, Lcom/youku/vo/SeriesVideo;->dummy:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/SeriesVideo;

    iget v7, v7, Lcom/youku/vo/SeriesVideo;->limit:I

    invoke-direct {p0, v7}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->isNotLimitCache(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 157
    :cond_6
    const v7, -0x2f2f30

    invoke-virtual {v5, v7}, Lcom/youku/widget/SquareTextView;->setTextColor(I)V

    .line 158
    const/4 v7, 0x1

    iget v8, v3, Lcom/youku/vo/SeriesVideo;->video_stage:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/youku/widget/SquareTextView;->setGone(ZI)V

    .line 165
    :goto_2
    iget-object v7, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v7, v7, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/SeriesVideo;

    iget-boolean v7, v7, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    if-eqz v7, :cond_3

    .line 167
    invoke-virtual {v5, v11}, Lcom/youku/widget/SquareTextView;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 161
    :cond_7
    const v7, -0x99999a

    invoke-virtual {v5, v7}, Lcom/youku/widget/SquareTextView;->setTextColor(I)V

    .line 162
    iget v7, v3, Lcom/youku/vo/SeriesVideo;->video_stage:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v10, v7}, Lcom/youku/widget/SquareTextView;->setGone(ZI)V

    goto :goto_2

    .line 173
    .end local v3    # "sv":Lcom/youku/vo/SeriesVideo;
    .end local v6    # "vid":Ljava/lang/String;
    :cond_8
    const-string v7, ""

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/youku/widget/SquareTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v7, 0x7f020080

    invoke-virtual {v5, v7}, Lcom/youku/widget/SquareTextView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public setCurItemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->itemCode:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCurPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    if-eq v0, p1, :cond_0

    .line 76
    iput p1, p0, Lcom/tudou/adapter/SeriesCacheGridAdapter;->curpg:I

    .line 79
    :cond_0
    return-void
.end method
