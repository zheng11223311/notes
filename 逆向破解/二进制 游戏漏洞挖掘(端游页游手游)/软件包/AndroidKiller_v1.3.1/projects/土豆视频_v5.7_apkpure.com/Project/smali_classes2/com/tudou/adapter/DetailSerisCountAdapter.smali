.class public Lcom/tudou/adapter/DetailSerisCountAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailSerisCountAdapter.java"


# static fields
.field public static final UNIT:I = 0x19


# instance fields
.field private context:Landroid/content/Context;

.field private count:I

.field private curvideostage:I

.field detailSeris:Lcom/youku/vo/DetailSeris;

.field private fragment:Landroid/support/v4/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private selectitem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/DetailSeris;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "detailSeris"    # Lcom/youku/vo/DetailSeris;
    .param p4, "basefragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->count:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->selectitem:I

    .line 30
    iput-object p2, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p3, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 32
    iput-object p1, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p4, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->fragment:Landroid/support/v4/app/Fragment;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectItem()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->selectitem:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030114

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 116
    const v2, 0x7f0c04f0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    .local v1, "tv":Landroid/widget/TextView;
    const v2, 0x7f0c02d3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, p1, v1, v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setData(ILandroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 123
    return-object p2
.end method

.method public getdefultItem(Z)I
    .locals 8
    .param p1, "iscompleted"    # Z

    .prologue
    const/4 v6, 0x0

    .line 63
    iget-object v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v5, :cond_1

    move v2, v6

    .line 87
    :cond_0
    :goto_0
    return v2

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v5, :cond_2

    .line 67
    iget-object v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 68
    .local v0, "ac":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v5

    iput v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->curvideostage:I

    .line 72
    .end local v0    # "ac":Lcom/tudou/ui/activity/DetailActivity;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 73
    iget-object v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 74
    .local v4, "length":I
    iget-object v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SeriesVideo;

    iget v1, v5, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 75
    .local v1, "fist":I
    iget-object v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SeriesVideo;

    iget v3, v5, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 76
    .local v3, "last":I
    if-eqz p1, :cond_4

    .line 77
    iget v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->curvideostage:I

    if-lt v1, v5, :cond_3

    iget v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->curvideostage:I

    if-le v3, v5, :cond_0

    .line 72
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82
    :cond_4
    iget v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->curvideostage:I

    if-gt v1, v5, :cond_3

    iget v5, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->curvideostage:I

    if-lt v3, v5, :cond_3

    goto/16 :goto_0

    .end local v1    # "fist":I
    .end local v3    # "last":I
    .end local v4    # "length":I
    :cond_5
    move v2, v6

    .line 87
    goto/16 :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method

.method public setData(ILandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p3, "img"    # Landroid/widget/ImageView;

    .prologue
    const/4 v6, 0x0

    .line 96
    iget-object v3, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    .line 97
    .local v2, "length":I
    iget-object v3, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    .line 98
    .local v0, "fist":I
    iget-object v3, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    .line 99
    .local v1, "last":I
    iget v3, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->selectitem:I

    if-ne v3, p1, :cond_0

    .line 100
    const v3, -0x9a00

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
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

    iget-object v3, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    .line 108
    iget-object v3, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    .line 109
    return-void

    .line 103
    :cond_0
    const v3, -0x99999a

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    const/4 v3, 0x4

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->selectitem:I

    if-eq v0, p1, :cond_0

    .line 52
    iput p1, p0, Lcom/tudou/adapter/DetailSerisCountAdapter;->selectitem:I

    .line 56
    :cond_0
    return-void
.end method
