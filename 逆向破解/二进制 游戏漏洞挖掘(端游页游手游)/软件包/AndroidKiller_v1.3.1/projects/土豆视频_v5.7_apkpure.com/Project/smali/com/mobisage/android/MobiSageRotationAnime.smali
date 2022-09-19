.class Lcom/mobisage/android/MobiSageRotationAnime;
.super Lcom/mobisage/android/MobiSageSwitchAnime;
.source "MobiSageRotationAnime.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageSwitchAnime;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwichInAnime(ILcom/mobisage/android/MobiSageAdSize$Banner;)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "displayType"    # I
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 16
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 19
    .local v0, "anime":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 20
    return-object v0
.end method

.method public getSwitchOutAnime(ILcom/mobisage/android/MobiSageAdSize$Banner;)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "displayType"    # I
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 25
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3c4c0000    # -360.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 28
    .local v0, "anime":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 29
    return-object v0
.end method
