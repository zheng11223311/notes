.class Lcn/domob/android/ads/s;
.super Lcn/domob/android/ads/AdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/AdEventListener;


# static fields
.field private static r:Lcn/domob/android/ads/c/f;


# instance fields
.field protected p:Z

.field protected q:Z

.field private s:Lcn/domob/android/ads/InterstitialAd;

.field private t:Lcn/domob/android/ads/InterstitialAdListener;

.field private u:Lcn/domob/android/ads/t$a;

.field private v:Lcn/domob/android/ads/InterstitialAd$BorderType;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-boolean v1, p0, Lcn/domob/android/ads/s;->p:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    .line 22
    sget-object v0, Lcn/domob/android/ads/InterstitialAd$BorderType;->Black:Lcn/domob/android/ads/InterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/InterstitialAd$BorderType;

    .line 23
    iput-object v2, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object v2, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->a(Z)V

    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->b(Z)V

    .line 36
    :cond_0
    sget-object v0, Lcn/domob/android/ads/AdView$a;->c:Lcn/domob/android/ads/AdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/s;->b:I

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-boolean v1, p0, Lcn/domob/android/ads/s;->p:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    .line 22
    sget-object v0, Lcn/domob/android/ads/InterstitialAd$BorderType;->Black:Lcn/domob/android/ads/InterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/InterstitialAd$BorderType;

    .line 23
    iput-object v2, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object v2, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->a(Z)V

    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->b(Z)V

    .line 59
    :cond_0
    sget-object v0, Lcn/domob/android/ads/AdView$a;->c:Lcn/domob/android/ads/AdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/s;->b:I

    .line 60
    iput-object p5, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    .line 61
    iput p6, p0, Lcn/domob/android/ads/s;->x:I

    .line 62
    iput p7, p0, Lcn/domob/android/ads/s;->y:I

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/InterstitialAd$BorderType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-boolean v1, p0, Lcn/domob/android/ads/s;->p:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    .line 22
    sget-object v0, Lcn/domob/android/ads/InterstitialAd$BorderType;->Black:Lcn/domob/android/ads/InterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/InterstitialAd$BorderType;

    .line 23
    iput-object v2, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object v2, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->a(Z)V

    .line 44
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->b(Z)V

    .line 47
    :cond_0
    sget-object v0, Lcn/domob/android/ads/AdView$a;->c:Lcn/domob/android/ads/AdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/s;->b:I

    .line 48
    iput-object p5, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/InterstitialAd$BorderType;

    .line 49
    return-void
.end method

.method private u()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->B()Lcn/domob/android/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcn/domob/android/ads/InterstitialAdListener;Lcn/domob/android/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 186
    iput-object p2, p0, Lcn/domob/android/ads/s;->s:Lcn/domob/android/ads/InterstitialAd;

    .line 187
    iput-object p1, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    .line 188
    return-void
.end method

