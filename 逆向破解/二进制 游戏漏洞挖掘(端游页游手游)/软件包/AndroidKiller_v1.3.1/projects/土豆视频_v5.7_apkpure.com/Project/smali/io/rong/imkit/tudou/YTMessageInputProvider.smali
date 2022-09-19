.class public Lio/rong/imkit/tudou/YTMessageInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
.source "YTMessageInputProvider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mOffsetLimit:F

.field mVoiceBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 41
    return-void
.end method


# virtual methods
.method public obtainSwitchDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_smiley:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActive(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    return-void
.end method

.method public onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V
    .locals 2
    .param p1, "fragment"    # Lio/rong/imkit/fragment/MessageInputFragment;
    .param p2, "inputView"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V

    .line 26
    const/high16 v0, 0x428c0000    # 70.0f

    invoke-virtual {p1}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lio/rong/imkit/tudou/YTMessageInputProvider;->mOffsetLimit:F

    .line 27
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "inputView"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 50
    iput-object p1, p0, Lio/rong/imkit/tudou/YTMessageInputProvider;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    sget v1, Lio/rong/imkit/R$layout;->rc_wi_vo_provider:I

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/tudou/YTMessageInputProvider;->mVoiceBtn:Landroid/widget/Button;

    .line 53
    iget-object v1, p0, Lio/rong/imkit/tudou/YTMessageInputProvider;->mVoiceBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    return-object v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onDetached()V

    .line 37
    return-void
.end method

.method public onInactive(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    return-void
.end method

.method public onSwitch(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
