.class public Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyAllChannelTwoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final DEFAULT_COUNT:I

.field private mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/youku/ui/YoukuFragment;

.field private mHandler:Landroid/os/Handler;

.field private mSkipType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;Lcom/youku/ui/YoukuFragment;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mSkipType"    # Ljava/lang/String;
    .param p4, "mChannelFilterVideos"    # Lcom/youku/vo/ChannelFilterVideos;
    .param p5, "fragment"    # Lcom/youku/ui/YoukuFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->DEFAULT_COUNT:I

    .line 37
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object p4, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    .line 40
    iput-object p5, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    .line 41
    iput-object p3, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mSkipType:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->getCountSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCountSize(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 53
    div-int/lit8 v0, p1, 0x2

    .line 54
    .local v0, "count":I
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f020371

    const/4 v10, 0x4

    .line 72
    mul-int/lit8 v2, p1, 0x2

    .line 73
    .local v2, "mLeftPosition":I
    add-int/lit8 v3, v2, 0x1

    .line 77
    .local v3, "mRightPosition":I
    if-nez p2, :cond_1

    .line 79
    iget-object v6, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030088

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;

    invoke-direct {v5}, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;-><init>()V

    .line 83
    .local v5, "viewholder":Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;
    const v6, 0x7f0c02be

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    .line 84
    const v6, 0x7f0c02bf

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    .line 85
    const v6, 0x7f0c02c1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftStripeTop:Landroid/widget/TextView;

    .line 86
    const v6, 0x7f0c02c2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftTitleLine:Landroid/widget/TextView;

    .line 87
    const v6, 0x7f0c02c3

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftAlias:Landroid/widget/TextView;

    .line 89
    const v6, 0x7f0c02ca

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    .line 90
    const v6, 0x7f0c02cb

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    .line 91
    const v6, 0x7f0c02cd

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightStripeTop:Landroid/widget/TextView;

    .line 92
    const v6, 0x7f0c02ce

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightTitleLine:Landroid/widget/TextView;

    .line 93
    const v6, 0x7f0c02cf

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightAlias:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    iget-object v6, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v6, v6, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChannelFilterVideo;

    .line 103
    .local v0, "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v6, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v6}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v0, Lcom/youku/vo/ChannelFilterVideo;->picUrl_448x252:Ljava/lang/String;

    iget-object v8, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 106
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftTitleLine:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftStripeTop:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u64ad\u653e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/youku/vo/ChannelFilterVideo;->pv:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "leftSubTitle":Ljava/lang/String;
    const-string v6, "3"

    iget-object v7, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mSkipType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 113
    iget-object v1, v0, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftAlias:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$1;

    invoke-direct {v7, p0, v2}, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$1;-><init>(Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v6, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v6, v6, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 124
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    :goto_1
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    return-object p2

    .line 98
    .end local v0    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    .end local v1    # "leftSubTitle":Ljava/lang/String;
    .end local v5    # "viewholder":Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;

    .restart local v5    # "viewholder":Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;
    goto :goto_0

    .line 126
    .restart local v0    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    .restart local v1    # "leftSubTitle":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v6, v6, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    check-cast v0, Lcom/youku/vo/ChannelFilterVideo;

    .line 128
    .restart local v0    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 129
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    :cond_3
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v6, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v6}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v0, Lcom/youku/vo/ChannelFilterVideo;->picUrl_448x252:Ljava/lang/String;

    iget-object v8, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 134
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightTitleLine:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightStripeTop:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u64ad\u653e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/youku/vo/ChannelFilterVideo;->pv:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "rightSubTitle":Ljava/lang/String;
    const-string v6, "3"

    iget-object v7, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mSkipType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 141
    iget-object v4, v0, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    .line 142
    :cond_4
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightAlias:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v6, v5, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$2;

    invoke-direct {v7, p0, v3}, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$2;-><init>(Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public sendTackHandler(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 157
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 161
    .local v1, "mChannelFilterVideo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tudou/service/classify/ClassifyManager;->startVideo(Landroid/content/Context;Lcom/youku/vo/ChannelFilterVideo;)V

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    check-cast v2, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget v2, v1, Lcom/youku/vo/ChannelFilterVideo;->aid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.filtratevideoclik.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/youku/vo/ChannelFilterVideo;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 168
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.filtratevideoclik.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/ChannelFilterVideo;->iid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
