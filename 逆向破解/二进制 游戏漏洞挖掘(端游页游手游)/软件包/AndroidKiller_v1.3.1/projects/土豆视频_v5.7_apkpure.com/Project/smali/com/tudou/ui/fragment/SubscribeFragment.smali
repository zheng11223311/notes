.class public Lcom/tudou/ui/fragment/SubscribeFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SubscribeFragment.java"


# static fields
.field public static final ACTION_SUBSCRIBE_COUNT:Ljava/lang/String; = "com.tudou.subscribe.UPDATE_COUNT"

.field private static final GET_STATUS_FAILED:I = 0x4e22

.field private static final GET_STATUS_SUCESS:I = 0x4e21

.field public static isAlbumEnable:Z

.field public static isStop:Z

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public static mIsGetStateSuccess:Z

.field public static mRefreshKey:Z


# instance fields
.field private btnLogin:Landroid/widget/TextView;

.field private isAlbum:Z

.field private mContext:Lcom/tudou/ui/activity/HomePageActivity;

.field public mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mImage1_2:Landroid/widget/ImageView;

.field private mImage1_2_rec:Landroid/widget/ImageView;

.field private mImage2_2:Landroid/widget/ImageView;

.field private mImage2_2_rec:Landroid/widget/ImageView;

.field private mImage3_2:Landroid/widget/ImageView;

.field private mImage3_2_rec:Landroid/widget/ImageView;

.field private mImageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private mRefresh:Landroid/widget/TextView;

.field public mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

.field private mSubscribeListRec:Landroid/view/View;

.field private mSubscribeStatusBean:Lcom/youku/vo/SubscribeStatusBean;

.field private mSubscribeView:Landroid/view/View;

.field private mSubscribeViewPager:Lcom/youku/widget/ViewPager;

.field private mTitleRec:Landroid/widget/RelativeLayout;

.field private my_sub:Landroid/view/View;

.field private no_sub:Landroid/view/View;

.field private showLocalData:Z

.field private subscribeAlbum:Landroid/widget/TextView;

.field private subscribeAll:Landroid/widget/TextView;

.field private subscribeList:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 95
    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mIsGetStateSuccess:Z

    .line 96
    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->isStop:Z

    .line 97
    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    .line 586
    new-instance v0, Lcom/tudou/ui/fragment/SubscribeFragment$14;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/SubscribeFragment$14;-><init>()V

    sput-object v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbum:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->showLocalData:Z

    .line 105
    new-instance v0, Lcom/tudou/ui/fragment/SubscribeFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$1;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mHandler:Landroid/os/Handler;

    .line 542
    new-instance v0, Lcom/tudou/ui/fragment/SubscribeFragment$13;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$13;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeViewPager:Lcom/youku/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/SubscribeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->showLocalData:Z

    return v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mContext:Lcom/tudou/ui/activity/HomePageActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->subscribeAll:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->subscribeAlbum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/SubscribeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbum:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/vo/SubscribeStatusBean;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeStatusBean:Lcom/youku/vo/SubscribeStatusBean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tudou/ui/fragment/SubscribeFragment;Lcom/youku/vo/SubscribeStatusBean;)Lcom/youku/vo/SubscribeStatusBean;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;
    .param p1, "x1"    # Lcom/youku/vo/SubscribeStatusBean;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeStatusBean:Lcom/youku/vo/SubscribeStatusBean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->no_sub:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mTitleRec:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->my_sub:Landroid/view/View;

    return-object v0
.end method

.method private buildView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 218
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 219
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v2, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 220
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0620

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->subscribeAll:Landroid/widget/TextView;

    .line 224
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0621

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->subscribeAlbum:Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0623

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->subscribeList:Landroid/view/View;

    .line 227
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c062f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->btnLogin:Landroid/widget/TextView;

    .line 229
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0611

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mTitleRec:Landroid/widget/RelativeLayout;

    .line 230
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0631

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefresh:Landroid/widget/TextView;

    .line 231
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefresh:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefresh:Landroid/widget/TextView;

    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$2;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0614

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeListRec:Landroid/view/View;

    .line 240
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeListRec:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeListRec:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$3;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c062d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->no_sub:Landroid/view/View;

    .line 259
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c061e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->my_sub:Landroid/view/View;

    .line 260
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0626

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage1_2:Landroid/widget/ImageView;

    .line 261
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0629

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage2_2:Landroid/widget/ImageView;

    .line 262
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c062c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage3_2:Landroid/widget/ImageView;

    .line 264
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0617

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage1_2_rec:Landroid/widget/ImageView;

    .line 265
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c061a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage2_2_rec:Landroid/widget/ImageView;

    .line 266
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c061d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage3_2_rec:Landroid/widget/ImageView;

    .line 267
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$4;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0630

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/ViewPager;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeViewPager:Lcom/youku/widget/ViewPager;

    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeViewPager:Lcom/youku/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeViewPager:Lcom/youku/widget/ViewPager;

    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$5;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 323
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->btnLogin:Landroid/widget/TextView;

    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$6;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$6;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->subscribeAll:Landroid/widget/TextView;

    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$7;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$7;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->subscribeAlbum:Landroid/widget/TextView;

    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$8;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$8;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->subscribeList:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$9;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SubscribeFragment$9;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 389
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 390
    return-void
