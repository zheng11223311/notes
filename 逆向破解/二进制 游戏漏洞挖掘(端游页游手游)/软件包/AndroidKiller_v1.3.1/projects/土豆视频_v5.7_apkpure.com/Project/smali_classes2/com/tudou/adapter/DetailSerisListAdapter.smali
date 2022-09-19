.class public Lcom/tudou/adapter/DetailSerisListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailSerisListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private curpg:I

.field private detailSeris:Lcom/youku/vo/DetailSeris;

.field private fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

.field private handler:Landroid/os/Handler;

.field private imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemCode:Ljava/lang/String;

.field private videoinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/DetailSeris;Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/tudou/ui/fragment/DetailBaseFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "detailSeris"    # Lcom/youku/vo/DetailSeris;
    .param p4, "imagework"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .param p5, "basefragment"    # Lcom/tudou/ui/fragment/DetailBaseFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    .line 40
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-object p3, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 44
    iput-object p2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->handler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p4, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 47
    iput-object p5, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    .line 48
    if-eqz p1, :cond_1

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 51
    :cond_1
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->videoinfo:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private initViewHolder(Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 127
    const v0, 0x7f0c06ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0c06ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f0c09a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0c00f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->isplay:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0c09a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0c09a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    .line 134
    return-void
.end method

.method private setViewHolderData(Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "viewholder"    # Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;
    .param p2, "pos"    # I

    .prologue
    .line 139
    const/high16 v0, -0x40800000    # -1.0f

    .line 141
    .local v0, "percent":F
    :try_start_0
    iget-object v2, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DetailSerisListAdapter;->isPlayed(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget v1, v1, Lcom/youku/vo/SeriesVideo;->duration:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 153
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/adapter/DetailSerisListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 163
    :cond_0
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v2, -0x8e00

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->isplay:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :goto_2
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

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

    if-nez v1, :cond_4

    .line 171
    iget-object v2, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u81ea\u9891\u9053:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

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

    .line 175
    iget-object v2, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

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

    .line 179
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_3
    return-void

    .line 147
    :cond_1
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v1

    goto :goto_3

    .line 155
    :cond_2
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v2, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

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

    goto/16 :goto_1

    .line 166
    :cond_3
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v2, -0xc3c3c4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->isplay:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

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

    if-nez v1, :cond_5

    .line 183
    iget-object v2, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->publishDate:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_4
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 188
    :cond_5
    iget-object v1, p1, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DetailSerisListAdapter getCount curpg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public getCurPage()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    return v0
.end method

.method public getCurPossion()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 99
    :goto_0
    return v1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SeriesVideo;

    iget-object v1, v1, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    rem-int/lit8 v1, v0, 0x19

    goto :goto_0

    .line 93
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 99
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 73
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

    iget v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    mul-int/lit8 v2, v2, 0x19

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

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
    .line 105
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 113
    :cond_1
    if-nez p2, :cond_2

    .line 114
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030206

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    new-instance v0, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/DetailSerisListAdapter;)V

    .line 117
    .local v0, "viewholder":Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/DetailSerisListAdapter;->initViewHolder(Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;Landroid/view/View;)V

    .line 118
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/tudou/adapter/DetailSerisListAdapter;->setViewHolderData(Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;I)V

    .line 123
    return-object p2

    .line 120
    .end local v0    # "viewholder":Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;

    .restart local v0    # "viewholder":Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getdefultPage()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 205
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 235
    :cond_1
    :goto_0
    return v0

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    move v0, v3

    .line 214
    goto :goto_0

    .line 217
    :cond_3
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 219
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    .line 221
    const-string v4, "test1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " itemCode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 218
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_5
    move v0, v3

    .line 235
    goto/16 :goto_0
.end method

.method public isPlayed(Ljava/lang/String;)F
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 264
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public setCurItemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->itemCode:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCurPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 198
    if-ltz p1, :cond_0

    .line 199
    iput p1, p0, Lcom/tudou/adapter/DetailSerisListAdapter;->curpg:I

    .line 202
    :cond_0
    return-void
.end method
