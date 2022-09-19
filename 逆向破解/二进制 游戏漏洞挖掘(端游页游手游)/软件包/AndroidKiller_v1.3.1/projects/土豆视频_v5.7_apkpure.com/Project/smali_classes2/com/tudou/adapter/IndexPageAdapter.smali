.class public Lcom/tudou/adapter/IndexPageAdapter;
.super Lcom/tudou/adapter/AbsAdapter;
.source "IndexPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tudou/adapter/AbsAdapter",
        "<",
        "Lcom/youku/vo/IndexPageItem;",
        ">;"
    }
.end annotation


# static fields
.field public static mLastPaperSize:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBokeIndexCode:I

.field private mFragment:Lcom/tudou/ui/fragment/HomeFragment;

.field private mGuessIndexCode:I

.field private mHotIndexCode:I

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMaxBoke:I

.field private mMaxGuess:I

.field private mMaxHot:I

.field private mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/tudou/adapter/IndexPageAdapter;->mLastPaperSize:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 4
    .param p2, "fragment"    # Lcom/tudou/ui/fragment/HomeFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/IndexPageItem;",
            ">;",
            "Lcom/tudou/ui/fragment/HomeFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/IndexPageItem;>;"
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/tudou/adapter/AbsAdapter;-><init>(Ljava/util/List;)V

    .line 56
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 58
    iput v3, p0, Lcom/tudou/adapter/IndexPageAdapter;->mHotIndexCode:I

    .line 59
    iput v3, p0, Lcom/tudou/adapter/IndexPageAdapter;->mGuessIndexCode:I

    .line 60
    iput v3, p0, Lcom/tudou/adapter/IndexPageAdapter;->mBokeIndexCode:I

    .line 62
    iput v3, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxHot:I

    .line 63
    iput v3, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxGuess:I

    .line 64
    iput v3, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxBoke:I

    .line 78
    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mFragment:Lcom/tudou/ui/fragment/HomeFragment;

    .line 79
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mFragment:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    .line 80
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "t1":J
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexPageAdapter;->unionOnEventChannel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/adapter/IndexPageAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexPageAdapter;->initRotateAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexPageAdapter;->unionOnEventChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/SkipInfo;Lcom/youku/vo/SkipInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # Lcom/youku/vo/SkipInfo;
    .param p2, "x2"    # Lcom/youku/vo/SkipInfo;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexPageAdapter;->onLableClick(Lcom/youku/vo/SkipInfo;Lcom/youku/vo/SkipInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexPageAdapter;->unionOnEventLable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/adapter/IndexPageAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexPageAdapter;->setNoneImageBackground(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexPageAdapter;->unionOnEventNotify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mHotIndexCode:I

    return v0
.end method

