.class Lcom/mobisage/android/MobiSageTranslateL2RAnime;
.super Lcom/mobisage/android/MobiSageSwitchAnime;
.source "MobiSageTranslateL2RAnime.java"


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
    .locals 4
    .param p1, "displayType"    # I
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    const/4 v3, 0x0

    .line 23
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {p2}, Lcom/mobisage/android/MobiSageAdSize;->getBannerWidth(Lcom/mobisage/android/MobiSageAdSize$Banner;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 25
    .local v0, "anime":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 26
    return-object v0
.end method

.method public getSwitchOutAnime(ILcom/mobisage/android/MobiSageAdSize$Banner;)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "displayType"    # I
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {p2}, Lcom/mobisage/android/MobiSageAdSize;->getBannerWidth(Lcom/mobisage/android/MobiSageAdSize$Banner;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 17
    .local v0, "anime":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 18
    return-object v0
.end method
