.class public Lcn/domob/android/ads/VideoInterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/c/f;


# instance fields
.field private b:Lcn/domob/android/ads/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/VideoInterstitialAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/VideoInterstitialAd;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcn/domob/android/ads/VideoIsPlayingListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "maxSecureAreaWidth"    # I
    .param p5, "maxSecureAreaHeight"    # I
    .param p6, "videoIsPlaying"    # Lcn/domob/android/ads/VideoIsPlayingListener;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "publisherID may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    if-nez p3, :cond_2

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "placementID may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_2
    if-nez p6, :cond_3

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VideoIsPlayingListener may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    new-instance v0, Lcn/domob/android/ads/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p4}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p5}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/domob/android/ads/AdView$a;->g:Lcn/domob/android/ads/AdView$a;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/AdView$a;Lcn/domob/android/ads/VideoIsPlayingListener;I)V

    iput-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    .line 50
    return-void
.end method

.method private a(Landroid/content/Context;Lcn/domob/android/ads/SceneInfo;)Lcn/domob/android/ads/z$b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    .line 104
    instance-of v0, p2, Lcn/domob/android/ads/VideoInterstitialSceneInfo;

    if-eqz v0, :cond_1

    .line 105
    check-cast p2, Lcn/domob/android/ads/VideoInterstitialSceneInfo;

    .line 109
    :goto_0
    new-instance v0, Lcn/domob/android/ads/z$b;

    invoke-direct {v0}, Lcn/domob/android/ads/z$b;-><init>()V

    .line 110
    const-string v1, "d_close_interstitial.png"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z$b;->b(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/z$b;->b(Landroid/content/Context;I)V

    .line 112
    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/z$b;->c(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {p2}, Lcn/domob/android/ads/VideoInterstitialSceneInfo;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z$b;->c(I)V

    .line 115
    invoke-virtual {p2}, Lcn/domob/android/ads/VideoInterstitialSceneInfo;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 117
    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/VideoInterstitialAd;->a(Landroid/content/Context;Lcn/domob/android/ads/z$b;)V

    .line 122
    :cond_0
    :goto_1
    return-object v0

    .line 107
    :cond_1
    new-instance p2, Lcn/domob/android/ads/VideoInterstitialSceneInfo;

    invoke-direct {p2}, Lcn/domob/android/ads/VideoInterstitialSceneInfo;-><init>()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p2}, Lcn/domob/android/ads/VideoInterstitialSceneInfo;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 120
    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/VideoInterstitialAd;->b(Landroid/content/Context;Lcn/domob/android/ads/z$b;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcn/domob/android/ads/z$b;)V
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x22

    invoke-virtual {p2, p1, v0}, Lcn/domob/android/ads/z$b;->a(Landroid/content/Context;I)V

    .line 134
    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Lcn/domob/android/ads/z$b;->d(Landroid/content/Context;I)V

    .line 135
    return-void
.end method

.method private a(Lcn/domob/android/ads/SceneInfo;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0}, Lcn/domob/android/ads/z;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcn/domob/android/ads/VideoInterstitialAd;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Show VideoInterstitial View."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/VideoInterstitialAd;->a(Landroid/content/Context;Lcn/domob/android/ads/SceneInfo;)Lcn/domob/android/ads/z$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcn/domob/android/ads/VideoInterstitialAd;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "VideoInterstitial ad is not ready"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0}, Lcn/domob/android/ads/z;->m()Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;Lcn/domob/android/ads/z$b;)V
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x1e

    invoke-virtual {p2, p1, v0}, Lcn/domob/android/ads/z$b;->d(Landroid/content/Context;I)V

    .line 146
    const/16 v0, 0xc

    invoke-virtual {p2, p1, v0}, Lcn/domob/android/ads/z$b;->a(Landroid/content/Context;I)V

    .line 147
    return-void
.end method


# virtual methods
.method public changeScene(Lcn/domob/android/ads/SceneInfo;)V
    .locals 2
    .param p1, "sceneInfo"    # Lcn/domob/android/ads/SceneInfo;

    .prologue
    .line 93
    sget-object v0, Lcn/domob/android/ads/VideoInterstitialAd;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "scene change"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/VideoInterstitialAd;->a(Landroid/content/Context;Lcn/domob/android/ads/SceneInfo;)Lcn/domob/android/ads/z$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/z;->c(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    .line 95
    return-void
.end method

.method public closeVideoInterstitialAd()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0}, Lcn/domob/android/ads/z;->q()V

    .line 154
    return-void
.end method

.method public loadVideoInterstitialAd(Lcn/domob/android/ads/SceneInfo;)V
    .locals 2
    .param p1, "sceneInfo"    # Lcn/domob/android/ads/SceneInfo;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/VideoInterstitialAd;->a(Landroid/content/Context;Lcn/domob/android/ads/SceneInfo;)Lcn/domob/android/ads/z$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    .line 58
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->setKeyword(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->setUserGender(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->setUserPostcode(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setVideoInterstitialAdListener(Lcn/domob/android/ads/VideoInterstitialAdListener;)V
    .locals 1
    .param p1, "VideoInterstitialAdListener"    # Lcn/domob/android/ads/VideoInterstitialAdListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/VideoInterstitialAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/VideoInterstitialAdListener;)V

    .line 67
    return-void
.end method
