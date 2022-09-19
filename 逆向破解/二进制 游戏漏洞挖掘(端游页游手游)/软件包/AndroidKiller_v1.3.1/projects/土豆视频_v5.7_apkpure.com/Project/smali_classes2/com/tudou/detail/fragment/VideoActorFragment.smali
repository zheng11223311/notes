.class public Lcom/tudou/detail/fragment/VideoActorFragment;
.super Landroid/app/Fragment;
.source "VideoActorFragment.java"


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_VIDEO_ACTOR:Ljava/lang/String; = "bundle.video.actor"

.field private static final MSG_GET_ACTOR_FAIL:I = 0x2

.field private static final MSG_GET_ACTOR_SUCCESSS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public isDescExpand:Z

.field public mActor:Lcom/youku/vo/NewVideoDetail$Detail$Actor;

.field private mActorArea:Landroid/widget/TextView;

.field private mActorBirthday:Landroid/widget/TextView;

.field private mActorCatVideosAdapter:Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

.field private mActorCategorys:Landroid/support/v7/widget/RecyclerView;

.field private mActorCategorysAdapter:Lcom/tudou/detail/adapter/ActorCategorysAdapter;

.field private mActorConstellation:Landroid/widget/TextView;

.field private mActorDesc:Landroid/widget/TextView;

.field private mActorInfo:Lcom/tudou/detail/vo/ActorInfo;

.field private mActorJob:Landroid/widget/TextView;

.field private mActorName:Landroid/widget/TextView;

.field private mActorPic:Landroid/widget/ImageView;

.field private mBtnExpand:Landroid/view/View;

.field private mCatVideos:Landroid/support/v7/widget/RecyclerView;

.field private mContent:Landroid/view/View;

.field private mCorVideosAdapter:Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

.field private mCorrelationLayout:Landroid/view/View;

.field private mCorrelationVideos:Landroid/support/v7/widget/RecyclerView;

.field public mDescGetHeight:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field public mLastAnimator:Landroid/animation/ValueAnimator;

.field private mLoading:Landroid/view/View;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mTitleLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->isDescExpand:Z

    .line 111
    new-instance v0, Lcom/tudou/detail/fragment/VideoActorFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$1;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mBtnExpand:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorDesc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorBirthday:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorConstellation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCategorysAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorCategorysAdapter:Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/adapter/ActorCategorysAdapter;)Lcom/tudou/detail/adapter/ActorCategorysAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;
    .param p1, "x1"    # Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorCategorysAdapter:Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCatVideosAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorCatVideosAdapter:Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/adapter/ActorCatVideosAdapter;)Lcom/tudou/detail/adapter/ActorCatVideosAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;
    .param p1, "x1"    # Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorCatVideosAdapter:Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    return-object p1
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCorrelationLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCorVideosAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCorVideosAdapter:Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/adapter/ActorCorVideosAdapter;)Lcom/tudou/detail/adapter/ActorCorVideosAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;
    .param p1, "x1"    # Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCorVideosAdapter:Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorCategorys:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCatVideos:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCorrelationVideos:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/detail/fragment/VideoActorFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorInfo:Lcom/tudou/detail/vo/ActorInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/vo/ActorInfo;)Lcom/tudou/detail/vo/ActorInfo;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;
    .param p1, "x1"    # Lcom/tudou/detail/vo/ActorInfo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorInfo:Lcom/tudou/detail/vo/ActorInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorJob:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoActorFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorArea:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorPic:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorJob:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorArea:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorBirthday:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorConstellation:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorDesc:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mDescGetHeight:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorInfo:Lcom/tudou/detail/vo/ActorInfo;

    .line 419
    return-void
.end method

