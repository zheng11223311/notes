.class Lcom/mobisage/android/MobiSageFadeAnime;
.super Lcom/mobisage/android/MobiSageSwitchAnime;
.source "MobiSageFadeAnime.java"


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
    .line 22
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 23
    .local v0, "anime":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 24
    return-object v0
.end method

.method public getSwitchOutAnime(ILcom/mobisage/android/MobiSageAdSize$Banner;)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "displayType"    # I
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    .line 15
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 16
    .local v0, "anime":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 17
    return-object v0
.end method
