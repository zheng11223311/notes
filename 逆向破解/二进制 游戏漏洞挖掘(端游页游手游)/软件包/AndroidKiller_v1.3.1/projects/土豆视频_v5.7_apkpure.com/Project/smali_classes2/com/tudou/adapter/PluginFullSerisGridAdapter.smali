.class public Lcom/tudou/adapter/PluginFullSerisGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "PluginFullSerisGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private curpg:I

.field private detailSeris:Lcom/youku/vo/DetailSeris;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemCode:Ljava/lang/String;

.field mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/DetailSeris;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "detailSeris"    # Lcom/youku/vo/DetailSeris;
    .param p4, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    .line 31
    iput-object p3, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 32
    iput-object p2, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->handler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 38
    :cond_0
    return-void
.end method

.method private initViewHolder(Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 106
    const v0, 0x7f0c06ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0c06ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    .line 108
    return-void
.end method

.method private setViewHolderData(Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 9
    .param p1, "viewholder"    # Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;
    .param p2, "pos"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 112
    const/4 v1, 0x0

    .local v1, "l":I
    const/4 v2, 0x1

    .local v2, "r":I
    const/4 v3, 0x0

    .local v3, "t":I
    const/4 v0, 0x1

    .line 113
    .local v0, "b":I
    const/4 v4, 0x5

    if-ge p2, v4, :cond_0

    .line 114
    const/4 v3, 0x1

    .line 116
    :cond_0
    rem-int/lit8 v4, p2, 0x5

    if-nez v4, :cond_1

    .line 117
    const/4 v1, 0x1

    .line 119
    :cond_1
    invoke-virtual {p3, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 120
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 121
    iget-object v4, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_2
    :goto_0
    return-void

    .line 124
    :cond_3
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_4

    .line 126
    iget-object v4, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v4, :cond_5

    .line 131
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->itemCode:Ljava/lang/String;

    .line 133
    :cond_5
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le p2, v4, :cond_6

    .line 135
    iget-object v4, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, 0x7f0201df

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    iget-object v4, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_6
    iget-object v5, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SeriesVideo;

    iget v4, v4, Lcom/youku/vo/SeriesVideo;->video_stage:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SeriesVideo;

    iget-object v4, v4, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 144
    iget-object v4, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, -0x9a00

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    :goto_1
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SeriesVideo;

    iget-boolean v4, v4, Lcom/youku/vo/SeriesVideo;->dummy:Z

    if-eqz v4, :cond_2

    goto/16 :goto_0

    .line 146
    :cond_7
    iget-object v4, p1, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, -0x555556

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x19

    return v0
.end method

.method public getCurPage()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 92
    :cond_0
    if-nez p2, :cond_1

    .line 93
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030166

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v0, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/PluginFullSerisGridAdapter;)V

    .line 96
    .local v0, "viewholder":Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->initViewHolder(Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;Landroid/view/View;)V

    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->setViewHolderData(Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;ILandroid/view/View;)V

    .line 102
    return-object p2

    .line 99
    .end local v0    # "viewholder":Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;

    .restart local v0    # "viewholder":Lcom/tudou/adapter/PluginFullSerisGridAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getdefultPage()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->itemCode:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 179
    :cond_1
    :goto_0
    return v0

    .line 170
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 171
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    .line 173
    iget-object v2, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "j":I
    :cond_4
    move v0, v3

    .line 179
    goto :goto_0
.end method

.method public isPlayed(Ljava/lang/String;)F
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 203
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public setCurItemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->itemCode:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCurPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 157
    if-ltz p1, :cond_0

    .line 158
    iput p1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->curpg:I

    .line 161
    :cond_0
    return-void
.end method

.method public setSeriesVideo(Lcom/youku/vo/DetailSeris;)V
    .locals 0
    .param p1, "detailSeris"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tudou/adapter/PluginFullSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 46
    return-void
.end method
