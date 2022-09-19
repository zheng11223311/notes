.class public Lcom/tudou/adapter/PluginFullSerisListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PluginFullSerisListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private curpg:I

.field private detailSeris:Lcom/youku/vo/DetailSeris;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemCode:Ljava/lang/String;

.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/DetailSeris;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "detailSeris"    # Lcom/youku/vo/DetailSeris;
    .param p4, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    .line 33
    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iput-object p3, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 37
    iput-object p2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->handler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p4, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->inflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method private initViewHolder(Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 118
    const v0, 0x7f0c06ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0c06ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f0c09a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0c00f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->isplay:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f0c09a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0c09a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    .line 125
    return-void
.end method

.method private setViewHolderData(Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "viewholder"    # Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;
    .param p2, "pos"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 129
    const/high16 v0, -0x40800000    # -1.0f

    .line 131
    .local v0, "percent":F
    iget-object v2, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/PluginFullSerisListAdapter;->isPlayed(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :goto_0
    iget-object v2, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget v1, v1, Lcom/youku/vo/SeriesVideo;->duration:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Lcom/youku/util/Util;->formatTime3(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v2, -0x8e00

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v1, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->isplay:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v2, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u81ea\u9891\u9053:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->playtimes:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_2
    return-void

    .line 137
    :cond_0
    iget-object v1, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 149
    :cond_1
    iget-object v1, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v2, -0x555556

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v1, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->isplay:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->publishDate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    iget-object v2, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->publishDate:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3
    iget-object v1, p1, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DetailSerisListAdapter getCount curpg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 58
    goto :goto_0
.end method

.method public getCurPage()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    return v0
.end method

.method public getCurPossion()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 90
    :goto_0
    return v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    rem-int/lit8 v1, v0, 0x19

    goto :goto_0

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 90
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 64
    const-string v0, "DetailSerisFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    mul-int/lit8 v2, v2, 0x19

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->itemCode:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 104
    :cond_1
    if-nez p2, :cond_2

    .line 105
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030208

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    new-instance v0, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/PluginFullSerisListAdapter;)V

    .line 108
    .local v0, "viewholder":Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/PluginFullSerisListAdapter;->initViewHolder(Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;Landroid/view/View;)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/tudou/adapter/PluginFullSerisListAdapter;->setViewHolderData(Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;I)V

    .line 114
    return-object p2

    .line 111
    .end local v0    # "viewholder":Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;

    .restart local v0    # "viewholder":Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getdefultPage()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->itemCode:Ljava/lang/String;

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 195
    :cond_1
    :goto_0
    return v0

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    move v0, v3

    .line 184
    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 187
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    if-ge v1, v2, :cond_4

    .line 189
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "j":I
    :cond_5
    move v0, v3

    .line 195
    goto :goto_0
.end method

.method public isPlayed(Ljava/lang/String;)F
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 224
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public setCurItemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->itemCode:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCurPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 170
    if-ltz p1, :cond_0

    .line 171
    iput p1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter;->curpg:I

    .line 174
    :cond_0
    return-void
.end method
