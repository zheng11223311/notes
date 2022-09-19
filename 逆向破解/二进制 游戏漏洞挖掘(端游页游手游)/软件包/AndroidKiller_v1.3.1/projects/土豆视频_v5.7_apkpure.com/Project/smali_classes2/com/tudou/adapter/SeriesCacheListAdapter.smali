.class public Lcom/tudou/adapter/SeriesCacheListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeriesCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private curpg:I

.field detailActivity:Lcom/tudou/ui/activity/DetailActivity;

.field private detailSeris:Lcom/youku/vo/DetailSeris;

.field idownload:Lcom/tudou/service/download/DownloadManager;

.field private inflater:Landroid/view/LayoutInflater;

.field public ischeckall:Z

.field private itemCode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/DetailSeris;Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "detailSeris"    # Lcom/youku/vo/DetailSeris;
    .param p3, "detailActivity"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-boolean v3, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->ischeckall:Z

    .line 34
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->idownload:Lcom/tudou/service/download/DownloadManager;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 42
    iput-object p1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailActivity:Lcom/tudou/ui/activity/DetailActivity;

    .line 44
    iget-object v2, p2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 54
    :cond_0
    return-void

    .line 47
    :cond_1
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

    if-ge v0, v2, :cond_0

    .line 48
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

    if-ge v1, v2, :cond_2

    .line 50
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

    .line 51
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

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initViewHolder(Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 212
    const v0, 0x7f0c06ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SquareTextView;

    iput-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    .line 214
    const v0, 0x7f0c06ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    .line 215
    const v0, 0x7f0c09a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0c00f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->isplay:Landroid/widget/ImageView;

    .line 217
    const v0, 0x7f0c09a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0c09a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    .line 220
    return-void
.end method

.method private isNotLimitCache(I)Z
    .locals 2
    .param p1, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 302
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setViewHolderData(Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "viewholder"    # Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;
    .param p2, "pos"    # I

    .prologue
    const/16 v7, 0x8

    const v6, -0x4a4a4b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    const-string v1, ""

    iput-object v1, v0, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    .line 229
    :cond_0
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/youku/widget/SquareTextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/youku/widget/SquareTextView;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget v0, v0, Lcom/youku/vo/SeriesVideo;->duration:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->idownload:Lcom/tudou/service/download/DownloadManager;

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    invoke-virtual {v0, v6}, Lcom/youku/widget/SquareTextView;->setTextColor(I)V

    .line 248
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/youku/widget/SquareTextView;->setGone(ZI)V

    .line 267
    :goto_1
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-boolean v0, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    invoke-virtual {v0, v6}, Lcom/youku/widget/SquareTextView;->setTextColor(I)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 275
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u81ea\u9891\u9053:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64ad\u653e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->playtimes:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :goto_2
    return-void

    .line 241
    :cond_2
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget v0, v0, Lcom/youku/vo/SeriesVideo;->duration:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime3(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget v0, v0, Lcom/youku/vo/SeriesVideo;->limit:I

    invoke-direct {p0, v0}, Lcom/tudou/adapter/SeriesCacheListAdapter;->isNotLimitCache(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 254
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    const v1, -0x2f2f30

    invoke-virtual {v0, v1}, Lcom/youku/widget/SquareTextView;->setTextColor(I)V

    .line 255
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    invoke-virtual {v0, v5}, Lcom/youku/widget/SquareTextView;->setmode(I)V

    .line 256
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/youku/widget/SquareTextView;->setGone(ZI)V

    goto/16 :goto_1

    .line 260
    :cond_4
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    const v1, -0xc3c3c4

    invoke-virtual {v0, v1}, Lcom/youku/widget/SquareTextView;->setTextColor(I)V

    .line 261
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    invoke-virtual {v0, v5}, Lcom/youku/widget/SquareTextView;->setmode(I)V

    .line 262
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->text:Lcom/youku/widget/SquareTextView;

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/youku/widget/SquareTextView;->setGone(ZI)V

    goto/16 :goto_1

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->publishDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 285
    iget-object v1, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    iget-object v0, v0, Lcom/youku/vo/SeriesVideo;->publishDate:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_6
    iget-object v0, p1, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public checkALl()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-boolean v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->ischeckall:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/youku/vo/SeriesVideo;->checked:Z

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 312
    goto :goto_1

    .line 315
    :cond_1
    iget-boolean v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->ischeckall:Z

    if-nez v1, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->ischeckall:Z

    .line 316
    return-void

    :cond_2
    move v3, v4

    .line 315
    goto :goto_2
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v0

    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public getCurPossion()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 120
    :goto_0
    return v1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    rem-int/lit8 v1, v0, 0x19

    goto :goto_0

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 120
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

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
    .line 71
    iget-object v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :cond_0
    if-nez p2, :cond_1

    .line 199
    iget-object v1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030206

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 201
    new-instance v0, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/SeriesCacheListAdapter;)V

    .line 202
    .local v0, "viewholder":Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/SeriesCacheListAdapter;->initViewHolder(Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;Landroid/view/View;)V

    .line 203
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->setViewHolderData(Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;I)V

    .line 208
    return-object p2

    .line 205
    .end local v0    # "viewholder":Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;

    .restart local v0    # "viewholder":Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getdefultPage()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailActivity:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->itemCode:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 95
    :cond_1
    :goto_0
    return v0

    .line 86
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 87
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

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

    .line 89
    iget-object v2, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

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

    iget-object v2, v2, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "j":I
    :cond_4
    move v0, v3

    .line 95
    goto :goto_0
.end method

.method public setCurItemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->itemCode:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCurPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 103
    iget v0, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    if-eq v0, p1, :cond_0

    .line 104
    iput p1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter;->curpg:I

    .line 107
    :cond_0
    return-void
.end method
