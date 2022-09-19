.class public Lcom/youku/widget/NormalHorizontalTabView;
.super Landroid/widget/LinearLayout;
.source "NormalHorizontalTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNT:I = 0x3


# instance fields
.field private itemViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelName:Ljava/lang/String;

.field private mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

.field private mContext:Landroid/content/Context;

.field private mImageTitle:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTextTitleView:Landroid/view/View;

.field private mTitleName:Landroid/widget/TextView;

.field private mTtitleCornerImage:Landroid/widget/ImageView;

.field private mVideoView:Landroid/widget/LinearLayout;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/NormalHorizontalTabView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->itemViewList:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mChannelName:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/youku/widget/NormalHorizontalTabView;->initView()V

    .line 57
    return-void
.end method

.method private initItem(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 73
    iget-object v3, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03020b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;

    invoke-direct {v1, p0}, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;-><init>(Lcom/youku/widget/NormalHorizontalTabView;)V

    .line 76
    .local v1, "mViewHolder":Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;
    const v3, 0x7f0c02be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    .line 77
    const v3, 0x7f0c02bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    .line 78
    const v3, 0x7f0c0807

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    .line 79
    const v3, 0x7f0c02c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftStripeTop:Landroid/widget/TextView;

    .line 80
    const v3, 0x7f0c02c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftTitleLine:Landroid/widget/TextView;

    .line 81
    const v3, 0x7f0c02c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftAlias:Landroid/widget/TextView;

    .line 83
    const v3, 0x7f0c02ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    .line 84
    const v3, 0x7f0c02cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    .line 85
    const v3, 0x7f0c080b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    .line 86
    const v3, 0x7f0c02cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightStripeTop:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f0c02ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightTitleLine:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0c02cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightAlias:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v3, p0, Lcom/youku/widget/NormalHorizontalTabView;->itemViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 93
    .end local v1    # "mViewHolder":Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/youku/widget/NormalHorizontalTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iget-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03008c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mTextTitleView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mTitleName:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mImageTitle:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    .line 67
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/youku/widget/NormalHorizontalTabView;->initItem(I)V

    .line 68
    return-void
.end method

.method private setItemData(I)V
    .locals 14
    .param p1, "indexSize"    # I

    .prologue
    const v13, 0x7f020371

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_8

    .line 159
    iget-object v6, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 160
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;

    .line 163
    .local v3, "mViewHolder":Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;
    mul-int/lit8 v1, v0, 0x2

    .line 164
    .local v1, "leftPosition":I
    iget-object v6, p0, Lcom/youku/widget/NormalHorizontalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v6, v6, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardsInfo;

    .line 166
    .local v2, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v6, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v8, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 168
    iget-object v6, v2, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 169
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :cond_0
    iget-object v6, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v8, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 176
    :cond_1
    :goto_1
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftTitleLine:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftStripeTop:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftAlias:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/youku/widget/NormalHorizontalTabView$1;

    invoke-direct {v7, p0, v1}, Lcom/youku/widget/NormalHorizontalTabView$1;-><init>(Lcom/youku/widget/NormalHorizontalTabView;I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    add-int/lit8 v4, v1, 0x1

    .line 189
    .local v4, "rightPosition":I
    iget-object v6, p0, Lcom/youku/widget/NormalHorizontalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v6, v6, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 190
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 173
    .end local v4    # "rightPosition":I
    :cond_2
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_1

    .line 174
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 192
    .restart local v4    # "rightPosition":I
    :cond_3
    iget-object v6, p0, Lcom/youku/widget/NormalHorizontalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v6, v6, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    check-cast v2, Lcom/youku/vo/CardsInfo;

    .line 193
    .restart local v2    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-ne v6, v12, :cond_4

    .line 194
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    :cond_4
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v6, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v8, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 197
    iget-object v6, v2, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 198
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5

    .line 199
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :cond_5
    iget-object v6, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v8, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 205
    :cond_6
    :goto_3
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightTitleLine:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightStripeTop:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightAlias:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/youku/widget/NormalHorizontalTabView$2;

    invoke-direct {v7, p0, v4}, Lcom/youku/widget/NormalHorizontalTabView$2;-><init>(Lcom/youku/widget/NormalHorizontalTabView;I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 202
    :cond_7
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_6

    .line 203
    iget-object v6, v3, Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 216
    .end local v1    # "leftPosition":I
    .end local v2    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .end local v3    # "mViewHolder":Lcom/youku/widget/NormalHorizontalTabView$VerticalViewHolder;
    .end local v4    # "rightPosition":I
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    return-void
.end method


# virtual methods
.method public sendTackHandler(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 223
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v2, v2, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardsInfo;

    iget-object v1, v2, Lcom/youku/vo/CardsInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 224
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v3, p0, Lcom/youku/widget/NormalHorizontalTabView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v2, "ct"

    iget-object v3, p0, Lcom/youku/widget/NormalHorizontalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v2, "video"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.channelVideoclick.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

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

    .line 235
    :cond_2
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.channelVideoclick.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

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

    .line 239
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.channelVideoclick_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public setData(Lcom/youku/vo/ChannelPageModules;)V
    .locals 5
    .param p1, "mChannelPageModules"    # Lcom/youku/vo/ChannelPageModules;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 97
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iput-object p1, p0, Lcom/youku/widget/NormalHorizontalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    .line 103
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mTextTitleView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    const-string v2, "text"

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mTextTitleView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mTitleName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/widget/NormalHorizontalTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 123
    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 127
    .local v1, "indexSize":I
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 131
    invoke-direct {p0, v1}, Lcom/youku/widget/NormalHorizontalTabView;->setItemData(I)V

    goto :goto_0

    .line 116
    .end local v1    # "indexSize":I
    :cond_4
    const-string v2, "image"

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/widget/NormalHorizontalTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 135
    .restart local v1    # "indexSize":I
    :cond_5
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 136
    const/4 v2, 0x3

    if-le v1, v2, :cond_6

    .line 137
    add-int/lit8 v2, v1, -0x3

    invoke-direct {p0, v2}, Lcom/youku/widget/NormalHorizontalTabView;->initItem(I)V

    .line 139
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 140
    iget-object v3, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->itemViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    .end local v0    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_8

    .line 144
    :goto_3
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eq v2, v1, :cond_9

    .line 145
    iget-object v3, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->itemViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 148
    :cond_8
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/youku/widget/NormalHorizontalTabView;->initItem(I)V

    .line 149
    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v1, :cond_9

    .line 150
    iget-object v3, p0, Lcom/youku/widget/NormalHorizontalTabView;->mVideoView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/widget/NormalHorizontalTabView;->itemViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 153
    .end local v0    # "i":I
    :cond_9
    invoke-direct {p0, v1}, Lcom/youku/widget/NormalHorizontalTabView;->setItemData(I)V

    goto/16 :goto_0
.end method
