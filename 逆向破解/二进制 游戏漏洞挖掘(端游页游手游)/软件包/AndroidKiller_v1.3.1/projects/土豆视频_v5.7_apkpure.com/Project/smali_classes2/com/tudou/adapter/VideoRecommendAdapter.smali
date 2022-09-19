.class public Lcom/tudou/adapter/VideoRecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public editable:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private myVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RecommendVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RecommendVideoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "videoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/RecommendVideoInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->editable:Z

    .line 33
    iput-object p2, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->myVideoList:Ljava/util/ArrayList;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method private replaceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str_num"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v1, ","

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "new_str_num":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->myVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "viewHolder":Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0301c4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;

    .end local v1    # "viewHolder":Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;-><init>()V

    .line 79
    .restart local v1    # "viewHolder":Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
    invoke-virtual {p0, v1, p2}, Lcom/tudou/adapter/VideoRecommendAdapter;->initView(Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;Landroid/view/View;)V

    .line 84
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    move v0, p1

    .line 89
    .local v0, "K":I
    invoke-virtual {p0, v1, v0}, Lcom/tudou/adapter/VideoRecommendAdapter;->setViewData(Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;I)V

    .line 92
    return-object p2

    .line 86
    .end local v0    # "K":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
    check-cast v1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
    goto :goto_0
.end method

.method public initView(Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "holder"    # Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 115
    const v0, 0x7f0c085a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;->tv_video_title:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0c0859

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;->tv_video_time:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0c085b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;->tv_video_totals:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0c0858

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;->img_video_recommend:Landroid/widget/ImageView;

    .line 121
    return-void
.end method

.method public setViewData(Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
    .param p2, "pos"    # I

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "item":Lcom/youku/vo/RecommendVideoInfo;
    iget-object v2, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->myVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/youku/vo/RecommendVideoInfo;
    check-cast v1, Lcom/youku/vo/RecommendVideoInfo;

    .line 98
    .restart local v1    # "item":Lcom/youku/vo/RecommendVideoInfo;
    iget-object v2, v1, Lcom/youku/vo/RecommendVideoInfo;->picUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/tudou/adapter/VideoRecommendAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/VideoRecommendActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/VideoRecommendActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/RecommendVideoInfo;->picUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;->img_video_recommend:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 102
    :cond_0
    iget-object v2, p1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;->tv_video_title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/youku/vo/RecommendVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;->tv_video_time:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/youku/vo/RecommendVideoInfo;->totalTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :try_start_0
    iget-object v2, v1, Lcom/youku/vo/RecommendVideoInfo;->pv:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p1, Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;->tv_video_totals:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/youku/vo/RecommendVideoInfo;->pv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method
