.class public Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifySelectedResultsThreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final DEFAULT_COUNT:I

.field private isVip:Z

.field private mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/youku/ui/YoukuFragment;

.field private mHandler:Landroid/os/Handler;

.field private mTagType:Ljava/lang/String;

.field private mTitleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;Ljava/lang/String;ZLcom/youku/ui/YoukuFragment;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mTagType"    # Ljava/lang/String;
    .param p4, "mChannelFilterVideos"    # Lcom/youku/vo/ChannelFilterVideos;
    .param p5, "titleName"    # Ljava/lang/String;
    .param p6, "isVip"    # Z
    .param p7, "fragment"    # Lcom/youku/ui/YoukuFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->DEFAULT_COUNT:I

    .line 39
    iput-object p1, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p4, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    .line 42
    iput-object p7, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    .line 43
    iput-object p3, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mTagType:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->isVip:Z

    .line 45
    iput-object p5, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mTitleName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->getCountSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCountSize(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 57
    div-int/lit8 v0, p1, 0x3

    .line 58
    .local v0, "count":I
    rem-int/lit8 v1, p1, 0x3

    if-eqz v1, :cond_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    mul-int/lit8 v4, p1, 0x3

    .line 77
    .local v4, "mLeftPosition":I
    add-int/lit8 v3, v4, 0x1

    .line 78
    .local v3, "mCentrePosition":I
    add-int/lit8 v5, v3, 0x1

    .line 82
    .local v5, "mRightPosition":I
    if-nez p2, :cond_1

    .line 84
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03020a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    new-instance v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;

    invoke-direct {v7}, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;-><init>()V

    .line 88
    .local v7, "viewholder":Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;
    const v8, 0x7f0c09aa

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->topEmpty:Landroid/view/View;

    .line 90
    const v8, 0x7f0c02be

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    .line 91
    const v8, 0x7f0c02bf

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    .line 92
    const v8, 0x7f0c02c0

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftVipIcon:Landroid/view/View;

    .line 93
    const v8, 0x7f0c02c1

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftStripeTop:Landroid/widget/TextView;

    .line 94
    const v8, 0x7f0c02c2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftTitleLine:Landroid/widget/TextView;

    .line 95
    const v8, 0x7f0c02c3

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftAlias:Landroid/widget/TextView;

    .line 97
    const v8, 0x7f0c02c4

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    .line 98
    const v8, 0x7f0c02c5

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    .line 99
    const v8, 0x7f0c02c6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreVipIcon:Landroid/view/View;

    .line 100
    const v8, 0x7f0c02c7

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreStripeTop:Landroid/widget/TextView;

    .line 101
    const v8, 0x7f0c02c8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreTitleLine:Landroid/widget/TextView;

    .line 102
    const v8, 0x7f0c02c9

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreAlias:Landroid/widget/TextView;

    .line 104
    const v8, 0x7f0c02ca

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    .line 105
    const v8, 0x7f0c02cb

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    .line 106
    const v8, 0x7f0c02cc

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightVipIcon:Landroid/view/View;

    .line 107
    const v8, 0x7f0c02cd

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightStripeTop:Landroid/widget/TextView;

    .line 108
    const v8, 0x7f0c02ce

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightTitleLine:Landroid/widget/TextView;

    .line 109
    const v8, 0x7f0c02cf

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightAlias:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_0
    if-nez p1, :cond_2

    .line 118
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->topEmpty:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_1
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 126
    .local v1, "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    const v9, 0x7f020880

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v8}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v10, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 129
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftTitleLine:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v9, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftVipIcon:Landroid/view/View;

    iget-boolean v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->isVip:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftStripeTop:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
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

    .line 136
    .local v2, "leftSubTitle":Ljava/lang/String;
    const-string v8, "3"

    iget-object v9, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mTagType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 137
    iget-object v2, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftAlias:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$1;

    invoke-direct {v9, p0, v4}, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$1;-><init>(Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v3, :cond_4

    .line 149
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    :goto_3
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    return-object p2

    .line 114
    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    .end local v2    # "leftSubTitle":Ljava/lang/String;
    .end local v7    # "viewholder":Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;

    .restart local v7    # "viewholder":Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;
    goto/16 :goto_0

    .line 120
    :cond_2
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->topEmpty:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 130
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    :cond_3
    const/16 v8, 0x8

    goto :goto_2

    .line 153
    .restart local v2    # "leftSubTitle":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 155
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 156
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    :cond_5
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    const v9, 0x7f020880

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v8}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v10, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 160
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreTitleLine:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v9, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreVipIcon:Landroid/view/View;

    iget-boolean v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->isVip:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreStripeTop:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
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

    .line 165
    .local v0, "centreSubTitle":Ljava/lang/String;
    const-string v8, "3"

    iget-object v9, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mTagType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 166
    iget-object v0, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    .line 167
    :cond_6
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreAlias:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$2;

    invoke-direct {v9, p0, v3}, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$2;-><init>(Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v5, :cond_8

    .line 178
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 161
    .end local v0    # "centreSubTitle":Ljava/lang/String;
    :cond_7
    const/16 v8, 0x8

    goto :goto_4

    .line 181
    .restart local v0    # "centreSubTitle":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v8, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 183
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    .line 184
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    :cond_9
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    const v9, 0x7f020880

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mFragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v8}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v10, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 188
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightTitleLine:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v9, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightVipIcon:Landroid/view/View;

    iget-boolean v8, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->isVip:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightStripeTop:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
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

    .line 193
    .local v6, "rightSubTitle":Ljava/lang/String;
    const-string v8, "3"

    iget-object v9, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mTagType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 194
    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    .line 196
    :cond_a
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightAlias:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v8, v7, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$3;

    invoke-direct {v9, p0, v5}, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$3;-><init>(Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 189
    .end local v6    # "rightSubTitle":Ljava/lang/String;
    :cond_b
    const/16 v8, 0x8

    goto :goto_5
.end method

.method public sendTackHandler(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v2, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 220
    .local v1, "mChannelFilterVideo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tudou/service/classify/ClassifyManager;->startVideo(Landroid/content/Context;Lcom/youku/vo/ChannelFilterVideo;)V

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v3, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget v2, v1, Lcom/youku/vo/ChannelFilterVideo;->aid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.cms_filtrate.videoclick.1_"

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

    .line 227
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.cms_filtrate.videoclick.1_"

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
