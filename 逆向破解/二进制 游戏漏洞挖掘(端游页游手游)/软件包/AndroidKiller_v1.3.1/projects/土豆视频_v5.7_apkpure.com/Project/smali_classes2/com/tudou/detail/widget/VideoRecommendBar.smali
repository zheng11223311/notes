.class public Lcom/tudou/detail/widget/VideoRecommendBar;
.super Landroid/widget/FrameLayout;
.source "VideoRecommendBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;,
        Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mCallbacks:Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;

.field private mDetailrecommend:Lcom/youku/vo/DetailRecomment;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mRecommendGrid:Landroid/widget/GridView;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mVideoType:Lcom/tudou/android/Youku$VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoRecommendBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoRecommendBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/tudou/android/Youku$VideoType;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoRecommendBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoRecommendBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/NewVideoDetail;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoRecommendBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0c0346

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoRecommendBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mRecommendGrid:Landroid/widget/GridView;

    .line 46
    return-void
.end method

.method public setRecommendInfo(Lcom/youku/vo/NewVideoDetail;Lcom/youku/vo/DetailRecomment;)V
    .locals 2
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "recommend"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 50
    iput-object p2, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    .line 51
    iget-object v0, p2, Lcom/youku/vo/DetailRecomment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 52
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mRecommendGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;-><init>(Lcom/tudou/detail/widget/VideoRecommendBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mRecommendGrid:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar;->mRecommendGrid:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method
