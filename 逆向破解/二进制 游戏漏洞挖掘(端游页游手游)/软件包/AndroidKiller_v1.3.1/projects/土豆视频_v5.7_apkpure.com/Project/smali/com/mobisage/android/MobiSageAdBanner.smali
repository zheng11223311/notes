.class public final Lcom/mobisage/android/MobiSageAdBanner;
.super Lcom/mobisage/android/MobiSageAdRefreshView;
.source "MobiSageAdBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE:I = 0xf

.field private static final CONTENT_TYPE:J = 0x166L


# instance fields
.field private mAdSize:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field private mAnimeType:I

.field mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

.field private mLastAnimeType:I

.field mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 66
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_NA:Lcom/mobisage/android/MobiSageAdSize$Banner;

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/mobisage/android/MobiSageAdBanner;-><init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdSize$Banner;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/mobisage/android/MobiSageAdRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_NA:Lcom/mobisage/android/MobiSageAdSize$Banner;

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Banner;

    .line 94
    iput v1, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAnimeType:I

    .line 95
    iput v1, p0, Lcom/mobisage/android/MobiSageAdBanner;->mLastAnimeType:I

    .line 97
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageAdBanner;->initMobiSageAdView(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdSize$Banner;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/mobisage/android/MobiSageAdBanner;-><init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdSize$Banner;II)V

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdSize$Banner;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;
    .param p3, "affiliateId"    # I
    .param p4, "affiliateSourceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, p3, p4}, Lcom/mobisage/android/MobiSageAdRefreshView;-><init>(Landroid/content/Context;II)V

    .line 51
    iput-object p2, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Banner;

    .line 52
    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAnimeType:I

    .line 53
    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mLastAnimeType:I

    .line 55
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageAdBanner;->initMobiSageAdView(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private generateSwitchAnime()V
    .locals 6

    .prologue
    .line 223
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v3

    const-string v4, "adanimation"

    invoke-virtual {v3, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 225
    .local v2, "targetType":I
    if-nez v2, :cond_0

    .line 226
    iget v2, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAnimeType:I

    .line 227
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 228
    invoke-static {}, Lcom/mobisage/android/MobiSageSwitchAnimeFactory;->randomAnimeType()I

    move-result v2

    .line 230
    :cond_1
    iget v3, p0, Lcom/mobisage/android/MobiSageAdBanner;->mLastAnimeType:I

    if-ne v3, v2, :cond_2

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_2
    iput v2, p0, Lcom/mobisage/android/MobiSageAdBanner;->mLastAnimeType:I

    .line 234
    invoke-static {v2}, Lcom/mobisage/android/MobiSageSwitchAnimeFactory;->getSwitchAnimation(I)Lcom/mobisage/android/MobiSageSwitchAnime;

    move-result-object v1

    .line 236
    .local v1, "switchAnime":Lcom/mobisage/android/MobiSageSwitchAnime;
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdBanner;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget v4, p0, Lcom/mobisage/android/MobiSageAdBanner;->mDisplayType:I

    iget-object v5, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Banner;

    invoke-virtual {v1, v4, v5}, Lcom/mobisage/android/MobiSageSwitchAnime;->getSwichInAnime(ILcom/mobisage/android/MobiSageAdSize$Banner;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget v3, p0, Lcom/mobisage/android/MobiSageAdBanner;->mDisplayType:I

    iget-object v4, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Banner;

    invoke-virtual {v1, v3, v4}, Lcom/mobisage/android/MobiSageSwitchAnime;->getSwitchOutAnime(ILcom/mobisage/android/MobiSageAdSize$Banner;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 240
    .local v0, "outAnime":Landroid/view/animation/Animation;
    new-instance v3, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;-><init>(Lcom/mobisage/android/MobiSageAdBanner;Lcom/mobisage/android/MobiSageAdBanner$1;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 241
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdBanner;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic destoryAdView()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->destoryAdView()V

    return-void
.end method

.method public bridge synthetic getAdRefreshInterval()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->getAdRefreshInterval()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAnimeType()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAnimeType:I

    return v0
.end method

.method public bridge synthetic getCustomData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->getCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->getKeyword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initMobiSageAdView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mDisplayType:I

    .line 104
    const-wide/16 v0, 0x166

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mContentType:J

    .line 105
    const/16 v0, 0xf

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mActionType:I

    .line 107
    new-instance v0, Lcom/mobisage/android/MobiSageAdBanner$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageAdBanner$1;-><init>(Lcom/mobisage/android/MobiSageAdBanner;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 165
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-super {p0, v0}, Lcom/mobisage/android/MobiSageAdRefreshView;->setMobiSageAdViewListener(Lcom/mobisage/android/IMobiSageAdViewListener;)V

    .line 167
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Banner;

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_NA:Lcom/mobisage/android/MobiSageAdSize$Banner;

    if-ne v0, v1, :cond_0

    .line 168
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    const/high16 v1, 0x43a00000    # 320.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdWidth:I

    .line 169
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdHeight:I

    .line 174
    :goto_0
    iget v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdWidth:I

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mRealWidth:I

    .line 175
    iget v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdHeight:I

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mRealHeight:I

    .line 177
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdRefreshView;->initMobiSageAdView(Landroid/content/Context;)V

    .line 178
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Banner;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSize;->getBannerWidth(Lcom/mobisage/android/MobiSageAdSize$Banner;)I

    move-result v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdWidth:I

    .line 172
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Banner;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSize;->getBannerHeight(Lcom/mobisage/android/MobiSageAdSize$Banner;)I

    move-result v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAdHeight:I

    goto :goto_0
.end method

.method protected onLoadAdFinish()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdBanner;->generateSwitchAnime()V

    .line 214
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->onLoadAdFinish()V

    .line 215
    return-void
.end method

.method public bridge synthetic runJavascript(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdRefreshView;->runJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAdRefreshInterval(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdRefreshView;->setAdRefreshInterval(Ljava/lang/Integer;)V

    return-void
.end method

.method public setAnimeType(I)V
    .locals 0
    .param p1, "animeType"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/mobisage/android/MobiSageAdBanner;->mAnimeType:I

    .line 209
    return-void
.end method

.method public bridge synthetic setCustomData(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdRefreshView;->setCustomData(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdRefreshView;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public setMobiSageAdBannerListener(Lcom/mobisage/android/MobiSageAdBannerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mobisage/android/MobiSageAdBannerListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    .line 188
    return-void
.end method

.method public bridge synthetic setWindowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdRefreshView;->setWindowColor(Ljava/lang/String;)V

    return-void
.end method

.method protected switchAdView()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdBanner;->adViewState:I

    .line 220
    return-void
.end method
