.class public Lcn/domob/android/ads/PreRollAd;
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

    const-class v1, Lcn/domob/android/ads/PreRollAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/PreRollAd;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcn/domob/android/ads/VideoIsPlayingListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "maxSecureAreaWidth"    # I
    .param p5, "maxSecureAreaHeight"    # I
    .param p6, "isPlayingListener"    # Lcn/domob/android/ads/VideoIsPlayingListener;

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

    sget-object v5, Lcn/domob/android/ads/AdView$a;->h:Lcn/domob/android/ads/AdView$a;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/AdView$a;Lcn/domob/android/ads/VideoIsPlayingListener;I)V

    iput-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    .line 50
    return-void
.end method

.method private a(Lcn/domob/android/ads/SceneInfo;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0}, Lcn/domob/android/ads/z;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcn/domob/android/ads/PreRollAd;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Show PreRoll View."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/PreRollAd;->b(Lcn/domob/android/ads/SceneInfo;)Lcn/domob/android/ads/z$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcn/domob/android/ads/PreRollAd;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "PreRoll ad is not ready"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0}, Lcn/domob/android/ads/z;->m()Z

    move-result v0

    return v0
.end method

.method private b(Lcn/domob/android/ads/SceneInfo;)Lcn/domob/android/ads/z$b;
    .locals 2

    .prologue
    .line 91
    .line 92
    instance-of v0, p1, Lcn/domob/android/ads/PreRollSceneInfo;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Lcn/domob/android/ads/PreRollSceneInfo;

    .line 97
    :goto_0
    new-instance v0, Lcn/domob/android/ads/z$b;

    invoke-direct {v0}, Lcn/domob/android/ads/z$b;-><init>()V

    .line 98
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z$b;->c(I)V

    .line 99
    const-string v1, "d_close.png"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z$b;->b(Ljava/lang/String;)V

    .line 100
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z$b;->l(I)V

    .line 101
    invoke-virtual {p1}, Lcn/domob/android/ads/PreRollSceneInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcn/domob/android/ads/PreRollSceneInfo;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z$b;->b(Z)V

    .line 103
    invoke-virtual {p1}, Lcn/domob/android/ads/PreRollSceneInfo;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z$b;->h(I)V

    .line 104
    invoke-virtual {p1}, Lcn/domob/android/ads/PreRollSceneInfo;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z$b;->i(I)V

    .line 106
    :cond_0
    return-object v0

    .line 95
    :cond_1
    new-instance p1, Lcn/domob/android/ads/PreRollSceneInfo;

    invoke-direct {p1}, Lcn/domob/android/ads/PreRollSceneInfo;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public changeScene(Lcn/domob/android/ads/SceneInfo;)V
    .locals 2
    .param p1, "sceneInfo"    # Lcn/domob/android/ads/SceneInfo;

    .prologue
    .line 113
    sget-object v0, Lcn/domob/android/ads/PreRollAd;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "scene change"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/PreRollAd;->b(Lcn/domob/android/ads/SceneInfo;)Lcn/domob/android/ads/z$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/z;->c(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    .line 115
    return-void
.end method

.method public closePreRollAd()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/z;->a(Z)V

    .line 130
    return-void
.end method

.method public loadPreRollAd(Lcn/domob/android/ads/SceneInfo;)V
    .locals 2
    .param p1, "sceneInfo"    # Lcn/domob/android/ads/SceneInfo;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/PreRollAd;->b(Lcn/domob/android/ads/SceneInfo;)Lcn/domob/android/ads/z$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    .line 57
    return-void
.end method

.method public setCountdownTotalSeconds(I)V
    .locals 1
    .param p1, "countdownTotalSeconds"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->a(I)V

    .line 122
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->setKeyword(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setProRollAdListener(Lcn/domob/android/ads/PreRollAdListener;)V
    .locals 1
    .param p1, "ProRellAdListener"    # Lcn/domob/android/ads/PreRollAdListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/PreRollAdListener;)V

    .line 66
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->setUserGender(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lcn/domob/android/ads/PreRollAd;->b:Lcn/domob/android/ads/z;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/z;->setUserPostcode(Ljava/lang/String;)V

    .line 169
    return-void
.end method
