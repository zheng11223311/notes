.class public Lcn/domob/android/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/InterstitialAd$BorderType;
    }
.end annotation


# static fields
.field public static final INTERSITIAL_SIZE_300X250:Ljava/lang/String; = "300x250"

.field public static final INTERSITIAL_SIZE_600X500:Ljava/lang/String; = "600x500"

.field public static final INTERSITIAL_SIZE_FULL_SCREEN:Ljava/lang/String;

.field private static a:Lcn/domob/android/ads/c/f;


# instance fields
.field private b:Lcn/domob/android/ads/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/InterstitialAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/InterstitialAd;->a:Lcn/domob/android/ads/c/f;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/InterstitialAd;->INTERSITIAL_SIZE_FULL_SCREEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcn/domob/android/ads/s;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/domob/android/ads/s;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "resId"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v5, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 77
    :goto_0
    new-instance v0, Lcn/domob/android/ads/s;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcn/domob/android/ads/s;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/InterstitialAd$BorderType;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "borderType"    # Lcn/domob/android/ads/InterstitialAd$BorderType;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcn/domob/android/ads/s;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/s;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/InterstitialAd$BorderType;)V

    iput-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    .line 54
    return-void
.end method


# virtual methods
.method public isInterstitialAdReady()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/s;->n()Z

    move-result v0

    return v0
.end method

.method public loadInterstitialAd()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/s;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/s;->m()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/s;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcn/domob/android/ads/InterstitialAd;->a:Lcn/domob/android/ads/c/f;

    sget-object v1, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string/jumbo v2, "the last ad didn\'t show, so please show it before request the next ad"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInterstitialAdListener(Lcn/domob/android/ads/InterstitialAdListener;)V
    .locals 1
    .param p1, "interstitialAdListener"    # Lcn/domob/android/ads/InterstitialAdListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0, p1, p0}, Lcn/domob/android/ads/s;->a(Lcn/domob/android/ads/InterstitialAdListener;Lcn/domob/android/ads/InterstitialAd;)V

    .line 99
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/s;->setKeyword(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/s;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/s;->setUserGender(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/s;->setUserPostcode(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public showInterstitialAd(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/s;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcn/domob/android/ads/InterstitialAd;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Show Interstitial View."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcn/domob/android/ads/InterstitialAd;->b:Lcn/domob/android/ads/s;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/s;->b(Landroid/content/Context;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v0, Lcn/domob/android/ads/InterstitialAd;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Interstial ad is not ready"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
