.class final Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;
.super Ljava/lang/Object;
.source "DefaultAnimationsBuilder.java"


# static fields
.field private static final DURATION:J = 0x190L

.field private static lastInAnimationHeight:I

.field private static lastOutAnimationHeight:I

.field private static slideInDownAnimation:Landroid/view/animation/Animation;

.field private static slideOutUpAnimation:Landroid/view/animation/Animation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static areLastMeasuredAnimationHeightAndCurrentEqual(ILandroid/view/View;)Z
    .locals 1
    .param p0, "lastHeight"    # I
    .param p1, "croutonView"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static areLastMeasuredInAnimationHeightAndCurrentEqual(Landroid/view/View;)Z
    .locals 1
    .param p0, "croutonView"    # Landroid/view/View;

    .prologue
    .line 70
    sget v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->lastInAnimationHeight:I

    invoke-static {v0, p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->areLastMeasuredAnimationHeightAndCurrentEqual(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private static areLastMeasuredOutAnimationHeightAndCurrentEqual(Landroid/view/View;)Z
    .locals 1
    .param p0, "croutonView"    # Landroid/view/View;

    .prologue
    .line 74
    sget v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->lastOutAnimationHeight:I

    invoke-static {v0, p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->areLastMeasuredAnimationHeightAndCurrentEqual(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static buildDefaultSlideInDownAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "croutonView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-static {p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->areLastMeasuredInAnimationHeightAndCurrentEqual(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideInDownAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideInDownAnimation:Landroid/view/animation/Animation;

    .line 45
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideInDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->setLastInAnimationHeight(I)V

    .line 48
    :cond_1
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideInDownAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static buildDefaultSlideOutUpAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "croutonView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->areLastMeasuredOutAnimationHeightAndCurrentEqual(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideOutUpAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideOutUpAnimation:Landroid/view/animation/Animation;

    .line 63
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideOutUpAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->setLastOutAnimationHeight(I)V

    .line 66
    :cond_1
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideOutUpAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static setLastInAnimationHeight(I)V
    .locals 0
    .param p0, "lastInAnimationHeight"    # I

    .prologue
    .line 82
    sput p0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->lastInAnimationHeight:I

    .line 83
    return-void
.end method

.method private static setLastOutAnimationHeight(I)V
    .locals 0
    .param p0, "lastOutAnimationHeight"    # I

    .prologue
    .line 86
    sput p0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->lastOutAnimationHeight:I

    .line 87
    return-void
.end method