.method protected a(Lcn/domob/android/ads/g;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x1

    .line 76
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->B()Lcn/domob/android/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->t()Z

    move-result v1

    .line 78
    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->u()[I

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->v()F

    move-result v3

    .line 80
    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->x()F

    move-result v4

    .line 81
    iget-object v5, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    iput-object p1, v5, Lcn/domob/android/ads/b;->b:Landroid/content/Context;

    .line 83
    iget-object v5, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 84
    iput v6, p0, Lcn/domob/android/ads/s;->i:I

    .line 85
    iput v6, p0, Lcn/domob/android/ads/s;->j:I

    .line 87
    :cond_0
    new-instance v5, Lcn/domob/android/ads/t$a;

    invoke-direct {v5, p1}, Lcn/domob/android/ads/t$a;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcn/domob/android/ads/s;->i:I

    iget v7, p0, Lcn/domob/android/ads/s;->j:I

    invoke-virtual {v5, v6, v7}, Lcn/domob/android/ads/t$a;->a(II)Lcn/domob/android/ads/t$a;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcn/domob/android/ads/t$a;->c(Z)Lcn/domob/android/ads/t$a;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/InterstitialAd$BorderType;

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/t$a;->a(Lcn/domob/android/ads/InterstitialAd$BorderType;)Lcn/domob/android/ads/t$a;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/t$a;->a(Landroid/graphics/drawable/Drawable;)Lcn/domob/android/ads/t$a;

    move-result-object v5

    iget v6, p0, Lcn/domob/android/ads/s;->x:I

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/t$a;->a(I)Lcn/domob/android/ads/t$a;

    move-result-object v5

    iget v6, p0, Lcn/domob/android/ads/s;->y:I

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/t$a;->b(I)Lcn/domob/android/ads/t$a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/domob/android/ads/t$a;->a(Z)Lcn/domob/android/ads/t$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/t$a;->a([I)Lcn/domob/android/ads/t$a;

    move-result-object v1

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->w()Z

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/t$a;->a(ZF)Lcn/domob/android/ads/t$a;

    move-result-object v1

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->y()Z

    move-result v0

    invoke-virtual {v1, v0, v4}, Lcn/domob/android/ads/t$a;->b(ZF)Lcn/domob/android/ads/t$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcn/domob/android/ads/t$a;->b(Z)Lcn/domob/android/ads/t$a;

    move-result-object v0

    new-instance v1, Lcn/domob/android/ads/s$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/s$1;-><init>(Lcn/domob/android/ads/s;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/t$a;->a(Lcn/domob/android/ads/t$b;)Lcn/domob/android/ads/t$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/s;->u:Lcn/domob/android/ads/t$a;

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/s;->u:Lcn/domob/android/ads/t$a;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/t$a;->a(Landroid/view/View;)V

    .line 113
    iput-boolean v8, p0, Lcn/domob/android/ads/s;->q:Z

    .line 114
    sget-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "the ad is showing and change mIsAdShow to true"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected b(Lcn/domob/android/ads/g;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/domob/android/ads/s;->u:Lcn/domob/android/ads/t$a;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/domob/android/ads/s;->u:Lcn/domob/android/ads/t$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/t$a;->a()V

    .line 166
    :cond_0
    return-void
.end method

.method m()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p0}, Lcn/domob/android/ads/AdView;->setAdEventListener(Lcn/domob/android/ads/AdEventListener;)V

    .line 68
    invoke-super {p0}, Lcn/domob/android/ads/AdView;->requestRefreshAd()V

    .line 69
    return-void
.end method

.method n()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcn/domob/android/ads/s;->p:Z

    return v0
.end method

.method protected o()V
    .locals 6

    .prologue
    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/s;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->d()V

    .line 119
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/InterstitialAdListener;->onInterstitialAdPresent()V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/s;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    iget-object v1, p0, Lcn/domob/android/ads/s;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->c()Lcn/domob/android/ads/e;

    move-result-object v1

    const-string/jumbo v2, "s"

    const-string/jumbo v3, "s"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/lang/String;Ljava/lang/String;J)V

    .line 126
    :cond_1
    return-void
.end method

.method public onAdClicked(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 236
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/s;->s:Lcn/domob/android/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify user clicks on the interstitial or feeds ad."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    iget-object v1, p0, Lcn/domob/android/ads/s;->s:Lcn/domob/android/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/InterstitialAdListener;->onInterstitialAdClicked(Lcn/domob/android/ads/InterstitialAd;)V

    .line 240
    :cond_0
    return-void
.end method

.method public onAdFailed(Lcn/domob/android/ads/AdView;Lcn/domob/android/ads/AdManager$ErrorCode;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;
    .param p2, "code"    # Lcn/domob/android/ads/AdManager$ErrorCode;

    .prologue
    .line 204
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify interstitial or feeds ad failed."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    invoke-interface {v0, p2}, Lcn/domob/android/ads/InterstitialAdListener;->onInterstitialAdFailed(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onAdOverlayDismissed(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 220
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify interstitial or feeds ad landing page close."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/InterstitialAdListener;->onLandingPageClose()V

    .line 224
    :cond_0
    return-void
.end method

.method public onAdOverlayPresented(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 212
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify interstitial or feeds ad landing page open."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/InterstitialAdListener;->onLandingPageOpen()V

    .line 216
    :cond_0
    return-void
.end method

.method public onAdRequiresCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    iget-object v0, v0, Lcn/domob/android/ads/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public onAdReturned(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->p:Z

    .line 193
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify interstitial or feeds ad ready."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    .line 197
    sget-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    const-string v1, "ad already received and change show status to false"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/InterstitialAdListener;->onInterstitialAdReady()V

    .line 200
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 228
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcn/domob/android/ads/s;->r:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify interstitial or feeds ad leaving application."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/InterstitialAdListener;->onInterstitialAdLeaveApplication()V

    .line 232
    :cond_0
    return-void
.end method

.method protected p()V
    .locals 6

    .prologue
    .line 129
    invoke-direct {p0}, Lcn/domob/android/ads/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    iget-object v1, p0, Lcn/domob/android/ads/s;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->c()Lcn/domob/android/ads/e;

    move-result-object v1

    const-string v2, "m"

    const-string/jumbo v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v4}, Lcn/domob/android/ads/b;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 6

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->p:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/s;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->e()V

    .line 139
    invoke-direct {p0}, Lcn/domob/android/ads/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    iget-object v1, p0, Lcn/domob/android/ads/s;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->c()Lcn/domob/android/ads/e;

    move-result-object v1

    const-string v2, "f"

    const-string/jumbo v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v4}, Lcn/domob/android/ads/b;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/lang/String;Ljava/lang/String;J)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/InterstitialAdListener;->onInterstitialAdDismiss()V

    .line 146
    :cond_1
    return-void
.end method

.method r()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/s;->p:Z

    return v0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    return v0
.end method

.method t()Lcn/domob/android/ads/InterstitialAdListener;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/InterstitialAdListener;

    return-object v0
.end method
