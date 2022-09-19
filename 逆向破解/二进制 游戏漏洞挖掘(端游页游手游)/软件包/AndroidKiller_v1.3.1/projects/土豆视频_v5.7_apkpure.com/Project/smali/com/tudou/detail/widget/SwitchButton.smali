.class public Lcom/tudou/detail/widget/SwitchButton;
.super Landroid/widget/FrameLayout;
.source "SwitchButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mButton:Landroid/widget/ImageView;

.field private mChecked:Z

.field private mDrawableAtte:I

.field private mDrawableNormal:I

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/SwitchButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f0c0cf5

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/SwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0c0cf6

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/SwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mProgress:Landroid/widget/ProgressBar;

    .line 36
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/tudou/detail/widget/SwitchButton;->mChecked:Z

    .line 64
    iget-boolean v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mChecked:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tudou/detail/widget/SwitchButton;->mDrawableAtte:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tudou/detail/widget/SwitchButton;->mDrawableNormal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 84
    iget-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 85
    return-void
.end method

.method public setDrawableAtte(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/tudou/detail/widget/SwitchButton;->mDrawableAtte:I

    .line 50
    return-void
.end method

.method public setDrawableNormal(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/tudou/detail/widget/SwitchButton;->mDrawableNormal:I

    .line 54
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 91
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "type"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    return-void
.end method

.method public showProgress(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 43
    iget-object v3, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 46
    return-void

    :cond_2
    move v0, v2

    .line 43
    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/tudou/detail/widget/SwitchButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
