.class Lcom/mobisage/android/MobiSageEyeAnime;
.super Lcom/mobisage/android/MobiSageSwitchAnime;
.source "MobiSageEyeAnime.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageSwitchAnime;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwichInAnime(ILcom/mobisage/android/MobiSageAdSize$Banner;)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "displayType"    # I
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    move v2, v1

    move v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 19
    .local v0, "anime":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 20
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 21
    return-object v0
.end method

.method public getSwitchOutAnime(ILcom/mobisage/android/MobiSageAdSize$Banner;)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "displayType"    # I
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v4, 0x0

    move v2, v1

    move v3, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 29
    .local v0, "aniem":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 30
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 31
    return-object v0
.end method
