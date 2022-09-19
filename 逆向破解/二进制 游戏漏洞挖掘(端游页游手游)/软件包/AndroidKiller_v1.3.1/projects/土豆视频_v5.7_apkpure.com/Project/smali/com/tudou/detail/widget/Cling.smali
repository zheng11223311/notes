.class public Lcom/tudou/detail/widget/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClingAnim:Landroid/view/animation/Animation;

.field private mDrawIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/tudou/detail/widget/Cling;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/Cling;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    .line 34
    sget-object v1, Lcom/tudou/android/R$styleable;->Cling:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/widget/Cling;->mDrawIdentifier:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    iget-object v1, p0, Lcom/tudou/detail/widget/Cling;->mDrawIdentifier:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tudou/detail/widget/Cling;->getClingAnimation(Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    .line 38
    return-void
.end method

.method private getClingAnimation(Ljava/lang/String;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/tudou/detail/widget/Cling;->mDrawIdentifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :cond_0
    return-object v0
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 43
    if-nez p1, :cond_2

    .line 44
    iget-object v0, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 47
    iget-object v0, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/Cling;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 54
    iget-object v0, p0, Lcom/tudou/detail/widget/Cling;->mClingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    goto :goto_0
.end method
