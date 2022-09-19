.class public Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ClassifyFeatureInfoFragment.java"


# instance fields
.field private mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

.field private mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

.field private mChannelName:Ljava/lang/String;

.field private mCid:Ljava/lang/String;

.field private mClassify:Lcom/tudou/service/classify/Classify;

.field private mContext:Landroid/app/Activity;

.field private mGallery:Lcom/youku/widget/YoukuGallery;

.field private mGalleryAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;

.field private mGallerySubTitle:Landroid/widget/TextView;

.field private mGalleryTitle:Landroid/widget/TextView;

.field private mGalleryView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderLine:Landroid/view/View;

.field private mHeaderView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHintView:Lcom/youku/widget/HintView;

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field mListViewRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mPointContainer:Landroid/widget/LinearLayout;

.field private mPointImageView:[Landroid/widget/ImageView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderView:Ljava/util/List;

    .line 73
    const-string v0, "0"

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mCid:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$3;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListViewRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;Lcom/youku/vo/ChannelFeatureBean;)Lcom/youku/vo/ChannelFeatureBean;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannelFeatureBean;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->setData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/tudou/service/classify/Classify;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initPointContainer(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private eventView()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    .line 163
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListViewRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 164
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 165
    return-void
.end method

.method private formatData()V
    .locals 2

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v1, v1, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v1, v1, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelPageModules;

    invoke-virtual {v1}, Lcom/youku/vo/ChannelPageModules;->formatType()V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method private initClassifyPageLabels(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelPageLabels;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "channel_page_labels":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelPageLabels;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :cond_0
    const/4 v1, 0x0

    .line 337
    :goto_0
    return v1

    .line 332
    :cond_1
    new-instance v0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    .local v0, "classifyPageLabelsLinearLayout":Lcom/youku/widget/ClassifyPageLabelsLinearLayout;
    invoke-virtual {v0, p1}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->setData(Ljava/util/List;)V

    .line 334
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderView:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 337
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initGallery(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 139
    const v0, 0x7f030079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryView:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryView:Landroid/view/View;

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryTitle:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryView:Landroid/view/View;

    const v1, 0x7f0c028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallerySubTitle:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryView:Landroid/view/View;

    const v1, 0x7f0c028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointContainer:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryView:Landroid/view/View;

    const v1, 0x7f0c0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/YoukuGallery;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$2;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method private initHeaderViewGallery(Lcom/youku/vo/TopSlideArea;)Z
    .locals 5
    .param p1, "topSlideArea"    # Lcom/youku/vo/TopSlideArea;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 234
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/youku/vo/TopSlideArea;->cards_inf:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/youku/vo/TopSlideArea;->cards_inf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    iget-object v3, p1, Lcom/youku/vo/TopSlideArea;->cards_inf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 239
    .local v0, "dataSize":I
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 241
    invoke-direct {p0, v0, v2}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initPointContainer(II)V

    .line 243
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    aget-object v2, v3, v2

    const v3, 0x7f0206ed

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 245
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    new-instance v3, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$4;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;I)V

    invoke-virtual {v2, v3}, Lcom/youku/widget/YoukuGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 256
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v2}, Lcom/youku/widget/YoukuGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    .line 257
    new-instance v2, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;-><init>(Landroid/app/Activity;Lcom/youku/vo/TopSlideArea;)V

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;

    .line 261
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;

    invoke-virtual {v2, v3}, Lcom/youku/widget/YoukuGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 263
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    mul-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Lcom/youku/widget/YoukuGallery;->setSelection(I)V

    .line 264
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    new-instance v3, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;-><init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;Lcom/youku/vo/TopSlideArea;I)V

    invoke-virtual {v2, v3}, Lcom/youku/widget/YoukuGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 289
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 290
    .local v1, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderView:Ljava/util/List;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 294
    const/4 v2, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v2}, Lcom/youku/widget/YoukuGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;

    goto :goto_1
.end method

.method private initLine()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderLine:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderLine:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderLine:Landroid/view/View;

    const v1, 0x7f020aca

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderLine:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 172
    return-void
.end method

