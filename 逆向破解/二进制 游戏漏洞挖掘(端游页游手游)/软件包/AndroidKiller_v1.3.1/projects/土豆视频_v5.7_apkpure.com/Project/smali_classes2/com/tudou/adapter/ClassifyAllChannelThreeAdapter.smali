.class public Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyAllChannelThreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final DEFAULT_COUNT:I

.field private isVip:Z

.field private mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/youku/ui/YoukuFragment;

.field private mHandler:Landroid/os/Handler;

.field private mSkipType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;ZLcom/youku/ui/YoukuFragment;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mSkipType"    # Ljava/lang/String;
    .param p4, "mChannelFilterVideos"    # Lcom/youku/vo/ChannelFilterVideos;
    .param p5, "isVip"    # Z
    .param p6, "fragment"    # Lcom/youku/ui/YoukuFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->DEFAULT_COUNT:I

    .line 39
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p4, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    .line 42
    iput-object p6, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    .line 43
    iput-object p3, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mSkipType:Ljava/lang/String;

    .line 44
    iput-boolean p5, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->isVip:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->getCountSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCountSize(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 56
    div-int/lit8 v0, p1, 0x3

    .line 57
    .local v0, "count":I
    rem-int/lit8 v1, p1, 0x3

    if-eqz v1, :cond_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    mul-int/lit8 v4, p1, 0x3

    .line 76
    .local v4, "mLeftPosition":I
    add-int/lit8 v3, v4, 0x1

    .line 77
    .local v3, "mCentrePosition":I
    add-int/lit8 v5, v3, 0x1

    .line 81
    .local v5, "mRightPosition":I
    if-nez p2, :cond_1

    .line 83
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030087

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    new-instance v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;

    invoke-direct {v7}, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;-><init>()V

    .line 87
    .local v7, "viewholder":Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;
    const v8, 0x7f0c02be

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    .line 88
    const v8, 0x7f0c02bf

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    .line 89
    const v8, 0x7f0c02c0

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftVipIcon:Landroid/view/View;

    .line 90
    const v8, 0x7f0c02c1

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftStripeTop:Landroid/widget/TextView;

    .line 91
    const v8, 0x7f0c02c2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftTitleLine:Landroid/widget/TextView;

    .line 92
    const v8, 0x7f0c02c3

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftAlias:Landroid/widget/TextView;

    .line 94
    const v8, 0x7f0c02c4

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    .line 95
    const v8, 0x7f0c02c5

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    .line 96
    const v8, 0x7f0c02c6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreVipIcon:Landroid/view/View;

    .line 97
    const v8, 0x7f0c02c7

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreStripeTop:Landroid/widget/TextView;

    .line 98
    const v8, 0x7f0c02c8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreTitleLine:Landroid/widget/TextView;

    .line 99
    const v8, 0x7f0c02c9

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreAlias:Landroid/widget/TextView;

    .line 101
    const v8, 0x7f0c02ca

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    .line 102
    const v8, 0x7f0c02cb

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    .line 103
    const v8, 0x7f0c02cc

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightVipIcon:Landroid/view/View;

    .line 104
    const v8, 0x7f0c02cd

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightStripeTop:Landroid/widget/TextView;

    .line 105
    const v8, 0x7f0c02ce

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightTitleLine:Landroid/widget/TextView;

    .line 106
    const v8, 0x7f0c02cf

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightAlias:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :goto_0
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 118
    .local v1, "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    const v9, 0x7f020880

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v8}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v10, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 121
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftTitleLine:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v9, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftVipIcon:Landroid/view/View;

    iget-boolean v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->isVip:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftStripeTop:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u64ad\u653e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->pv:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "leftSubTitle":Ljava/lang/String;
    const-string v8, "3"

    iget-object v9, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mSkipType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 129
    iget-object v2, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    .line 130
    :cond_0
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftAlias:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$1;

    invoke-direct {v9, p0, v4}, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$1;-><init>(Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v3, :cond_3

    .line 141
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    :goto_2
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    return-object p2

    .line 111
    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    .end local v2    # "leftSubTitle":Ljava/lang/String;
    .end local v7    # "viewholder":Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;

    .restart local v7    # "viewholder":Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;
    goto/16 :goto_0

    .line 122
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    :cond_2
    const/16 v8, 0x8

    goto :goto_1

    .line 145
    .restart local v2    # "leftSubTitle":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 147
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 148
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    :cond_4
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    const v9, 0x7f020880

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v8}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v10, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 152
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreTitleLine:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v9, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreVipIcon:Landroid/view/View;

    iget-boolean v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->isVip:Z

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreStripeTop:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u64ad\u653e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->pv:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "centreSubTitle":Ljava/lang/String;
    const-string v8, "3"

    iget-object v9, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mSkipType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 160
    iget-object v0, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    .line 161
    :cond_5
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreAlias:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$2;

    invoke-direct {v9, p0, v3}, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$2;-><init>(Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v5, :cond_7

    .line 172
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 153
    .end local v0    # "centreSubTitle":Ljava/lang/String;
    :cond_6
    const/16 v8, 0x8

    goto :goto_3

    .line 175
    .restart local v0    # "centreSubTitle":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 177
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 178
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    :cond_8
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    const v9, 0x7f020880

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v8}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v10, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 182
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightTitleLine:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v9, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightVipIcon:Landroid/view/View;

    iget-boolean v8, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->isVip:Z

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightStripeTop:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u64ad\u653e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->pv:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "rightSubTitle":Ljava/lang/String;
    const-string v8, "3"

    iget-object v9, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mSkipType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 190
    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    .line 191
    :cond_9
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightAlias:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v8, v7, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$3;

    invoke-direct {v9, p0, v5}, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter$3;-><init>(Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 183
    .end local v6    # "rightSubTitle":Ljava/lang/String;
    :cond_a
    const/16 v8, 0x8

    goto :goto_4
.end method

.method public sendTackHandler(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 212
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 216
    .local v1, "mChannelFilterVideo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tudou/service/classify/ClassifyManager;->startVideo(Landroid/content/Context;Lcom/youku/vo/ChannelFilterVideo;)V

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    check-cast v2, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget v2, v1, Lcom/youku/vo/ChannelFilterVideo;->aid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
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

    .line 223
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
