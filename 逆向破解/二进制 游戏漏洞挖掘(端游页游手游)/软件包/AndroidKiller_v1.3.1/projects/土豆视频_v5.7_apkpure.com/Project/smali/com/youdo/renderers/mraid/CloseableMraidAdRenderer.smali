.class public Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;
.super Lcom/youdo/renderers/mraid/PureMraidAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "CloseableMraidAdRenderer"


# instance fields
.field private forceHideCloseButtonByAdCreativeAsset:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mCloseButton:Landroid/widget/ImageButton;

.field protected mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

.field protected mMiniButton:Landroid/widget/ImageButton;

.field private mTimer:Lorg/openad/common/util/XYDTimer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;)V
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0xa

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V

    iput-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->forceHideCloseButtonByAdCreativeAsset:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    new-instance v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;

    invoke-direct {v0, p0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;-><init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)V

    iput-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->listener:Lcom/youdo/view/MraidView$MraidViewListener;

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->forceHideCloseButtonByAdCreativeAsset:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v2}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->getXAdSDKResource()Lcom/youdo/XAdSDKResource;

    move-result-object v2

    iget v2, v2, Lcom/youdo/XAdSDKResource;->ad_close:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/openad/common/util/XYDTimer;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mAdDataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

    invoke-interface {v1}, Lcom/youdo/ad/interfaces/IAdDataVO;->getVideoAdDuration()D

    move-result-wide v2

    double-to-int v1, v2

    new-instance v2, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;

    invoke-direct {v2, p0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;-><init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)V

    invoke-direct {v0, v1, v2}, Lorg/openad/common/util/XYDTimer;-><init>(ILorg/openad/common/util/XYDTimer$EventHandler;)V

    iput-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mTimer:Lorg/openad/common/util/XYDTimer;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v2}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->getXAdSDKResource()Lcom/youdo/XAdSDKResource;

    move-result-object v2

    iget v2, v2, Lcom/youdo/XAdSDKResource;->ad_mini:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$3;

    invoke-direct {v1, p0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$3;-><init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->forceHideCloseButtonByAdCreativeAsset:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->displayUIObject(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private displayUIObject(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideCloseButton(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->forceHideCloseButtonByAdCreativeAsset:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;

    invoke-direct {v1, p0, p1}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;-><init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public load()V
    .locals 2

    invoke-super {p0}, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->load()V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mTimer:Lorg/openad/common/util/XYDTimer;

    invoke-virtual {v0}, Lorg/openad/common/util/XYDTimer;->start()V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$5;

    invoke-direct {v1, p0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$5;-><init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mAdUnitContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mAdUnitContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMiniButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected newImgBtn(I)Landroid/widget/ImageButton;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    return-object v0
.end method

.method public resize(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->resize(II)V

    return-void
.end method

.method public setVideoAdDuration(D)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/view/MraidView;->setVideoAdDuration(D)V

    :cond_0
    return-void
.end method

.method public setVideoAdPlayheadTime(D)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/view/MraidView;->setVideoAdPlayheadTime(D)V

    :cond_0
    return-void
.end method
