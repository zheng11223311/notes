.class public Lcom/tudou/adapter/PluginFullSerisCountAdapter;
.super Landroid/widget/BaseAdapter;
.source "PluginFullSerisCountAdapter.java"


# static fields
.field public static final UNIT:I = 0x19


# instance fields
.field private context:Landroid/content/Context;

.field private count:I

.field private curvideostage:I

.field detailSeris:Lcom/youku/vo/DetailSeris;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private selectitem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/DetailSeris;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "detailSeris"    # Lcom/youku/vo/DetailSeris;
    .param p4, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->count:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->selectitem:I

    .line 27
    iput-object p2, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p3, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 29
    iput-object p1, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectItem()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->selectitem:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 104
    const v1, 0x7f0c04f0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->setData(ILandroid/widget/TextView;)V

    .line 110
    return-object p2
.end method

.method public getdefultItem(Z)I
    .locals 7
    .param p1, "iscompleted"    # Z

    .prologue
    const/4 v5, 0x0

    .line 60
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v4

    iput v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->curvideostage:I

    .line 63
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 64
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 65
    .local v3, "length":I
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SeriesVideo;

    iget v0, v4, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 66
    .local v0, "fist":I
    iget-object v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SeriesVideo;

    iget v2, v4, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 67
    .local v2, "last":I
    if-eqz p1, :cond_2

    .line 68
    iget v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->curvideostage:I

    if-lt v0, v4, :cond_3

    iget v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->curvideostage:I

    if-gt v2, v4, :cond_3

    .line 78
    .end local v0    # "fist":I
    .end local v1    # "i":I
    .end local v2    # "last":I
    .end local v3    # "length":I
    :cond_1
    :goto_1
    return v1

    .line 73
    .restart local v0    # "fist":I
    .restart local v1    # "i":I
    .restart local v2    # "last":I
    .restart local v3    # "length":I
    :cond_2
    iget v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->curvideostage:I

    if-gt v0, v4, :cond_3

    iget v4, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->curvideostage:I

    if-ge v2, v4, :cond_1

    .line 63
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "fist":I
    .end local v2    # "last":I
    .end local v3    # "length":I
    :cond_4
    move v1, v5

    .line 78
    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public setData(ILandroid/widget/TextView;)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "tv"    # Landroid/widget/TextView;

    .prologue
    const/4 v6, 0x0

    .line 87
    iget-object v3, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 88
    .local v2, "length":I
    iget-object v3, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SeriesVideo;

    iget v0, v3, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 89
    .local v0, "fist":I
    iget-object v3, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SeriesVideo;

    iget v1, v3, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 90
    .local v1, "last":I
    iget v3, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->selectitem:I

    if-ne v3, p1, :cond_0

    .line 91
    const v3, -0x8e00

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    :goto_0
    const-string v4, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getview pos = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tag = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$MonthData;->tag:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$MonthData;->tag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void

    .line 93
    :cond_0
    const v3, -0x5a5a5b

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 48
    iget v0, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->selectitem:I

    if-eq v0, p1, :cond_0

    .line 49
    iput p1, p0, Lcom/tudou/adapter/PluginFullSerisCountAdapter;->selectitem:I

    .line 53
    :cond_0
    return-void
.end method