.method static synthetic access$402(Lcom/tudou/adapter/IndexPageAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mHotIndexCode:I

    return p1
.end method

.method static synthetic access$408(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mHotIndexCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mHotIndexCode:I

    return v0
.end method

.method static synthetic access$500(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxHot:I

    return v0
.end method

.method static synthetic access$600(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mGuessIndexCode:I

    return v0
.end method

.method static synthetic access$602(Lcom/tudou/adapter/IndexPageAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mGuessIndexCode:I

    return p1
.end method

.method static synthetic access$608(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mGuessIndexCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mGuessIndexCode:I

    return v0
.end method

.method static synthetic access$700(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxGuess:I

    return v0
.end method

.method static synthetic access$800(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mBokeIndexCode:I

    return v0
.end method

.method static synthetic access$802(Lcom/tudou/adapter/IndexPageAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mBokeIndexCode:I

    return p1
.end method

.method static synthetic access$808(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mBokeIndexCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mBokeIndexCode:I

    return v0
.end method

.method static synthetic access$900(Lcom/tudou/adapter/IndexPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxBoke:I

    return v0
.end method

.method private applyRotation(Landroid/view/View;FF)V
    .locals 8
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "start"    # F
    .param p3, "end"    # F

    .prologue
    const/4 v3, 0x0

    .line 1371
    const/4 v7, 0x0

    .line 1372
    .local v7, "centerX":F
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0514

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    .line 1376
    .local v4, "centerY":F
    new-instance v0, Lcom/youku/util/Rotate3DAnimationItem;

    const/4 v6, 0x0

    move v1, p2

    move v2, p3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/youku/util/Rotate3DAnimationItem;-><init>(FFFFFZ)V

    .line 1378
    .local v0, "rotation":Lcom/youku/util/Rotate3DAnimationItem;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/youku/util/Rotate3DAnimationItem;->setDuration(J)V

    .line 1379
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/util/Rotate3DAnimationItem;->setFillAfter(Z)V

    .line 1380
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/youku/util/Rotate3DAnimationItem;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1383
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1384
    return-void
.end method

.method private applyRotationDelete(Landroid/view/View;FFLcom/youku/vo/IndexPageItem;)V
    .locals 8
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "start"    # F
    .param p3, "end"    # F
    .param p4, "aItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    const/4 v3, 0x0

    .line 1396
    const/4 v7, 0x0

    .line 1397
    .local v7, "centerX":F
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0514

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    .line 1401
    .local v4, "centerY":F
    new-instance v0, Lcom/youku/util/Rotate3DAnimationItem;

    const/4 v6, 0x0

    move v1, p2

    move v2, p3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/youku/util/Rotate3DAnimationItem;-><init>(FFFFFZ)V

    .line 1403
    .local v0, "rotation":Lcom/youku/util/Rotate3DAnimationItem;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/youku/util/Rotate3DAnimationItem;->setDuration(J)V

    .line 1404
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/util/Rotate3DAnimationItem;->setFillAfter(Z)V

    .line 1405
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/youku/util/Rotate3DAnimationItem;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1408
    new-instance v1, Lcom/tudou/adapter/IndexPageAdapter$29;

    invoke-direct {v1, p0, p1, v0}, Lcom/tudou/adapter/IndexPageAdapter$29;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Landroid/view/View;Lcom/youku/util/Rotate3DAnimationItem;)V

    invoke-virtual {v0, v1}, Lcom/youku/util/Rotate3DAnimationItem;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1431
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1432
    return-void
.end method

.method public static excuteLoopInex(ILjava/lang/String;)V
    .locals 6
    .param p0, "location"    # I
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1442
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/URLContainer;->getIndexLoopUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v4

    invoke-static {p0, p1}, Lcom/youku/http/URLContainer;->getIndexLoopMapStr(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1444
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1446
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/adapter/IndexPageAdapter$30;

    invoke-direct {v2}, Lcom/tudou/adapter/IndexPageAdapter$30;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1460
    return-void
.end method

.method private getSourceCode(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "aCardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 927
    .local v0, "size":I
    div-int/lit8 v1, v0, 0x4

    return v1
.end method

.method private indexUnionOnEvent(Lcom/youku/vo/SkipInfo;Ljava/util/HashMap;I)V
    .locals 5
    .param p1, "skipInfo"    # Lcom/youku/vo/SkipInfo;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/vo/SkipInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1491
    .local p2, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1493
    .local v2, "videoId":Ljava/lang/String;
    const-string v3, "cid"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1570
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.home_shome.posterVideo__.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1574
    .local v1, "refercode":Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1575
    .end local v1    # "refercode":Ljava/lang/String;
    :cond_1
    return-void

    .line 1495
    :cond_2
    const-string v3, "the_search"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1497
    const-string v3, "video"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1498
    iget-object v3, p1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1499
    iget-object v2, p1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    goto :goto_0

    .line 1501
    :cond_3
    iget-object v2, p1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_0

    .line 1503
    :cond_4
    const-string v3, "filter_tag"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1505
    const-string v3, "-2"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1509
    const-string v3, "5"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->first_tag_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1686"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1517
    :cond_5
    const-string v3, "url"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "special_topic"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1519
    :cond_6
    const-string v3, "10490"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, "isInner":Z
    iget-object v3, p1, Lcom/youku/vo/SkipInfo;->browser_type:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 1528
    .end local v0    # "isInner":Z
    :cond_7
    const-string v3, "week_schedule"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1530
    const-string v3, "module_label"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1531
    const-string v3, "1"

    iput-object v3, p1, Lcom/youku/vo/SkipInfo;->tag_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 1533
    :cond_8
    const-string v3, "mid"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1541
    const-string v3, "vip"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1543
    const-string v3, "recommend_user_list"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1547
    const-string v3, "text"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1558
    const-string v3, "podcaster"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1564
    const-string v3, "selectness_tab_list"

    iget-object v4, p1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0
.end method

.method private initBokeItem(Lcom/tudou/adapter/IndexItemHorBoke;Lcom/youku/vo/IndexPageItem;)V
    .locals 3
    .param p1, "aHorBoke"    # Lcom/tudou/adapter/IndexItemHorBoke;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    .line 1356
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemHorBoke;->viewCache1:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mBokeIndexCode:I

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v1, v0}, Lcom/tudou/adapter/IndexItemHorBoke;->setIndexCellValueBoke(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;)V

    .line 1357
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemHorBoke;->viewCache2:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mBokeIndexCode:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v1, v0}, Lcom/tudou/adapter/IndexItemHorBoke;->setIndexCellValueBoke(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;)V

    .line 1358
    return-void
.end method

.method private initBottomLable(Lcom/tudou/adapter/IndexBottomLable;Lcom/youku/vo/IndexPageItem;)V
    .locals 8
    .param p1, "aBottomLable"    # Lcom/tudou/adapter/IndexBottomLable;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1252
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v4, v4, Lcom/youku/vo/IndexPageModuleInfo;->module_bottom_labels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1253
    .local v3, "lenBottom":I
    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 1254
    iget-object v4, p1, Lcom/tudou/adapter/IndexBottomLable;->mRow2:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x6

    if-ge v0, v4, :cond_3

    .line 1259
    iget-object v4, p1, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;

    .line 1260
    .local v2, "lableHolder":Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;
    if-ge v0, v3, :cond_2

    .line 1261
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v4, v4, Lcom/youku/vo/IndexPageModuleInfo;->module_bottom_labels:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ModuleLabel;

    .line 1264
    .local v1, "label":Lcom/youku/vo/ModuleLabel;
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mTxt:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    const-string v4, "normal"

    iget-object v5, v1, Lcom/youku/vo/ModuleLabel;->label_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1266
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1270
    :goto_2
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mView:Landroid/view/View;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$27;

    invoke-direct {v5, p0, v1, p2}, Lcom/tudou/adapter/IndexPageAdapter$27;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1258
    .end local v1    # "label":Lcom/youku/vo/ModuleLabel;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1256
    .end local v0    # "i":I
    .end local v2    # "lableHolder":Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;
    :cond_0
    iget-object v4, p1, Lcom/tudou/adapter/IndexBottomLable;->mRow2:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1268
    .restart local v0    # "i":I
    .restart local v1    # "label":Lcom/youku/vo/ModuleLabel;
    .restart local v2    # "lableHolder":Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;
    :cond_1
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1281
    .end local v1    # "label":Lcom/youku/vo/ModuleLabel;
    :cond_2
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1313
    .end local v2    # "lableHolder":Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;
    :cond_3
    return-void
.end method

.method private initBottomLable5(Lcom/tudou/adapter/IndexBottomLable;Lcom/youku/vo/IndexPageItem;)V
    .locals 6
    .param p1, "aBottomLable"    # Lcom/tudou/adapter/IndexBottomLable;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    .line 1317
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v4, v4, Lcom/youku/vo/IndexPageModuleInfo;->module_bottom_labels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1318
    .local v3, "lenBottom":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1319
    iget-object v4, p1, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;

    .line 1321
    .local v2, "lableHolder":Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v4, v4, Lcom/youku/vo/IndexPageModuleInfo;->module_bottom_labels:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ModuleLabel;

    .line 1323
    .local v1, "label":Lcom/youku/vo/ModuleLabel;
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mTxt:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    const-string v4, "normal"

    iget-object v5, v1, Lcom/youku/vo/ModuleLabel;->label_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1325
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    :goto_1
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mView:Landroid/view/View;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$28;

    invoke-direct {v5, p0, v1, p2}, Lcom/tudou/adapter/IndexPageAdapter$28;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1327
    :cond_0
    iget-object v4, v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1341
    .end local v1    # "label":Lcom/youku/vo/ModuleLabel;
    .end local v2    # "lableHolder":Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;
    :cond_1
    return-void
.end method

.method private initBottomSkip(Lcom/tudou/adapter/IndexBottomSkip;Lcom/youku/vo/IndexPageItem;)V
    .locals 3
    .param p1, "aBottomSkip"    # Lcom/tudou/adapter/IndexBottomSkip;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    .line 1229
    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->module_more_pos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ModuleLabel;

    .line 1230
    .local v0, "aModuleLabel":Lcom/youku/vo/ModuleLabel;
    iget-object v1, p1, Lcom/tudou/adapter/IndexBottomSkip;->mTxtContent:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    iget-object v1, p1, Lcom/tudou/adapter/IndexBottomSkip;->bgLayout:Landroid/view/View;

    new-instance v2, Lcom/tudou/adapter/IndexPageAdapter$26;

    invoke-direct {v2, p0, v0, p2}, Lcom/tudou/adapter/IndexPageAdapter$26;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1248
    return-void
.end method

.method private initChannel(Lcom/tudou/adapter/IndexChannelItem;Lcom/youku/vo/IndexPageItem;)V
    .locals 11
    .param p1, "aIndexChannelItem"    # Lcom/tudou/adapter/IndexChannelItem;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    const v10, 0x7f020455

    const/16 v9, 0x8

    .line 413
    iget-object v7, p2, Lcom/youku/vo/IndexPageItem;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    iget-object v4, v7, Lcom/youku/vo/ChannelListArea;->channel_list_icon:Ljava/lang/String;

    .line 414
    .local v4, "iconClassify":Ljava/lang/String;
    const-string v7, "1"

    iget-object v8, p2, Lcom/youku/vo/IndexPageItem;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    iget-object v8, v8, Lcom/youku/vo/ChannelListArea;->show_line:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 415
    iget-object v7, p1, Lcom/tudou/adapter/IndexChannelItem;->mRow2:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v7, p1, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    .line 418
    .local v2, "cellLast":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    iget-object v7, v2, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelTitle:Landroid/widget/TextView;

    const-string v8, "\u5206\u7c7b"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 420
    iget-object v7, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v8, v2, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v4, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 425
    :goto_0
    iget-object v7, v2, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/tudou/adapter/IndexPageAdapter;->setNoneImageBackground(Landroid/widget/ImageView;)V

    .line 426
    iget-object v7, v2, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mView:Landroid/view/View;

    new-instance v8, Lcom/tudou/adapter/IndexPageAdapter$1;

    invoke-direct {v8, p0}, Lcom/tudou/adapter/IndexPageAdapter$1;-><init>(Lcom/tudou/adapter/IndexPageAdapter;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v7, p2, Lcom/youku/vo/IndexPageItem;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    iget-object v7, v7, Lcom/youku/vo/ChannelListArea;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 437
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 438
    const/4 v7, 0x3

    if-le v3, v7, :cond_2

    .line 510
    .end local v2    # "cellLast":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    .end local v3    # "i":I
    .end local v6    # "size":I
    :cond_0
    return-void

    .line 422
    .restart local v2    # "cellLast":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    :cond_1
    iget-object v7, v2, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 440
    .restart local v3    # "i":I
    .restart local v6    # "size":I
    :cond_2
    iget-object v7, p2, Lcom/youku/vo/IndexPageItem;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    iget-object v7, v7, Lcom/youku/vo/ChannelListArea;->items:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelListItem;

    .line 441
    .local v5, "item":Lcom/youku/vo/ChannelListItem;
    iget-object v7, p1, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    .line 442
    .local v0, "cell":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    invoke-direct {p0, v0, v5}, Lcom/tudou/adapter/IndexPageAdapter;->setChannelIcon(Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;Lcom/youku/vo/ChannelListItem;)V

    .line 451
    iget-object v7, v0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelTitle:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/youku/vo/ChannelListItem;->channel_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v7, v0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mView:Landroid/view/View;

    new-instance v8, Lcom/tudou/adapter/IndexPageAdapter$2;

    invoke-direct {v8, p0, v5}, Lcom/tudou/adapter/IndexPageAdapter$2;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ChannelListItem;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 464
    .end local v0    # "cell":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    .end local v2    # "cellLast":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    .end local v3    # "i":I
    .end local v5    # "item":Lcom/youku/vo/ChannelListItem;
    .end local v6    # "size":I
    :cond_3
    const-string v7, "2"

    iget-object v8, p2, Lcom/youku/vo/IndexPageItem;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    iget-object v8, v8, Lcom/youku/vo/ChannelListArea;->show_line:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 465
    iget-object v7, p1, Lcom/tudou/adapter/IndexChannelItem;->mRow2:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v7, p1, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    const/16 v8, 0x9

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    .line 468
    .local v1, "cell2":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    iget-object v7, v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelTitle:Landroid/widget/TextView;

    const-string v8, "\u5206\u7c7b"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 470
    iget-object v7, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v8, v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v4, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 474
    :goto_2
    iget-object v7, v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/tudou/adapter/IndexPageAdapter;->setNoneImageBackground(Landroid/widget/ImageView;)V

    .line 475
    iget-object v7, v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mView:Landroid/view/View;

    new-instance v8, Lcom/tudou/adapter/IndexPageAdapter$3;

    invoke-direct {v8, p0}, Lcom/tudou/adapter/IndexPageAdapter$3;-><init>(Lcom/tudou/adapter/IndexPageAdapter;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v7, p2, Lcom/youku/vo/IndexPageItem;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    iget-object v7, v7, Lcom/youku/vo/ChannelListArea;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 485
    .restart local v6    # "size":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v6, :cond_0

    .line 486
    if-gt v3, v9, :cond_0

    .line 488
    iget-object v7, p2, Lcom/youku/vo/IndexPageItem;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    iget-object v7, v7, Lcom/youku/vo/ChannelListArea;->items:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelListItem;

    .line 489
    .restart local v5    # "item":Lcom/youku/vo/ChannelListItem;
    iget-object v7, p1, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    .line 497
    .restart local v0    # "cell":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    invoke-direct {p0, v0, v5}, Lcom/tudou/adapter/IndexPageAdapter;->setChannelIcon(Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;Lcom/youku/vo/ChannelListItem;)V

    .line 498
    iget-object v7, v0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelTitle:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/youku/vo/ChannelListItem;->channel_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v7, v0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mView:Landroid/view/View;

    new-instance v8, Lcom/tudou/adapter/IndexPageAdapter$4;

    invoke-direct {v8, p0, v5}, Lcom/tudou/adapter/IndexPageAdapter$4;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ChannelListItem;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 472
    .end local v0    # "cell":Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    .end local v3    # "i":I
    .end local v5    # "item":Lcom/youku/vo/ChannelListItem;
    .end local v6    # "size":I
    :cond_4
    iget-object v7, v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private initHorItem(Lcom/tudou/adapter/IndexItemHor;Lcom/youku/vo/IndexPageItem;)V
    .locals 4
    .param p1, "aHorItem"    # Lcom/tudou/adapter/IndexItemHor;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    const/4 v3, 0x1

    .line 932
    iget v0, p2, Lcom/youku/vo/IndexPageItem;->changeType:I

    packed-switch v0, :pswitch_data_0

    .line 942
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemHor;->viewCache1:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v1, v0, v3}, Lcom/tudou/adapter/IndexItemHor;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    .line 943
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemHor;->viewCache2:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v1, v0, v3}, Lcom/tudou/adapter/IndexItemHor;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    .line 948
    :goto_0
    return-void

    .line 934
    :pswitch_0
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemHor;->viewCache1:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mHotIndexCode:I

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v1, v0, v3}, Lcom/tudou/adapter/IndexItemHor;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    .line 935
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemHor;->viewCache2:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mHotIndexCode:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v1, v0, v3}, Lcom/tudou/adapter/IndexItemHor;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    goto :goto_0

    .line 938
    :pswitch_1
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemHor;->viewCache1:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mGuessIndexCode:I

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v1, v0, v3}, Lcom/tudou/adapter/IndexItemHor;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    .line 939
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemHor;->viewCache2:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mGuessIndexCode:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v1, v0, v3}, Lcom/tudou/adapter/IndexItemHor;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initHotTitle(Lcom/tudou/adapter/IndexItemHotTitle;Lcom/youku/vo/IndexPageItem;)V
    .locals 2
    .param p1, "aHotTitle"    # Lcom/tudou/adapter/IndexItemHotTitle;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    .line 864
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemHotTitle;->mTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemHotTitle;->mImgTitleTag:Landroid/widget/ImageView;

    invoke-direct {p0, p2, v0}, Lcom/tudou/adapter/IndexPageAdapter;->setTitleTag(Lcom/youku/vo/IndexPageItem;Landroid/widget/ImageView;)V

    .line 866
    const-string v0, "today_hot"

    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tudou/adapter/IndexPageAdapter;->getSourceCode(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxHot:I

    .line 868
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemHotTitle;->mTxtRight:Landroid/widget/TextView;

    const-string v1, "\u6362\u4e00\u6362"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemHotTitle;->mLayoutView:Landroid/view/View;

    new-instance v1, Lcom/tudou/adapter/IndexPageAdapter$15;

    invoke-direct {v1, p0, p2}, Lcom/tudou/adapter/IndexPageAdapter$15;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemHotTitle;->mRightLaout:Landroid/view/View;

    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 889
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemHotTitle;->mRightLaout:Landroid/view/View;

    new-instance v1, Lcom/tudou/adapter/IndexPageAdapter$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/tudou/adapter/IndexPageAdapter$16;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/tudou/adapter/IndexItemHotTitle;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    return-void

    .line 869
    :cond_1
    const-string v0, "guess_tab"

    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tudou/adapter/IndexPageAdapter;->getSourceCode(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxGuess:I

    .line 871
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemHotTitle;->mTxtRight:Landroid/widget/TextView;

    const-string v1, "\u518d\u731c\u4e00\u6b21"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 872
    :cond_2
    const-string v0, "podcast_tab"

    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tudou/adapter/IndexPageAdapter;->getSourceCode(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mMaxBoke:I

    .line 874
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemHotTitle;->mTxtRight:Landroid/widget/TextView;

    const-string v1, "\u6362\u4e00\u6362"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initNormalTitle(Lcom/tudou/adapter/IndexItemNormalTitle;Lcom/youku/vo/IndexPageItem;)V
    .locals 11
    .param p1, "aNormalTitle"    # Lcom/tudou/adapter/IndexItemNormalTitle;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    .line 1016
    const-string v8, "image"

    iget-object v9, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v9, v9, Lcom/youku/vo/IndexPageModuleInfo;->title_display_style:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v8, v8, Lcom/youku/vo/IndexPageModuleInfo;->title_icon:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1018
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mLeftLayout:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mImgTitle:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1021
    iget-object v8, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v9, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v9, v9, Lcom/youku/vo/IndexPageModuleInfo;->title_icon:Ljava/lang/String;

    iget-object v10, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mImgTitle:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1029
    :goto_0
    iget-object v8, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v6, v8, Lcom/youku/vo/IndexPageModuleInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 1030
    .local v6, "mainSkipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mRootView:Landroid/view/View;

    new-instance v9, Lcom/tudou/adapter/IndexPageAdapter$19;

    invoke-direct {v9, p0, v6}, Lcom/tudou/adapter/IndexPageAdapter$19;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/SkipInfo;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    iget-object v8, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v7, v8, Lcom/youku/vo/IndexPageModuleInfo;->sub_title_labels:Ljava/util/List;

    .line 1044
    .local v7, "titleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ModuleLabel;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1045
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mRightLaout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1109
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/ModuleLabel;

    .line 1110
    .local v3, "label_1":Lcom/youku/vo/ModuleLabel;
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ModuleLabel;

    .line 1111
    .local v4, "label_2":Lcom/youku/vo/ModuleLabel;
    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ModuleLabel;

    .line 1113
    .local v5, "label_3":Lcom/youku/vo/ModuleLabel;
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable1:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1115
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable1:Landroid/widget/TextView;

    iget-object v9, v3, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable1:Landroid/widget/TextView;

    new-instance v9, Lcom/tudou/adapter/IndexPageAdapter$23;

    invoke-direct {v9, p0, v3, v6}, Lcom/tudou/adapter/IndexPageAdapter$23;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/SkipInfo;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable2:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable2:Landroid/widget/TextView;

    iget-object v9, v4, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable2:Landroid/widget/TextView;

    new-instance v9, Lcom/tudou/adapter/IndexPageAdapter$24;

    invoke-direct {v9, p0, v4, v6}, Lcom/tudou/adapter/IndexPageAdapter$24;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/SkipInfo;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    new-instance v9, Lcom/tudou/adapter/IndexPageAdapter$25;

    invoke-direct {v9, p0, v5, v6}, Lcom/tudou/adapter/IndexPageAdapter$25;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/SkipInfo;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    .end local v3    # "label_1":Lcom/youku/vo/ModuleLabel;
    .end local v4    # "label_2":Lcom/youku/vo/ModuleLabel;
    .end local v5    # "label_3":Lcom/youku/vo/ModuleLabel;
    :goto_1
    return-void

    .line 1023
    .end local v6    # "mainSkipInfo":Lcom/youku/vo/SkipInfo;
    .end local v7    # "titleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ModuleLabel;>;"
    :cond_0
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mLeftLayout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mImgTitle:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTitle:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v9, v9, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mImgTitleTag:Landroid/widget/ImageView;

    invoke-direct {p0, p2, v8}, Lcom/tudou/adapter/IndexPageAdapter;->setTitleTag(Lcom/youku/vo/IndexPageItem;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1049
    .restart local v6    # "mainSkipInfo":Lcom/youku/vo/SkipInfo;
    .restart local v7    # "titleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ModuleLabel;>;"
    :pswitch_0
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ModuleLabel;

    .line 1050
    .local v0, "label":Lcom/youku/vo/ModuleLabel;
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v9, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/vo/ModuleLabel;

    iget-object v8, v8, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    new-instance v9, Lcom/tudou/adapter/IndexPageAdapter$20;

    invoke-direct {v9, p0, v0, v6}, Lcom/tudou/adapter/IndexPageAdapter$20;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/SkipInfo;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable1:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable2:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1072
    .end local v0    # "label":Lcom/youku/vo/ModuleLabel;
    :pswitch_1
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ModuleLabel;

    .line 1073
    .local v1, "label1":Lcom/youku/vo/ModuleLabel;
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ModuleLabel;

    .line 1075
    .local v2, "label2":Lcom/youku/vo/ModuleLabel;
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable2:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable2:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable2:Landroid/widget/TextView;

    new-instance v9, Lcom/tudou/adapter/IndexPageAdapter$21;

    invoke-direct {v9, p0, v1, v6}, Lcom/tudou/adapter/IndexPageAdapter$21;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/SkipInfo;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1092
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    new-instance v9, Lcom/tudou/adapter/IndexPageAdapter$22;

    invoke-direct {v9, p0, v2, v6}, Lcom/tudou/adapter/IndexPageAdapter$22;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/SkipInfo;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable1:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1158
    .end local v1    # "label1":Lcom/youku/vo/ModuleLabel;
    .end local v2    # "label2":Lcom/youku/vo/ModuleLabel;
    :cond_1
    iget-object v8, p1, Lcom/tudou/adapter/IndexItemNormalTitle;->mRightLaout:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initNotify(Lcom/tudou/adapter/IndexNotifyItem;Lcom/youku/vo/IndexPageItem;)V
    .locals 8
    .param p1, "aNotifyItem"    # Lcom/tudou/adapter/IndexNotifyItem;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    const v7, 0x7f020379

    const/4 v6, 0x1

    .line 668
    const-string v4, "test1"

    const-string v5, "showHistory"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mClose:Landroid/view/View;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$9;

    invoke-direct {v5, p0, p1}, Lcom/tudou/adapter/IndexPageAdapter$9;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/tudou/adapter/IndexNotifyItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    iget v4, p2, Lcom/youku/vo/IndexPageItem;->notifyType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 682
    iget-object v3, p2, Lcom/youku/vo/IndexPageItem;->historyVideo:Lcom/youku/vo/HistoryVideo;

    .line 683
    .local v3, "vi":Lcom/youku/vo/HistoryVideo;
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 684
    iget-object v4, v3, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 685
    iget-object v4, v3, Lcom/youku/vo/HistoryVideo;->title_new:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    .line 687
    :cond_0
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mContent:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7ee7\u7eed\u89c2\u770b:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mRootView:Landroid/view/View;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$10;

    invoke-direct {v5, p0, v3, p1}, Lcom/tudou/adapter/IndexPageAdapter$10;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/HistoryVideo;Lcom/tudou/adapter/IndexNotifyItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    .end local v3    # "vi":Lcom/youku/vo/HistoryVideo;
    :cond_1
    :goto_0
    return-void

    .line 705
    :cond_2
    iget v4, p2, Lcom/youku/vo/IndexPageItem;->notifyType:I

    if-ne v4, v6, :cond_1

    .line 706
    const-string v4, "notifyId"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v1

    .line 707
    .local v1, "notifyId":I
    const-string v4, "subnotifyId"

    invoke-static {v4}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, "subNofity":Ljava/lang/String;
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    iget-object v4, v4, Lcom/youku/vo/Notifications$Sys_notify;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    iget v4, v4, Lcom/youku/vo/Notifications$Sys_notify;->id:I

    if-eq v1, v4, :cond_4

    .line 710
    const-string v4, "test1"

    const-string v5, "show history sysnotify"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    iget-object v4, v4, Lcom/youku/vo/Notifications$Sys_notify;->icon:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 712
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mIcon:Landroid/widget/ImageView;

    const v5, 0x7f020624

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 717
    :goto_1
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mContent:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v5, v5, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    iget-object v5, v5, Lcom/youku/vo/Notifications$Sys_notify;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    iget-object v0, v4, Lcom/youku/vo/Notifications$Sys_notify;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 719
    .local v0, "info":Lcom/youku/vo/SkipInfo;
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mRootView:Landroid/view/View;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$11;

    invoke-direct {v5, p0, p2, v0, p1}, Lcom/tudou/adapter/IndexPageAdapter$11;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;Lcom/youku/vo/SkipInfo;Lcom/tudou/adapter/IndexNotifyItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 714
    .end local v0    # "info":Lcom/youku/vo/SkipInfo;
    :cond_3
    iget-object v4, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v5, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v5, v5, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    iget-object v5, v5, Lcom/youku/vo/Notifications$Sys_notify;->icon:Ljava/lang/String;

    iget-object v6, p1, Lcom/tudou/adapter/IndexNotifyItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 760
    :cond_4
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    if-eqz v4, :cond_6

    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    iget v4, v4, Lcom/youku/vo/Notifications$Sub_updates;->count:I

    if-lez v4, :cond_6

    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    iget-object v4, v4, Lcom/youku/vo/Notifications$Sub_updates;->sysid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 761
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mIcon:Landroid/widget/ImageView;

    const v5, 0x7f0208b4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 762
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    iget v4, v4, Lcom/youku/vo/Notifications$Sub_updates;->count:I

    if-ne v4, v6, :cond_5

    .line 763
    const-string v4, "test1"

    const-string v5, "show history subupdates .count == 1"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mContent:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u66f4\u65b0\u89c6\u9891:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v6, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    iget-object v6, v6, Lcom/youku/vo/Notifications$Sub_updates;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mRootView:Landroid/view/View;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$12;

    invoke-direct {v5, p0, p2, p1}, Lcom/tudou/adapter/IndexPageAdapter$12;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;Lcom/tudou/adapter/IndexNotifyItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 783
    :cond_5
    const-string v4, "test1"

    const-string v5, "show history subupdates .count != 1"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mContent:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u60a8\u6709"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v6, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    iget v6, v6, Lcom/youku/vo/Notifications$Sub_updates;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u6761\u8ba2\u9605\u66f4\u65b0\uff0c\u7acb\u5373\u89c2\u770b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mRootView:Landroid/view/View;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$13;

    invoke-direct {v5, p0, p2, p1}, Lcom/tudou/adapter/IndexPageAdapter$13;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;Lcom/tudou/adapter/IndexNotifyItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 803
    :cond_6
    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v4, v4, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    if-eqz v4, :cond_1

    .line 804
    const-string v4, "test1"

    const-string v5, "show history playhistory"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 806
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mContent:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7ee7\u7eed\u89c2\u770b:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v6, v6, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    iget-object v6, v6, Lcom/youku/vo/Notifications$View_record;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v4, p1, Lcom/tudou/adapter/IndexNotifyItem;->mRootView:Landroid/view/View;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$14;

    invoke-direct {v5, p0, p2, p1}, Lcom/tudou/adapter/IndexPageAdapter$14;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;Lcom/tudou/adapter/IndexNotifyItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private initPaper(Lcom/tudou/adapter/IndexItemPaper;Lcom/youku/vo/IndexPageItem;)V
    .locals 5
    .param p1, "aPaper"    # Lcom/tudou/adapter/IndexItemPaper;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    const/4 v4, 0x0

    .line 973
    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    .line 974
    .local v0, "info":Lcom/youku/vo/CardInfo;
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, v0, Lcom/youku/vo/CardInfo;->image_720_366:Ljava/lang/String;

    iget-object v3, p1, Lcom/tudou/adapter/IndexItemPaper;->mImgMain:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 975
    iget v1, p2, Lcom/youku/vo/IndexPageItem;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 976
    iget-object v1, v0, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 977
    :cond_0
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemPaper;->mPaperContent:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemPaper;->mTxtTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemPaper;->mSubTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemPaper;->mImgMain:Landroid/widget/ImageView;

    new-instance v2, Lcom/tudou/adapter/IndexPageAdapter$18;

    invoke-direct {v2, p0, v0, p2}, Lcom/tudou/adapter/IndexPageAdapter$18;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/CardInfo;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1012
    return-void

    .line 981
    :cond_2
    iget-object v1, p1, Lcom/tudou/adapter/IndexItemPaper;->mPaperContent:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initRotateAnimation(Landroid/view/View;)V
    .locals 7
    .param p1, "aAnimationView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1465
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 1468
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1469
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1470
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1471
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/tudou/adapter/IndexPageAdapter$31;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/IndexPageAdapter$31;-><init>(Lcom/tudou/adapter/IndexPageAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1488
    return-void
.end method

.method private initSelectness(Lcom/tudou/adapter/IndexSelectNess;Lcom/youku/vo/IndexPageItem;)V
    .locals 6
    .param p1, "aIndexSelectNess"    # Lcom/tudou/adapter/IndexSelectNess;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    .line 553
    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectNess;->mTxtTitle:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v4, v4, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v3, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v2, v3, Lcom/youku/vo/IndexPageModuleInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 556
    .local v2, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectNess;->mRootViewTitle:Landroid/view/View;

    new-instance v4, Lcom/tudou/adapter/IndexPageAdapter$6;

    invoke-direct {v4, p0, v2}, Lcom/tudou/adapter/IndexPageAdapter$6;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/SkipInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectNess;->mTxtSubTitle:Landroid/widget/TextView;

    new-instance v4, Lcom/tudou/adapter/IndexPageAdapter$7;

    invoke-direct {v4, p0, p2}, Lcom/tudou/adapter/IndexPageAdapter$7;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v3, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v4, v4, Lcom/youku/vo/IndexPageModuleInfo;->cover_image:Ljava/lang/String;

    new-instance v5, Lcom/tudou/adapter/IndexPageAdapter$8;

    invoke-direct {v5, p0, p1}, Lcom/tudou/adapter/IndexPageAdapter$8;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/tudou/adapter/IndexSelectNess;)V

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 621
    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectNess;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/IndexSelectnessAdapter;

    .line 622
    .local v0, "adapter":Lcom/tudou/adapter/IndexSelectnessAdapter;
    if-nez v0, :cond_1

    .line 623
    new-instance v0, Lcom/tudou/adapter/IndexSelectnessAdapter;

    .end local v0    # "adapter":Lcom/tudou/adapter/IndexSelectnessAdapter;
    iget-object v3, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v3, v3, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    iget-object v4, p0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3, v4, v2}, Lcom/tudou/adapter/IndexSelectnessAdapter;-><init>(Ljava/util/List;Landroid/app/Activity;Lcom/youku/vo/SkipInfo;)V

    .line 624
    .restart local v0    # "adapter":Lcom/tudou/adapter/IndexSelectnessAdapter;
    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectNess;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 633
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectNess;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v4, v4, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 635
    return-void

    .line 626
    :cond_1
    iget-object v3, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v3, v3, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Lcom/tudou/adapter/IndexSelectnessAdapter;->setData(Ljava/util/List;Lcom/youku/vo/SkipInfo;)V

    .line 627
    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectNess;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 628
    .local v1, "lastTitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v3, v3, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 630
    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectNess;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method private initTopicTitle(Lcom/tudou/adapter/IndexItemTopicTitle;Lcom/youku/vo/IndexPageItem;)V
    .locals 3
    .param p1, "aTopicTitle"    # Lcom/tudou/adapter/IndexItemTopicTitle;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    .line 952
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemTopicTitle;->mTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->title_icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemTopicTitle;->mImgNet:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->title_icon:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/IndexItemTopicTitle;->mImgNet:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 959
    :goto_0
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemTopicTitle;->mSubTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemTopicTitle;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/tudou/adapter/IndexPageAdapter$17;

    invoke-direct {v1, p0, p2}, Lcom/tudou/adapter/IndexPageAdapter$17;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    return-void

    .line 957
    :cond_0
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemTopicTitle;->mImgNet:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initVerItem(Lcom/tudou/adapter/IndexItemVer;Lcom/youku/vo/IndexPageItem;)V
    .locals 6
    .param p1, "aVerItem"    # Lcom/tudou/adapter/IndexItemVer;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    const/4 v5, 0x0

    .line 1188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1189
    .local v0, "t1":J
    iget-object v3, p1, Lcom/tudou/adapter/IndexItemVer;->viewCache1:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v2, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v2, v2, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v3, v2, v5}, Lcom/tudou/adapter/IndexItemVer;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    .line 1190
    iget-object v3, p1, Lcom/tudou/adapter/IndexItemVer;->viewCache2:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v2, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v2, v2, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v3, v2, v5}, Lcom/tudou/adapter/IndexItemVer;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    .line 1191
    iget-object v3, p1, Lcom/tudou/adapter/IndexItemVer;->viewCache3:Lcom/tudou/adapter/IndexItemViewCache;

    iget-object v2, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v2, v2, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardInfo;

    invoke-virtual {p1, v3, v2, v5}, Lcom/tudou/adapter/IndexItemVer;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V

    .line 1192
    return-void
.end method

.method private initWeek(Lcom/tudou/adapter/IndexWeek;Lcom/youku/vo/IndexPageItem;)V
    .locals 7
    .param p1, "aWeek"    # Lcom/tudou/adapter/IndexWeek;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;

    .prologue
    .line 1196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1197
    .local v2, "t1":J
    iget-object v5, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v4, v5, Lcom/youku/vo/IndexPageModuleInfo;->week_schedule_labels:Lcom/youku/vo/WeekScheduleLabels;

    .line 1199
    .local v4, "week_schedule_labels":Lcom/youku/vo/WeekScheduleLabels;
    iget-object v5, p1, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1201
    new-instance v0, Lcom/tudou/adapter/IndexHorAdapter;

    iget-object v5, p0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    iget-object v6, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v6, v6, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Lcom/tudou/adapter/IndexHorAdapter;-><init>(Lcom/youku/vo/WeekScheduleLabels;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1202
    .local v0, "adapter":Lcom/tudou/adapter/IndexHorAdapter;
    iget-object v5, p1, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1223
    :cond_0
    :goto_0
    iget-object v5, p1, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v6, v6, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 1224
    return-void

    .line 1215
    .end local v0    # "adapter":Lcom/tudou/adapter/IndexHorAdapter;
    :cond_1
    iget-object v5, p1, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/IndexHorAdapter;

    .line 1216
    .restart local v0    # "adapter":Lcom/tudou/adapter/IndexHorAdapter;
    invoke-virtual {v0, v4}, Lcom/tudou/adapter/IndexHorAdapter;->setData(Lcom/youku/vo/WeekScheduleLabels;)V

    .line 1217
    iget-object v5, p1, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1218
    .local v1, "lastTitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v5, v5, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1220
    iget-object v5, p1, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method private onLableClick(Lcom/youku/vo/SkipInfo;Lcom/youku/vo/SkipInfo;)V
    .locals 4
    .param p1, "skipInfo"    # Lcom/youku/vo/SkipInfo;
    .param p2, "mainSkipInfo"    # Lcom/youku/vo/SkipInfo;

    .prologue
    .line 1164
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 1166
    const-string v1, "t1.home_shome.subchannel__"

    .line 1167
    .local v1, "lable":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1168
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ct"

    iget-object v3, p2, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string v2, "cmsname"

    iget-object v3, p1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1173
    return-void
.end method

.method private setChannelIcon(Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;Lcom/youku/vo/ChannelListItem;)V
    .locals 5
    .param p1, "cell"    # Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    .param p2, "item"    # Lcom/youku/vo/ChannelListItem;

    .prologue
    .line 520
    iget-object v1, p2, Lcom/youku/vo/ChannelListItem;->normal_icon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    .local v0, "itemUrl":Ljava/lang/String;
    iget-object v1, p2, Lcom/youku/vo/ChannelListItem;->normal_icon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 523
    :cond_0
    iget-object v1, p1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/youku/vo/ChannelListItem;->normal_icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 524
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p2, Lcom/youku/vo/ChannelListItem;->normal_icon:Ljava/lang/String;

    iget-object v3, p1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    new-instance v4, Lcom/tudou/adapter/IndexPageAdapter$5;

    invoke-direct {v4, p0, p1}, Lcom/tudou/adapter/IndexPageAdapter$5;-><init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 548
    .end local v0    # "itemUrl":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setNoneImageBackground(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "aImageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 404
    .local v0, "sdk":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 405
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setTitleTag(Lcom/youku/vo/IndexPageItem;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;
    .param p2, "aImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 852
    iget-object v1, p1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->title_corner_image:Ljava/lang/String;

    .line 853
    .local v0, "tagUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 854
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 855
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1, v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 859
    :goto_0
    return-void

    .line 857
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private unionOnEventChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "changeName"    # Ljava/lang/String;

    .prologue
    .line 919
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 920
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ct"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v1, "t1.home_shome.more"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 923
    return-void
.end method

.method private unionOnEventChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelName"    # Ljava/lang/String;

    .prologue
    .line 513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ct"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v1, "t1.home_shome.categoryclick"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 516
    return-void
.end method

.method private unionOnEventLable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "channelTitle"    # Ljava/lang/String;
    .param p2, "cmsName"    # Ljava/lang/String;

    .prologue
    .line 1344
    const-string v1, "t1.home_shome.bottomedit__"

    .line 1346
    .local v1, "refercode":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1347
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ct"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const-string v2, "cmstype"

    const-string v3, "\u6807\u7b7e"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const-string v2, "cmsname"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1352
    return-void
.end method

.method private unionOnEventNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;

    .prologue
    .line 840
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 841
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const-string v1, "t1.home_shome.promp"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 848
    :goto_0
    return-void

    .line 845
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1.home_shome.promp.1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static unionOnEventSlide(Lcom/youku/vo/SkipInfo;ILjava/lang/String;)V
    .locals 5
    .param p0, "skipInfo"    # Lcom/youku/vo/SkipInfo;
    .param p1, "pos"    # I
    .param p2, "videoTitle"    # Ljava/lang/String;

    .prologue
    .line 1585
    const/4 v1, 0x0

    .line 1586
    .local v1, "refercode":Ljava/lang/String;
    const-string v3, "video"

    iget-object v4, p0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1587
    const/4 v2, 0x0

    .line 1588
    .local v2, "videoId":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1589
    iget-object v2, p0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    .line 1593
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.home_shome.posterVideo__.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1598
    .end local v2    # "videoId":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1599
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "title"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1602
    return-void

    .line 1591
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "videoId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_0

    .line 1595
    .end local v2    # "videoId":Ljava/lang/String;
    :cond_1
    const-string v1, "t1.home_shome.posterVideo"

    goto :goto_1
.end method


# virtual methods
.method public deleteNotify(Lcom/tudou/adapter/IndexNotifyItem;)V
    .locals 7
    .param p1, "aNotifyItem"    # Lcom/tudou/adapter/IndexNotifyItem;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xf

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 639
    sget-boolean v2, Lcom/tudou/ui/fragment/HomeFragment;->mHasSlide:Z

    if-eqz v2, :cond_2

    .line 640
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/IndexPageItem;

    .line 641
    .local v0, "item":Lcom/youku/vo/IndexPageItem;
    iget v2, v0, Lcom/youku/vo/IndexPageItem;->itemType:I

    if-ne v2, v3, :cond_1

    .line 642
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 643
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/IndexPageItem;

    .line 644
    .local v1, "itemSepatater":Lcom/youku/vo/IndexPageItem;
    iget v2, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    if-ne v2, v5, :cond_0

    .line 645
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 647
    :cond_0
    sput-object v6, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    .line 648
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexPageAdapter;->notifyDataSetChanged()V

    .line 662
    .end local v1    # "itemSepatater":Lcom/youku/vo/IndexPageItem;
    :cond_1
    :goto_0
    return-void

    .line 651
    .end local v0    # "item":Lcom/youku/vo/IndexPageItem;
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/IndexPageItem;

    .line 652
    .restart local v0    # "item":Lcom/youku/vo/IndexPageItem;
    iget v2, v0, Lcom/youku/vo/IndexPageItem;->itemType:I

    if-ne v2, v3, :cond_1

    .line 653
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 654
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/IndexPageItem;

    .line 655
    .restart local v1    # "itemSepatater":Lcom/youku/vo/IndexPageItem;
    iget v2, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    if-ne v2, v5, :cond_3

    .line 656
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 658
    :cond_3
    sput-object v6, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    .line 659
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexPageAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/IndexPageItem;

    iget v0, v0, Lcom/youku/vo/IndexPageItem;->itemType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    .line 113
    const/4 v12, 0x0

    .line 114
    .local v12, "indexItemType":Lcom/tudou/adapter/IndexItemType;
    if-nez p2, :cond_1

    .line 115
    invoke-virtual/range {p0 .. p1}, Lcom/tudou/adapter/IndexPageAdapter;->getItemViewType(I)I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 176
    :goto_0
    move-object/from16 p2, v12

    .line 181
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youku/vo/IndexPageItem;

    .line 182
    .local v14, "indexPageItem":Lcom/youku/vo/IndexPageItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 183
    .local v18, "t1":J
    iget v0, v14, Lcom/youku/vo/IndexPageItem;->itemType:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    .line 260
    :cond_0
    :goto_2
    :pswitch_0
    return-object p2

    .line 120
    .end local v14    # "indexPageItem":Lcom/youku/vo/IndexPageItem;
    .end local v18    # "t1":J
    :pswitch_1
    new-instance v12, Lcom/tudou/adapter/IndexChannelItem;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexChannelItem;-><init>(Landroid/content/Context;)V

    .line 121
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto :goto_0

    .line 123
    :pswitch_2
    new-instance v12, Lcom/tudou/adapter/IndexNotifyItem;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexNotifyItem;-><init>(Landroid/content/Context;)V

    .line 124
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto :goto_0

    .line 126
    :pswitch_3
    new-instance v12, Lcom/tudou/adapter/IndexItemHotTitle;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexItemHotTitle;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto :goto_0

    .line 129
    :pswitch_4
    new-instance v12, Lcom/tudou/adapter/IndexItemHor;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexItemHor;-><init>(Landroid/content/Context;)V

    .line 130
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto :goto_0

    .line 132
    :pswitch_5
    new-instance v12, Lcom/tudou/adapter/IndexItemTopicTitle;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexItemTopicTitle;-><init>(Landroid/content/Context;)V

    .line 133
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto :goto_0

    .line 135
    :pswitch_6
    new-instance v12, Lcom/tudou/adapter/IndexItemPaper;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v0, v1}, Lcom/tudou/adapter/IndexItemPaper;-><init>(Landroid/content/Context;Z)V

    .line 136
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto :goto_0

    .line 138
    :pswitch_7
    new-instance v12, Lcom/tudou/adapter/IndexItemNormalTitle;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexItemNormalTitle;-><init>(Landroid/content/Context;)V

    .line 139
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 141
    :pswitch_8
    new-instance v12, Lcom/tudou/adapter/IndexItemVer;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexItemVer;-><init>(Landroid/content/Context;)V

    .line 142
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 144
    :pswitch_9
    new-instance v12, Lcom/tudou/adapter/IndexWeek;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexWeek;-><init>(Landroid/content/Context;)V

    .line 145
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 147
    :pswitch_a
    new-instance v12, Lcom/tudou/adapter/IndexBottomSkip;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexBottomSkip;-><init>(Landroid/content/Context;)V

    .line 148
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 150
    :pswitch_b
    new-instance v12, Lcom/tudou/adapter/IndexBottomLable;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexBottomLable;-><init>(Landroid/content/Context;)V

    .line 151
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 153
    :pswitch_c
    new-instance v12, Lcom/tudou/adapter/IndexSelectNess;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexSelectNess;-><init>(Landroid/content/Context;)V

    .line 154
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 156
    :pswitch_d
    new-instance v12, Lcom/tudou/adapter/IndexItemHorBoke;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexItemHorBoke;-><init>(Landroid/content/Context;)V

    .line 157
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 159
    :pswitch_e
    new-instance v12, Lcom/tudou/adapter/IndexItemFoot;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexItemFoot;-><init>(Landroid/content/Context;)V

    .line 160
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 162
    :pswitch_f
    new-instance v12, Lcom/tudou/adapter/IndexItemSeprater;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/tudou/adapter/IndexItemSeprater;-><init>(Landroid/content/Context;)V

    .line 163
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 165
    :pswitch_10
    new-instance v12, Lcom/tudou/adapter/IndexBottomLable;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v0, v1}, Lcom/tudou/adapter/IndexBottomLable;-><init>(Landroid/content/Context;Z)V

    .line 166
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 168
    :pswitch_11
    new-instance v12, Lcom/tudou/adapter/IndexItemPaper;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v0, v1}, Lcom/tudou/adapter/IndexItemPaper;-><init>(Landroid/content/Context;Z)V

    .line 169
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    .line 171
    :pswitch_12
    new-instance v12, Lcom/youku/widget/TudouModuleH5;

    .end local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v0, v1}, Lcom/youku/widget/TudouModuleH5;-><init>(Landroid/content/Context;Z)V

    .line 172
    .restart local v12    # "indexItemType":Lcom/tudou/adapter/IndexItemType;
    goto/16 :goto_0

    :cond_1
    move-object/from16 v12, p2

    .line 178
    check-cast v12, Lcom/tudou/adapter/IndexItemType;

    goto/16 :goto_1

    .restart local v14    # "indexPageItem":Lcom/youku/vo/IndexPageItem;
    .restart local v18    # "t1":J
    :pswitch_13
    move-object v11, v12

    .line 190
    check-cast v11, Lcom/tudou/adapter/IndexChannelItem;

    .line 191
    .local v11, "indexChannelItem":Lcom/tudou/adapter/IndexChannelItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initChannel(Lcom/tudou/adapter/IndexChannelItem;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v11    # "indexChannelItem":Lcom/tudou/adapter/IndexChannelItem;
    :pswitch_14
    move-object v13, v12

    .line 194
    check-cast v13, Lcom/tudou/adapter/IndexNotifyItem;

    .line 195
    .local v13, "indexNotifyItem":Lcom/tudou/adapter/IndexNotifyItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initNotify(Lcom/tudou/adapter/IndexNotifyItem;Lcom/youku/vo/IndexPageItem;)V

    .line 196
    iget-boolean v0, v14, Lcom/youku/vo/IndexPageItem;->hasAnimation:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 197
    const/high16 v23, 0x42b40000    # 90.0f

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->applyRotation(Landroid/view/View;FF)V

    .line 198
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v14, Lcom/youku/vo/IndexPageItem;->hasAnimation:Z

    goto/16 :goto_2

    .end local v13    # "indexNotifyItem":Lcom/tudou/adapter/IndexNotifyItem;
    :pswitch_15
    move-object v10, v12

    .line 202
    check-cast v10, Lcom/tudou/adapter/IndexItemHotTitle;

    .line 203
    .local v10, "hotTitle":Lcom/tudou/adapter/IndexItemHotTitle;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initHotTitle(Lcom/tudou/adapter/IndexItemHotTitle;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v10    # "hotTitle":Lcom/tudou/adapter/IndexItemHotTitle;
    :pswitch_16
    move-object v9, v12

    .line 206
    check-cast v9, Lcom/tudou/adapter/IndexItemHor;

    .line 207
    .local v9, "horItem":Lcom/tudou/adapter/IndexItemHor;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initHorItem(Lcom/tudou/adapter/IndexItemHor;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v9    # "horItem":Lcom/tudou/adapter/IndexItemHor;
    :pswitch_17
    move-object/from16 v20, v12

    .line 210
    check-cast v20, Lcom/tudou/adapter/IndexItemTopicTitle;

    .line 211
    .local v20, "topicTitle":Lcom/tudou/adapter/IndexItemTopicTitle;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initTopicTitle(Lcom/tudou/adapter/IndexItemTopicTitle;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v20    # "topicTitle":Lcom/tudou/adapter/IndexItemTopicTitle;
    :pswitch_18
    move-object/from16 v16, v12

    .line 215
    check-cast v16, Lcom/tudou/adapter/IndexItemPaper;

    .line 216
    .local v16, "paperItem":Lcom/tudou/adapter/IndexItemPaper;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initPaper(Lcom/tudou/adapter/IndexItemPaper;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v16    # "paperItem":Lcom/tudou/adapter/IndexItemPaper;
    :pswitch_19
    move-object v15, v12

    .line 219
    check-cast v15, Lcom/tudou/adapter/IndexItemNormalTitle;

    .line 220
    .local v15, "normalTitle":Lcom/tudou/adapter/IndexItemNormalTitle;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initNormalTitle(Lcom/tudou/adapter/IndexItemNormalTitle;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v15    # "normalTitle":Lcom/tudou/adapter/IndexItemNormalTitle;
    :pswitch_1a
    move-object/from16 v21, v12

    .line 223
    check-cast v21, Lcom/tudou/adapter/IndexItemVer;

    .line 224
    .local v21, "verItem":Lcom/tudou/adapter/IndexItemVer;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initVerItem(Lcom/tudou/adapter/IndexItemVer;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v21    # "verItem":Lcom/tudou/adapter/IndexItemVer;
    :pswitch_1b
    move-object/from16 v22, v12

    .line 227
    check-cast v22, Lcom/tudou/adapter/IndexWeek;

    .line 228
    .local v22, "weekItem":Lcom/tudou/adapter/IndexWeek;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initWeek(Lcom/tudou/adapter/IndexWeek;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v22    # "weekItem":Lcom/tudou/adapter/IndexWeek;
    :pswitch_1c
    move-object v8, v12

    .line 231
    check-cast v8, Lcom/tudou/adapter/IndexBottomSkip;

    .line 232
    .local v8, "bottomSkip":Lcom/tudou/adapter/IndexBottomSkip;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initBottomSkip(Lcom/tudou/adapter/IndexBottomSkip;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v8    # "bottomSkip":Lcom/tudou/adapter/IndexBottomSkip;
    :pswitch_1d
    move-object v6, v12

    .line 235
    check-cast v6, Lcom/tudou/adapter/IndexBottomLable;

    .line 236
    .local v6, "bottomLable":Lcom/tudou/adapter/IndexBottomLable;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initBottomLable(Lcom/tudou/adapter/IndexBottomLable;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v6    # "bottomLable":Lcom/tudou/adapter/IndexBottomLable;
    :pswitch_1e
    move-object/from16 v17, v12

    .line 239
    check-cast v17, Lcom/tudou/adapter/IndexSelectNess;

    .line 240
    .local v17, "selectNess":Lcom/tudou/adapter/IndexSelectNess;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initSelectness(Lcom/tudou/adapter/IndexSelectNess;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v17    # "selectNess":Lcom/tudou/adapter/IndexSelectNess;
    :pswitch_1f
    move-object v5, v12

    .line 243
    check-cast v5, Lcom/tudou/adapter/IndexItemHorBoke;

    .line 244
    .local v5, "boke":Lcom/tudou/adapter/IndexItemHorBoke;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initBokeItem(Lcom/tudou/adapter/IndexItemHorBoke;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v5    # "boke":Lcom/tudou/adapter/IndexItemHorBoke;
    :pswitch_20
    move-object v7, v12

    .line 249
    check-cast v7, Lcom/tudou/adapter/IndexBottomLable;

    .line 250
    .local v7, "bottomLable5":Lcom/tudou/adapter/IndexBottomLable;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/tudou/adapter/IndexPageAdapter;->initBottomLable5(Lcom/tudou/adapter/IndexBottomLable;Lcom/youku/vo/IndexPageItem;)V

    goto/16 :goto_2

    .end local v7    # "bottomLable5":Lcom/tudou/adapter/IndexBottomLable;
    :pswitch_21
    move-object v4, v12

    .line 253
    check-cast v4, Lcom/youku/widget/TudouModuleH5;

    .line 254
    .local v4, "aView":Lcom/youku/widget/TudouModuleH5;
    iget-object v0, v14, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/youku/widget/TudouModuleH5;->setData(Lcom/youku/vo/SkipInfo;)V

    goto/16 :goto_2

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 183
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_18
        :pswitch_21
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x13

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/IndexPageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/IndexPageItem;>;"
    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mHotIndexCode:I

    .line 88
    iput v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mBokeIndexCode:I

    .line 89
    iput v0, p0, Lcom/tudou/adapter/IndexPageAdapter;->mGuessIndexCode:I

    .line 90
    invoke-super {p0, p1}, Lcom/tudou/adapter/AbsAdapter;->setData(Ljava/util/List;)V

    .line 91
    return-void
.end method
