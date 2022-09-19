.class public Lcom/youku/widget/PodcaseTabView;
.super Landroid/widget/LinearLayout;
.source "PodcaseTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

.field private mChangeIcon:Landroid/view/View;

.field private mChangeView:Landroid/view/View;

.field private mChannelName:Ljava/lang/String;

.field private mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

.field private mContext:Landroid/content/Context;

.field private mImageTitle:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPodcaseTabView:Landroid/widget/LinearLayout;

.field private mTextTitleView:Landroid/view/View;

.field private mTitleName:Landroid/widget/TextView;

.field private mTtitleCornerImage:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;

.field private oldPage:I

.field private totalPage:I

.field private videoViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/PodcaseTabView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 69
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->videoViewList:Ljava/util/ArrayList;

    .line 61
    iput v1, p0, Lcom/youku/widget/PodcaseTabView;->oldPage:I

    .line 62
    iput v1, p0, Lcom/youku/widget/PodcaseTabView;->totalPage:I

    .line 70
    iput-object p1, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/youku/widget/PodcaseTabView;->mChannelName:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/youku/widget/PodcaseTabView;->initView()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/PodcaseTabView;)Lcom/youku/vo/ChannelPageModules;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/PodcaseTabView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mChangeIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/PodcaseTabView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/youku/widget/PodcaseTabView;->initRotateAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/widget/PodcaseTabView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/youku/widget/PodcaseTabView;->sendChannelByid(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/widget/PodcaseTabView;)Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/widget/PodcaseTabView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;

    .prologue
    .line 39
    iget v0, p0, Lcom/youku/widget/PodcaseTabView;->oldPage:I

    return v0
.end method

