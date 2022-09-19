.class public Lcom/youku/widget/NormalVerticalTabView;
.super Landroid/widget/LinearLayout;
.source "NormalVerticalTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNT:I = 0x2


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
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/NormalVerticalTabView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->itemViewList:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelName:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/youku/widget/NormalVerticalTabView;->initView()V

    .line 56
    return-void
.end method

.method private initItem(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 71
    iget-object v3, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03020a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "mHorizontalView":Landroid/view/View;
    new-instance v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;

    invoke-direct {v2, p0}, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;-><init>(Lcom/youku/widget/NormalVerticalTabView;)V

    .line 74
    .local v2, "mViewHolder":Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;
    const v3, 0x7f0c02be

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    .line 75
    const v3, 0x7f0c02bf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    .line 76
    const v3, 0x7f0c0807

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    .line 77
    const v3, 0x7f0c02c1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftStripeTop:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f0c02c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftTitleLine:Landroid/widget/TextView;

    .line 79
    const v3, 0x7f0c02c3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftAlias:Landroid/widget/TextView;

    .line 81
    const v3, 0x7f0c02c4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    .line 82
    const v3, 0x7f0c02c5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    .line 83
    const v3, 0x7f0c09ab

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreTopMark:Landroid/widget/ImageView;

    .line 84
    const v3, 0x7f0c02c7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreStripeTop:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f0c02c8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreTitleLine:Landroid/widget/TextView;

    .line 86
    const v3, 0x7f0c02c9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreAlias:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0c02ca

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    .line 89
    const v3, 0x7f0c02cb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    .line 90
    const v3, 0x7f0c080b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    .line 91
    const v3, 0x7f0c02cd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightStripeTop:Landroid/widget/TextView;

    .line 92
    const v3, 0x7f0c02ce

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightTitleLine:Landroid/widget/TextView;

    .line 93
    const v3, 0x7f0c02cf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightAlias:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v3, p0, Lcom/youku/widget/NormalVerticalTabView;->itemViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 98
    .end local v1    # "mHorizontalView":Landroid/view/View;
    .end local v2    # "mViewHolder":Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/youku/widget/NormalVerticalTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    iget-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03008c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mTextTitleView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mTitleName:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mImageTitle:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/youku/widget/NormalVerticalTabView;->initItem(I)V

    .line 67
    return-void
.end method

.method private setItemData(I)V
    .locals 14
    .param p1, "indexSize"    # I

    .prologue
    const v13, 0x7f020880

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_d

    .line 168
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 169
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;

    .line 171
    .local v4, "mViewHolder":Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;
    mul-int/lit8 v2, v1, 0x3

    .line 172
    .local v2, "leftPosition":I
    add-int/lit8 v0, v2, 0x1

    .line 173
    .local v0, "centrePosition":I
    add-int/lit8 v5, v0, 0x1

    .line 177
    .local v5, "rightPosition":I
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/CardsInfo;

    .line 179
    .local v3, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->image_200_300:Ljava/lang/String;

    iget-object v9, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 182
    iget-object v7, v3, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 183
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :cond_0
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v9, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 191
    :cond_1
    :goto_1
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftTitleLine:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftStripeTop:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftAlias:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/youku/widget/NormalVerticalTabView$1;

    invoke-direct {v8, p0, v2}, Lcom/youku/widget/NormalVerticalTabView$1;-><init>(Lcom/youku/widget/NormalVerticalTabView;I)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v0, :cond_3

    .line 203
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 166
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 187
    :cond_2
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 188
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_3
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    check-cast v3, Lcom/youku/vo/CardsInfo;

    .line 209
    .restart local v3    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 210
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    :cond_4
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->image_200_300:Ljava/lang/String;

    iget-object v9, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 215
    iget-object v7, v3, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 216
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_5

    .line 217
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_5
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v9, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 224
    :cond_6
    :goto_3
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreTitleLine:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreStripeTop:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreAlias:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/youku/widget/NormalVerticalTabView$2;

    invoke-direct {v8, p0, v0}, Lcom/youku/widget/NormalVerticalTabView$2;-><init>(Lcom/youku/widget/NormalVerticalTabView;I)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_8

    .line 236
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 220
    :cond_7
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eq v7, v10, :cond_6

    .line 221
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->centreTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 239
    :cond_8
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    check-cast v3, Lcom/youku/vo/CardsInfo;

    .line 241
    .restart local v3    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_9

    .line 242
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    :cond_9
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->image_200_300:Ljava/lang/String;

    iget-object v9, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 247
    iget-object v7, v3, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 248
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_a

    .line 249
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    :cond_a
    iget-object v7, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v9, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 256
    :cond_b
    :goto_4
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightTitleLine:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightStripeTop:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightAlias:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/youku/widget/NormalVerticalTabView$3;

    invoke-direct {v8, p0, v5}, Lcom/youku/widget/NormalVerticalTabView$3;-><init>(Lcom/youku/widget/NormalVerticalTabView;I)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 252
    :cond_c
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eq v7, v10, :cond_b

    .line 253
    iget-object v7, v4, Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 268
    .end local v0    # "centrePosition":I
    .end local v2    # "leftPosition":I
    .end local v3    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .end local v4    # "mViewHolder":Lcom/youku/widget/NormalVerticalTabView$HorizontalViewHolder;
    .end local v5    # "rightPosition":I
    .end local v6    # "view":Landroid/view/View;
    :cond_d
    return-void
.end method


# virtual methods
.method public sendTackHandler(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 275
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v2, v2, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardsInfo;

    iget-object v1, v2, Lcom/youku/vo/CardsInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 276
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 282
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v3, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v2, "ct"

    iget-object v3, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "video"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 286
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

    .line 287
    :cond_2
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 288
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

    .line 291
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

    .line 103
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/youku/widget/NormalVerticalTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    .line 110
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mTextTitleView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    const-string v2, "text"

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mTextTitleView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mTitleName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/widget/NormalVerticalTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 130
    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v1, v2, 0x3

    .line 135
    .local v1, "indexSize":I
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 139
    invoke-direct {p0, v1}, Lcom/youku/widget/NormalVerticalTabView;->setItemData(I)V

    goto :goto_0

    .line 123
    .end local v1    # "indexSize":I
    :cond_4
    const-string v2, "image"

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/widget/NormalVerticalTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 143
    .restart local v1    # "indexSize":I
    :cond_5
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 144
    const/4 v2, 0x2

    if-le v1, v2, :cond_6

    .line 145
    add-int/lit8 v2, v1, -0x2

    invoke-direct {p0, v2}, Lcom/youku/widget/NormalVerticalTabView;->initItem(I)V

    .line 147
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 148
    iget-object v3, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->itemViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    .end local v0    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_8

    .line 152
    :goto_3
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eq v2, v1, :cond_9

    .line 153
    iget-object v3, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->itemViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 156
    :cond_8
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/youku/widget/NormalVerticalTabView;->initItem(I)V

    .line 157
    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v1, :cond_9

    .line 158
    iget-object v3, p0, Lcom/youku/widget/NormalVerticalTabView;->mVideoView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/widget/NormalVerticalTabView;->itemViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 161
    .end local v0    # "i":I
    :cond_9
    invoke-direct {p0, v1}, Lcom/youku/widget/NormalVerticalTabView;->setItemData(I)V

    goto/16 :goto_0
.end method
