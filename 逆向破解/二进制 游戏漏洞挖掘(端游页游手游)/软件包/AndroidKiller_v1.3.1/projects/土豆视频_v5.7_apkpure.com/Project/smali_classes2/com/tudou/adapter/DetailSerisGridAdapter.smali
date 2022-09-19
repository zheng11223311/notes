.class public Lcom/tudou/adapter/DetailSerisGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailSerisGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;
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
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

    .line 39
    iput-object p3, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 40
    iput-object p2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->handler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 43
    iput-object p5, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    .line 44
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->videoinfo:Ljava/util/ArrayList;

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 48
    :cond_0
    return-void
.end method

.method private initViewHolder(Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 109
    const v0, 0x7f0c06ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0c06ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    .line 111
    return-void
.end method

.method private setViewHolderData(Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 9
    .param p1, "viewholder"    # Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;
    .param p2, "pos"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 115
    const/4 v1, 0x0

    .local v1, "l":I
    const/4 v2, 0x1

    .local v2, "r":I
    const/4 v3, 0x0

    .local v3, "t":I
    const/4 v0, 0x1

    .line 116
    .local v0, "b":I
    const/4 v4, 0x5

    if-ge p2, v4, :cond_0

    .line 117
    const/4 v3, 0x1

    .line 119
    :cond_0
    rem-int/lit8 v4, p2, 0x5

    if-nez v4, :cond_1

    .line 120
    const/4 v1, 0x1

    .line 122
    :cond_1
    invoke-virtual {p3, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 127
    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->itemCode:Ljava/lang/String;

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le p2, v4, :cond_4

    .line 132
    iget-object v4, p1, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

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

    .line 133
    iget-object v4, p1, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, 0x7f0201df

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 135
    iget-object v4, p1, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;->isread:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :cond_3
    :goto_0
    return-void

    .line 137
    :cond_4
    iget-object v5, p1, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

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

    .line 139
    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SeriesVideo;

    iget-object v4, v4, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    iget-object v4, p1, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, -0x9a00

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    :goto_1
    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v4, v4, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SeriesVideo;

    iget-boolean v4, v4, Lcom/youku/vo/SeriesVideo;->dummy:Z

    if-eqz v4, :cond_3

    goto/16 :goto_0

    .line 147
    :cond_5
    iget-object v4, p1, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, -0x99999a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DetailSerisGridAdapter getCount curpg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 70
    goto :goto_0
.end method

.method public getCurPage()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

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
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 95
    :cond_0
    if-nez p2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030165

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v0, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/DetailSerisGridAdapter;)V

    .line 99
    .local v0, "viewholder":Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/DetailSerisGridAdapter;->initViewHolder(Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;Landroid/view/View;)V

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/tudou/adapter/DetailSerisGridAdapter;->setViewHolderData(Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;ILandroid/view/View;)V

    .line 105
    return-object p2

    .line 102
    .end local v0    # "viewholder":Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;

    .restart local v0    # "viewholder":Lcom/tudou/adapter/DetailSerisGridAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getdefultPage()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->fragment:Lcom/tudou/ui/fragment/DetailBaseFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->itemCode:Ljava/lang/String;

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->itemCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 184
    :cond_1
    :goto_0
    return v0

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 175
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    .line 177
    iget-object v2, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

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

    iget-object v4, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->itemCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 174
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_4
    move v0, v3

    .line 184
    goto :goto_0
.end method

.method public isPlayed(Ljava/lang/String;)F
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 208
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public setCurItemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->itemCode:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCurPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 158
    if-ltz p1, :cond_0

    .line 159
    iput p1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->curpg:I

    .line 162
    :cond_0
    return-void
.end method

.method public setSeriesVideo(Lcom/youku/vo/DetailSeris;)V
    .locals 0
    .param p1, "detailSeris"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tudou/adapter/DetailSerisGridAdapter;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 56
    return-void
.end method