.method static synthetic access$502(Lcom/youku/widget/PodcaseTabView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/youku/widget/PodcaseTabView;->oldPage:I

    return p1
.end method

.method static synthetic access$508(Lcom/youku/widget/PodcaseTabView;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;

    .prologue
    .line 39
    iget v0, p0, Lcom/youku/widget/PodcaseTabView;->oldPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/widget/PodcaseTabView;->oldPage:I

    return v0
.end method

.method static synthetic access$600(Lcom/youku/widget/PodcaseTabView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PodcaseTabView;

    .prologue
    .line 39
    iget v0, p0, Lcom/youku/widget/PodcaseTabView;->totalPage:I

    return v0
.end method

.method private adaptationData(II)V
    .locals 11
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 220
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_b

    .line 222
    rem-int/lit8 v7, v0, 0x3

    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 224
    .local v6, "viewIndex":I
    :goto_1
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->videoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 226
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;

    .line 228
    .local v3, "mViewHolder":Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;
    mul-int/lit8 v1, v0, 0x2

    .line 229
    .local v1, "leftPosition":I
    add-int/lit8 v4, v1, 0x1

    .line 231
    .local v4, "rightPosition":I
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardsInfo;

    .line 233
    .local v2, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    const v8, 0x7f020371

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v9, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 236
    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 237
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 238
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :cond_0
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v9, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 245
    :cond_1
    :goto_2
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftTitleLine:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftStripeTop:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftAlias:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->owner_pic:Ljava/lang/String;

    iget-object v9, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftUserIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 251
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftUserName:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->owner_nickname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/youku/widget/PodcaseTabView$2;

    invoke-direct {v8, p0, v1}, Lcom/youku/widget/PodcaseTabView$2;-><init>(Lcom/youku/widget/PodcaseTabView;I)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftUserView:Landroid/view/View;

    new-instance v8, Lcom/youku/widget/PodcaseTabView$3;

    invoke-direct {v8, p0, v1}, Lcom/youku/widget/PodcaseTabView$3;-><init>(Lcom/youku/widget/PodcaseTabView;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_5

    .line 270
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    :goto_3
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mPodcaseTabView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 220
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 222
    .end local v1    # "leftPosition":I
    .end local v2    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .end local v3    # "mViewHolder":Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;
    .end local v4    # "rightPosition":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIndex":I
    :cond_3
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 241
    .restart local v1    # "leftPosition":I
    .restart local v2    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .restart local v3    # "mViewHolder":Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;
    .restart local v4    # "rightPosition":I
    .restart local v5    # "view":Landroid/view/View;
    .restart local v6    # "viewIndex":I
    :cond_4
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 242
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 272
    :cond_5
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    check-cast v2, Lcom/youku/vo/CardsInfo;

    .line 274
    .restart local v2    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 275
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    :cond_6
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    const v8, 0x7f020371

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v9, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 280
    iget-object v7, v2, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 281
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_7

    .line 282
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    :cond_7
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v9, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 289
    :cond_8
    :goto_5
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightTitleLine:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightStripeTop:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightAlias:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->owner_pic:Ljava/lang/String;

    iget-object v9, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightUserIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 295
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightUserName:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/CardsInfo;->owner_nickname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/youku/widget/PodcaseTabView$4;

    invoke-direct {v8, p0, v4}, Lcom/youku/widget/PodcaseTabView$4;-><init>(Lcom/youku/widget/PodcaseTabView;I)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightUserView:Landroid/view/View;

    new-instance v8, Lcom/youku/widget/PodcaseTabView$5;

    invoke-direct {v8, p0, v4}, Lcom/youku/widget/PodcaseTabView$5;-><init>(Lcom/youku/widget/PodcaseTabView;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 285
    :cond_9
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_8

    .line 286
    iget-object v7, v3, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 314
    :cond_a
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mPodcaseTabView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eq v7, v5, :cond_2

    .line 315
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mPodcaseTabView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 318
    .end local v1    # "leftPosition":I
    .end local v2    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .end local v3    # "mViewHolder":Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;
    .end local v4    # "rightPosition":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIndex":I
    :cond_b
    return-void
.end method

.method private initRotateAnimation(Landroid/view/View;)V
    .locals 7
    .param p1, "aAnimationView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 322
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 323
    .local v0, "mRotateAnimation":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 324
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 326
    new-instance v1, Lcom/youku/widget/PodcaseTabView$6;

    invoke-direct {v1, p0}, Lcom/youku/widget/PodcaseTabView$6;-><init>(Lcom/youku/widget/PodcaseTabView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 346
    return-void
.end method

.method private initVideoView()V
    .locals 6

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0301bb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 186
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;

    invoke-direct {v1, p0}, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;-><init>(Lcom/youku/widget/PodcaseTabView;)V

    .line 188
    .local v1, "mViewHolder":Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;
    const v3, 0x7f0c02be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    .line 189
    const v3, 0x7f0c02bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    .line 190
    const v3, 0x7f0c0807

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftTopMark:Landroid/widget/ImageView;

    .line 191
    const v3, 0x7f0c02c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftStripeTop:Landroid/widget/TextView;

    .line 192
    const v3, 0x7f0c02c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftTitleLine:Landroid/widget/TextView;

    .line 193
    const v3, 0x7f0c02c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftAlias:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f0c0808

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftUserView:Landroid/view/View;

    .line 195
    const v3, 0x7f0c0809

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftUserIcon:Landroid/widget/ImageView;

    .line 196
    const v3, 0x7f0c080a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->leftUserName:Landroid/widget/TextView;

    .line 198
    const v3, 0x7f0c02ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    .line 199
    const v3, 0x7f0c02cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    .line 200
    const v3, 0x7f0c080b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightTopMark:Landroid/widget/ImageView;

    .line 201
    const v3, 0x7f0c02cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightStripeTop:Landroid/widget/TextView;

    .line 202
    const v3, 0x7f0c02ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightTitleLine:Landroid/widget/TextView;

    .line 203
    const v3, 0x7f0c02cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightAlias:Landroid/widget/TextView;

    .line 204
    const v3, 0x7f0c080c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightUserView:Landroid/view/View;

    .line 205
    const v3, 0x7f0c080d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightUserIcon:Landroid/widget/ImageView;

    .line 206
    const v3, 0x7f0c080e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;->rightUserName:Landroid/widget/TextView;

    .line 208
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->videoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 211
    .end local v1    # "mViewHolder":Lcom/youku/widget/PodcaseTabView$VerticalViewHolder;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/youku/widget/PodcaseTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03008d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mTextTitleView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mTitleName:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mImageTitle:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c0251

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mChangeView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mPodcaseTabView:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mView:Landroid/view/View;

    const v1, 0x7f0c02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mChangeIcon:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView;->mChangeView:Landroid/view/View;

    new-instance v1, Lcom/youku/widget/PodcaseTabView$1;

    invoke-direct {v1, p0}, Lcom/youku/widget/PodcaseTabView$1;-><init>(Lcom/youku/widget/PodcaseTabView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/youku/widget/PodcaseTabView;->initVideoView()V

    .line 96
    return-void
.end method

.method private sendChannelByid(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v1, v1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 180
    .local v0, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v1, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->owner_id:Ljava/lang/String;

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/youku/vo/CardsInfo;->owner_nickname:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/tudou/android/TudouApi;->goChannelByid(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    return-void
.end method


# virtual methods
.method public sendTackHandler(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 157
    iget-object v2, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v2, v2, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardsInfo;

    iget-object v1, v2, Lcom/youku/vo/CardsInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 158
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "ct"

    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v2, "video"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 168
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

    .line 169
    :cond_2
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 170
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

    .line 173
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

.method public setData(Lcom/youku/vo/ChannelPageModules;Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;)V
    .locals 9
    .param p1, "mChannelModules"    # Lcom/youku/vo/ChannelPageModules;
    .param p2, "mAdapter"    # Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 99
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    .line 103
    iput-object p2, p0, Lcom/youku/widget/PodcaseTabView;->mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    .line 106
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChangeView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mTextTitleView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    const-string v3, "text"

    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mTextTitleView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mTitleName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    iget-object v8, p0, Lcom/youku/widget/PodcaseTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 128
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 135
    .local v1, "infoIndex":I
    const/4 v3, 0x4

    if-gt v1, v3, :cond_5

    .line 136
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mChangeView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "startIndex":I
    if-le v1, v0, :cond_4

    .line 149
    .local v0, "endIndex":I
    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/youku/widget/PodcaseTabView;->adaptationData(II)V

    goto :goto_0

    .line 122
    .end local v0    # "endIndex":I
    .end local v1    # "infoIndex":I
    .end local v2    # "startIndex":I
    :cond_3
    const-string v3, "image"

    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/youku/widget/PodcaseTabView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v7, v7, Lcom/youku/vo/ChannelPageModules;->title_icon:Ljava/lang/String;

    iget-object v8, p0, Lcom/youku/widget/PodcaseTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v3, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .restart local v1    # "infoIndex":I
    .restart local v2    # "startIndex":I
    :cond_4
    move v0, v4

    .line 138
    goto :goto_2

    .line 140
    .end local v2    # "startIndex":I
    :cond_5
    div-int/lit8 v3, v1, 0x4

    iput v3, p0, Lcom/youku/widget/PodcaseTabView;->totalPage:I

    .line 141
    iget-object v7, p0, Lcom/youku/widget/PodcaseTabView;->mChangeView:Landroid/view/View;

    iget v3, p0, Lcom/youku/widget/PodcaseTabView;->totalPage:I

    if-le v3, v4, :cond_7

    move v3, v5

    :goto_3
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget v3, p0, Lcom/youku/widget/PodcaseTabView;->oldPage:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 143
    iput v5, p0, Lcom/youku/widget/PodcaseTabView;->oldPage:I

    .line 145
    :cond_6
    iget v3, p0, Lcom/youku/widget/PodcaseTabView;->oldPage:I

    mul-int/lit8 v2, v3, 0x2

    .line 146
    .restart local v2    # "startIndex":I
    add-int/lit8 v0, v2, 0x2

    .restart local v0    # "endIndex":I
    goto :goto_2

    .end local v0    # "endIndex":I
    .end local v2    # "startIndex":I
    :cond_7
    move v3, v6

    .line 141
    goto :goto_3
.end method
