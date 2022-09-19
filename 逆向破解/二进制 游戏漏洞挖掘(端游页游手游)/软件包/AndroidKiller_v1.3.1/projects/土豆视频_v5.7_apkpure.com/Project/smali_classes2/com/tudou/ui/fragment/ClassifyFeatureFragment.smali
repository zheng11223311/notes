.class public Lcom/tudou/ui/fragment/ClassifyFeatureFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ClassifyFeatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mViewPager:Landroid/support/v4/view/ViewPager;

.field public static targetCid:Ljava/lang/String;


# instance fields
.field private hintView:Lcom/youku/widget/HintView;

.field private mBack:Landroid/view/View;

.field private mChannelListInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mClassify:Lcom/tudou/service/classify/Classify;

.field private mClassifyHome:Landroid/view/View;

.field private mContext:Landroid/app/Activity;

.field private mHander:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mSearch:Landroid/view/View;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleScrollView:Lcom/youku/widget/PageHorizontalScrollView;

.field private mView:Landroid/view/View;

.field private mViewPagerAdapter:Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "-1"

    sput-object v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->targetCid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;Lcom/youku/vo/ChannelListV5;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannelListV5;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->formartListData(Lcom/youku/vo/ChannelListV5;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->initViewState()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPagerAdapter:Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/youku/widget/PageHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mTitleScrollView:Lcom/youku/widget/PageHorizontalScrollView;

    return-object v0
.end method

.method private eventView()V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    .line 131
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    .line 132
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mBack:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mSearch:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mClassifyHome:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mTitleScrollView:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/youku/util/Util;->getWitdth(Landroid/app/Activity;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 140
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getHomeChannelListV5()Lcom/youku/vo/ChannelListV5;

    move-result-object v0

    .line 141
    .local v0, "channelListV5":Lcom/youku/vo/ChannelListV5;
    if-nez v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mHander:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    .line 143
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getHomeChannelListV5()Lcom/youku/vo/ChannelListV5;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getHomeChannelListV5()Lcom/youku/vo/ChannelListV5;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->formartListData(Lcom/youku/vo/ChannelListV5;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    .line 148
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->initViewState()V

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->formartListData(Lcom/youku/vo/ChannelListV5;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    .line 152
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->initViewState()V

    goto :goto_0
.end method

.method private formartListData(Lcom/youku/vo/ChannelListV5;)Ljava/util/List;
    .locals 6
    .param p1, "channalListV5"    # Lcom/youku/vo/ChannelListV5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/vo/ChannelListV5;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v4, v4, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    if-nez v4, :cond_2

    .line 239
    :cond_0
    const/4 v3, 0x0

    .line 251
    :cond_1
    return-object v3

    .line 241
    :cond_2
    iget-object v4, p1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v1, v4, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    .line 242
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    const/4 v3, 0x0

    .line 243
    .local v3, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 244
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    .line 245
    .local v2, "temp":Lcom/youku/vo/ChannelListInfo;
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v4, :cond_4

    const-string v4, "cid"

    iget-object v5, v2, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v5, v5, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    if-nez v3, :cond_3

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .restart local v3    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getHomeChannelListV5()Lcom/youku/vo/ChannelListV5;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v0, v0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v0, v0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    goto :goto_0
.end method

.method private getTargetIndex()I
    .locals 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    .line 256
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 257
    sget-object v3, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->targetCid:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    iget-object v2, v2, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 256
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initScrollView(I)V
    .locals 8
    .param p1, "targetIndex"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 172
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03008b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 174
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0c0277

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 175
    .local v3, "mItemView":Landroid/widget/TextView;
    const v5, 0x7f0c02d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 177
    .local v2, "mBottomLine":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 178
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    const v5, 0x7f090025

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    :cond_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelListInfo;

    iget-object v5, v5, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    move v1, v0

    .line 187
    .local v1, "index":I
    new-instance v5, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$2;

    invoke-direct {v5, p0, v1}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$2;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "index":I
    .end local v2    # "mBottomLine":Landroid/view/View;
    .end local v3    # "mItemView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$3;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$3;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 201
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const v3, 0x7f0c00dd

    .line 116
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->hintView:Lcom/youku/widget/HintView;

    .line 119
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mBack:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mTitleScrollView:Lcom/youku/widget/PageHorizontalScrollView;

    .line 121
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 122
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mSearch:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mClassifyHome:Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 126
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    sput-object v1, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 127
    return-void
.end method

.method private initViewPager(I)V
    .locals 4
    .param p1, "targetIndex"    # I

    .prologue
    .line 264
    new-instance v0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPagerAdapter:Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;

    .line 265
    sget-object v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPagerAdapter:Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 267
    sget-object v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 268
    sget-object v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 298
    return-void
.end method

.method private initViewState()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getTargetIndex()I

    move-result v0

    .line 164
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->initScrollView(I)V

    .line 165
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->initViewPager(I)V

    .line 166
    return-void
.end method

.method private noResultClick()V
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 234
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mHander:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 207
    :sswitch_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->noResultClick()V

    goto :goto_0

    .line 210
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 213
    :sswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 215
    const-string v0, "t1.category_scategory.search"

    invoke-static {v0, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 218
    :sswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->goClassifyHome(Landroid/content/Context;)V

    .line 220
    const-string v0, "t1.category_scategory.categoryclick"

    invoke-static {v0, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x7f0c00dd -> :sswitch_0
        0x7f0c04b3 -> :sswitch_1
        0x7f0c04be -> :sswitch_2
        0x7f0c04bf -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    const v0, 0x7f030109

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    .line 109
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->initView()V

    .line 110
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->eventView()V

    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 303
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "cid":Ljava/lang/String;
    sget-object v1, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->targetCid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->targetCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    sput-object v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->targetCid:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mChannelListInfo:Ljava/util/List;

    if-nez v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mHander:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    .line 90
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 96
    :cond_1
    :goto_0
    sget-object v1, Lcom/tudou/service/classify/ClassifyManager;->classifyHomeActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 98
    :try_start_0
    sget-object v1, Lcom/tudou/service/classify/ClassifyManager;->classifyHomeActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 99
    const/4 v1, 0x0

    sput-object v1, Lcom/tudou/service/classify/ClassifyManager;->classifyHomeActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 104
    return-void

    .line 92
    :cond_3
    sget-object v1, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getTargetIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_1
.end method