.method public collapseDesc()V
    .locals 8

    .prologue
    .line 136
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->isDescExpand:Z

    .line 137
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->end()V

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorDesc:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    .line 141
    .local v3, "startHeight":I
    const/4 v0, 0x0

    .line 143
    .local v0, "endHeight":I
    const/16 v4, 0xb4

    .line 144
    .local v4, "startRotate":I
    const/4 v1, 0x0

    .line 146
    .local v1, "endRotate":I
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 147
    .local v2, "scale":Landroid/animation/ValueAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    new-instance v5, Lcom/tudou/detail/fragment/VideoActorFragment$2;

    invoke-direct {v5, p0, v3}, Lcom/tudou/detail/fragment/VideoActorFragment$2;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    new-instance v5, Lcom/tudou/detail/fragment/VideoActorFragment$3;

    invoke-direct {v5, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$3;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    .line 179
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 180
    return-void

    .line 146
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public expandDesc()V
    .locals 8

    .prologue
    .line 183
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->isDescExpand:Z

    .line 184
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->end()V

    .line 188
    :cond_0
    const/4 v3, 0x0

    .line 189
    .local v3, "startHeight":I
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mDescGetHeight:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 191
    .local v0, "endHeight":I
    sget-object v5, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expandDesc startHeight = 0, endHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, "startRotate":I
    const/16 v1, 0xb4

    .line 196
    .local v1, "endRotate":I
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 197
    .local v2, "scale":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/tudou/detail/fragment/VideoActorFragment$4;

    invoke-direct {v5, p0, v0}, Lcom/tudou/detail/fragment/VideoActorFragment$4;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    new-instance v5, Lcom/tudou/detail/fragment/VideoActorFragment$5;

    invoke-direct {v5, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$5;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    .line 228
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 229
    return-void

    .line 196
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 400
    sget-object v1, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoActorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 402
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 403
    const-string v1, "bundle.video.actor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActor:Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    .line 404
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActor:Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    invoke-virtual {p0, v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->setBaseData(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V

    .line 406
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 233
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 235
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 239
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 241
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 382
    sget-object v2, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    if-ne p3, v6, :cond_0

    .line 387
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 388
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 389
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 390
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 391
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 388
    goto :goto_1

    .line 389
    :cond_3
    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    sget-object v1, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const v1, 0x7f0300bb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 631
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 633
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 625
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 627
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 637
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 639
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 613
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 615
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 606
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 608
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 600
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 602
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 619
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 621
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 252
    sget-object v2, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    const-string v3, "onViewCreated"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 255
    const v2, 0x7f0c036d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorPic:Landroid/widget/ImageView;

    .line 256
    const v2, 0x7f0c036e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorName:Landroid/widget/TextView;

    .line 257
    const v2, 0x7f0c036f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorJob:Landroid/widget/TextView;

    .line 258
    const v2, 0x7f0c0370

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorArea:Landroid/widget/TextView;

    .line 259
    const v2, 0x7f0c0371

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorBirthday:Landroid/widget/TextView;

    .line 260
    const v2, 0x7f0c0372

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorConstellation:Landroid/widget/TextView;

    .line 261
    const v2, 0x7f0c0373

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorDesc:Landroid/widget/TextView;

    .line 262
    const v2, 0x7f0c0374

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mBtnExpand:Landroid/view/View;

    .line 263
    const v2, 0x7f0c0369

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mDescGetHeight:Landroid/widget/TextView;

    .line 265
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorDesc:Landroid/widget/TextView;

    new-instance v3, Lcom/tudou/detail/fragment/VideoActorFragment$6;

    invoke-direct {v3, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$6;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mBtnExpand:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/fragment/VideoActorFragment$7;

    invoke-direct {v3, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$7;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v2, 0x7f0c0375

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorCategorys:Landroid/support/v7/widget/RecyclerView;

    .line 287
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 288
    .local v1, "tLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 289
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorCategorys:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 290
    new-instance v0, Lcom/tudou/detail/fragment/VideoActorFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$8;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    .line 306
    .local v0, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorCategorys:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 308
    const v2, 0x7f0c0376

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCatVideos:Landroid/support/v7/widget/RecyclerView;

    .line 309
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v1    # "tLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 310
    .restart local v1    # "tLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 311
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCatVideos:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 312
    new-instance v0, Lcom/tudou/detail/fragment/VideoActorFragment$9;

    .end local v0    # "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$9;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    .line 325
    .restart local v0    # "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCatVideos:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 328
    const v2, 0x7f0c0377

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCorrelationLayout:Landroid/view/View;

    .line 329
    const v2, 0x7f0c0378

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCorrelationVideos:Landroid/support/v7/widget/RecyclerView;

    .line 330
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v1    # "tLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 331
    .restart local v1    # "tLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 332
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCorrelationVideos:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 333
    new-instance v0, Lcom/tudou/detail/fragment/VideoActorFragment$10;

    .end local v0    # "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$10;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    .line 346
    .restart local v0    # "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mCorrelationVideos:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 348
    const v2, 0x7f0c036c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mContent:Landroid/view/View;

    .line 349
    const v2, 0x7f0c037a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLoading:Landroid/view/View;

    .line 350
    const v2, 0x7f0c0379

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/HintView;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 351
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setBackgroundColor(I)V

    .line 352
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v3, Lcom/tudou/detail/fragment/VideoActorFragment$11;

    invoke-direct {v3, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$11;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v2, 0x7f0c036a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mTitleLayout:Landroid/view/View;

    .line 366
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mTitleLayout:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/fragment/VideoActorFragment$12;

    invoke-direct {v3, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$12;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-void
.end method

.method public playLineOrApp(Landroid/app/Activity;Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;)V
    .locals 6
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "videos"    # Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;

    .prologue
    .line 560
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 561
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->iid:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 565
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->iid:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v5, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->name:Ljava/lang/String;

    invoke-static {p1, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->source:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;

    iget-object v3, v3, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->play_mode:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 569
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->source:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;

    iget-object v3, v3, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->aid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 570
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->source:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;

    iget-object v3, v3, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->aid:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v5, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->name:Ljava/lang/String;

    invoke-static {p1, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_3
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->source:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;

    iget-object v2, v3, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->play_mode:Ljava/lang/String;

    .line 574
    .local v2, "playMode":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 575
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->source:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;

    iget-object v3, v3, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 576
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->source:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;

    iget-object v3, v3, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->url:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 578
    :cond_4
    const-string v3, "\u89c6\u9891\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_5
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 583
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->source:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;

    iget-object v4, v4, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 585
    .local v1, "it":Landroid/content/Intent;
    invoke-static {p1, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    .end local v1    # "it":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "\u89c6\u9891\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 591
    iget-object v3, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->source:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;

    iget-object v3, v3, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->aid:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v5, p2, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->name:Ljava/lang/String;

    invoke-static {p1, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    :cond_7
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0
.end method

.method public setBaseData(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V
    .locals 4
    .param p1, "actor"    # Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoActorFragment;->clear()V

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->showLoading(ZZZ)V

    .line 424
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActor:Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    .line 425
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActor:Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->pic_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mActorPic:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 427
    new-instance v0, Lcom/tudou/detail/DetailModel;

    invoke-direct {v0}, Lcom/tudou/detail/DetailModel;-><init>()V

    iget-object v1, p1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->name:Ljava/lang/String;

    iget v2, p1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->id:I

    new-instance v3, Lcom/tudou/detail/fragment/VideoActorFragment$13;

    invoke-direct {v3, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$13;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel;->getActorInfoAsyn(Ljava/lang/String;ILcom/tudou/detail/DetailModel$OnActorInfoGettedListener;)V

    .line 534
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 127
    return-void
.end method

.method public showLoading(ZZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "error"    # Z
    .param p3, "empty"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 537
    sget-object v0, Lcom/tudou/detail/fragment/VideoActorFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoading show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", empty = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    if-eqz p1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 541
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mContent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 557
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 544
    if-eqz p2, :cond_1

    .line 545
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 546
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mContent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 548
    :cond_1
    if-eqz p3, :cond_2

    .line 549
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 550
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mContent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 553
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment;->mContent:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