.method private initPointContainer(II)V
    .locals 8
    .param p1, "dataSize"    # I
    .param p2, "position"    # I

    .prologue
    const v7, 0x7f0206ed

    const v6, 0x7f0206eb

    const/4 v5, 0x0

    .line 299
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 300
    :cond_0
    new-array v2, p1, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 302
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 303
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 304
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 322
    :goto_1
    return-void

    .line 310
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 311
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 312
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mPointImageView:[Landroid/widget/ImageView;

    rem-int v3, p2, p1

    aget-object v2, v2, v3

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 314
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFeatureBean;->top_slide_area:Lcom/youku/vo/TopSlideArea;

    iget-object v2, v2, Lcom/youku/vo/TopSlideArea;->cards_inf:Ljava/util/List;

    rem-int v3, p2, p1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 315
    .local v0, "cardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGalleryTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 317
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallerySubTitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 319
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallerySubTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallerySubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 134
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c04bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 135
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initLine()V

    .line 136
    return-void
.end method

.method private initWeekSchedule(ZLjava/util/List;Lcom/youku/vo/SkipInfo;)Z
    .locals 2
    .param p1, "showPaddingTop"    # Z
    .param p3, "skipInfo"    # Lcom/youku/vo/SkipInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelScheduleItem;",
            ">;",
            "Lcom/youku/vo/SkipInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, "channelScheduleItem":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelScheduleItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 346
    :cond_0
    const/4 v1, 0x0

    .line 353
    :goto_0
    return v1

    .line 348
    :cond_1
    new-instance v0, Lcom/youku/widget/ClassifyWeekSchedule;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/youku/widget/ClassifyWeekSchedule;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, "classifyWeekSchedule":Lcom/youku/widget/ClassifyWeekSchedule;
    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/widget/ClassifyWeekSchedule;->setData(ZLjava/util/List;Lcom/youku/vo/SkipInfo;)V

    .line 350
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderView:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 353
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setData()V
    .locals 7

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderView:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 189
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderView:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    new-instance v4, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mContext:Landroid/app/Activity;

    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    .line 193
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    if-eqz v4, :cond_8

    .line 195
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->top_slide_area:Lcom/youku/vo/TopSlideArea;

    invoke-direct {p0, v4}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initHeaderViewGallery(Lcom/youku/vo/TopSlideArea;)Z

    move-result v1

    .line 197
    .local v1, "isGallery":Z
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_page_labels:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initClassifyPageLabels(Ljava/util/List;)Z

    move-result v2

    .line 199
    .local v2, "isPageLabels":Z
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_base_inf:Lcom/youku/vo/ChannelBaseInfo;

    iget-object v4, v4, Lcom/youku/vo/ChannelBaseInfo;->schedule_item:Ljava/util/List;

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFeatureBean;->channel_base_inf:Lcom/youku/vo/ChannelBaseInfo;

    iget-object v5, v5, Lcom/youku/vo/ChannelBaseInfo;->schedule_inf:Lcom/youku/vo/SkipInfo;

    invoke-direct {p0, v2, v4, v5}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initWeekSchedule(ZLjava/util/List;Lcom/youku/vo/SkipInfo;)Z

    move-result v3

    .line 201
    .local v3, "isRow":Z
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderView:Ljava/util/List;

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderLine:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHeaderLine:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 207
    :cond_2
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 208
    :cond_3
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v5, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v4, v5}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 226
    .end local v1    # "isGallery":Z
    .end local v2    # "isPageLabels":Z
    .end local v3    # "isRow":Z
    :goto_1
    return-void

    .line 214
    .restart local v1    # "isGallery":Z
    .restart local v2    # "isPageLabels":Z
    .restart local v3    # "isRow":Z
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 215
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelPageModules;

    iget-object v4, v4, Lcom/youku/vo/ChannelPageModules;->sub_type:Ljava/lang/String;

    const-string v5, "selectness_tab"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelPageModules;

    iget-object v4, v4, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelPageModules;

    iget-object v4, v4, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 216
    :cond_5
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 214
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 220
    :cond_7
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->formatData()V

    .line 222
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelFeatureBean:Lcom/youku/vo/ChannelFeatureBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFeatureBean;->channel_page_modules:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->setData(Ljava/util/List;)V

    .line 224
    .end local v1    # "isGallery":Z
    .end local v2    # "isPageLabels":Z
    .end local v3    # "isRow":Z
    :cond_8
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    invoke-virtual {v4, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mAdapter:Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    invoke-virtual {v4}, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mContext:Landroid/app/Activity;

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mCid:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "channelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mChannelName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
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
    .line 125
    const v0, 0x7f030108

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mView:Landroid/view/View;

    .line 126
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initView()V

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initGallery(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 128
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->eventView()V

    .line 129
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuGallery;->cancelAutoSlide()V

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->mGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuGallery;->startAutoSlide()V

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 113
    return-void
.end method