.end method

.method public static clearSubscribeCount()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 481
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 483
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->clearSubscribeUpdateCount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 486
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$12;

    invoke-direct {v2}, Lcom/tudou/ui/fragment/SubscribeFragment$12;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 500
    return-void
.end method

.method public static getSubscribeCount()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 446
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 448
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getSubscribeUpdateCount()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 450
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/SubscribeFragment$11;

    invoke-direct {v2}, Lcom/tudou/ui/fragment/SubscribeFragment$11;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 475
    return-void
.end method


# virtual methods
.method public Refresh()V
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 582
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SubscribeFragment;->buildView()V

    .line 583
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeFragment;->initData()V

    .line 584
    return-void
.end method

.method public initData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    .line 393
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 394
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mContext:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v3}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 396
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeListRec:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefresh:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getSubscribeStatusUrl()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "sublist_check_url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 402
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 403
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/tudou/ui/fragment/SubscribeFragment$10;

    invoke-direct {v3, p0, v2}, Lcom/tudou/ui/fragment/SubscribeFragment$10;-><init>(Lcom/tudou/ui/fragment/SubscribeFragment;Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 440
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 183
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/HomePageActivity;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mContext:Lcom/tudou/ui/activity/HomePageActivity;

    .line 185
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeFragment;->registerNetReceiver()V

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    const v0, 0x7f030146

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    .line 193
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SubscribeFragment;->buildView()V

    .line 197
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 103
    return-void
.end method

.method public onPageSelected()V
    .locals 2

    .prologue
    .line 504
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPageSelected()V

    .line 505
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbum:Z

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->scrollToHome(Z)V

    .line 507
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 203
    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->isStop:Z

    .line 204
    sget-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeFragment;->initData()V

    .line 206
    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    .line 208
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->isStop:Z

    .line 214
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStop()V

    .line 215
    return-void
.end method

.method public registerNetReceiver()V
    .locals 5

    .prologue
    .line 597
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 598
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mContext:Lcom/tudou/ui/activity/HomePageActivity;

    sget-object v3, Lcom/tudou/ui/fragment/SubscribeFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/tudou/ui/activity/HomePageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "regist failed===="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_0

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public setMySubVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->my_sub:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    return-void
.end method

.method public setRefreshVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefresh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    return-void
.end method

.method public setSubListPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pic1"    # Ljava/lang/String;
    .param p2, "pic2"    # Ljava/lang/String;
    .param p3, "pic3"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f020617

    .line 511
    const-string/jumbo v3, "subListPic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string/jumbo v3, "subListPic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string/jumbo v3, "subListPic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage3_2_rec:Landroid/widget/ImageView;

    .line 516
    .local v0, "iv1":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage2_2_rec:Landroid/widget/ImageView;

    .line 517
    .local v1, "iv2":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage1_2_rec:Landroid/widget/ImageView;

    .line 519
    .local v2, "iv3":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeListRec:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 520
    const-string/jumbo v3, "subListPic"

    const-string v4, "no_sub GONE"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage3_2:Landroid/widget/ImageView;

    .line 522
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage2_2:Landroid/widget/ImageView;

    .line 523
    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImage1_2:Landroid/widget/ImageView;

    .line 526
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 527
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mContext:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/HomePageActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v3, p1, v0, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 531
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 532
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mContext:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/HomePageActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v3, p2, v1, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 536
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 537
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mContext:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/HomePageActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mImageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v3, p3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 540
    :goto_2
    return-void

    .line 529
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 539
    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public setSubscribeRecVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeListRec:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    return-void
.end method

.method public setTitleRecVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment;->mTitleRec:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 570
    return-void
.end method
