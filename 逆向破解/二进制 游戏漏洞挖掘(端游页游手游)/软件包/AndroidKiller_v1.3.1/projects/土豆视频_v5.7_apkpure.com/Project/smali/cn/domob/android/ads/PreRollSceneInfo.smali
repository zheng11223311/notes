.class public Lcn/domob/android/ads/PreRollSceneInfo;
.super Lcn/domob/android/ads/SceneInfo;
.source "SourceFile"


# static fields
.field private static final b:I = 0xa

.field private static final c:I = 0xa


# instance fields
.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Lcn/domob/android/ads/SceneInfo;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->f:Z

    .line 14
    iput-boolean v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->g:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->h:Z

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->h:Z

    return v0
.end method

.method protected b()I
    .locals 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->f:Z

    if-eqz v0, :cond_0

    .line 40
    iget v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->d:I

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/PreRollSceneInfo;->e()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method protected c()I
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->g:Z

    if-eqz v0, :cond_0

    .line 59
    iget v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->e:I

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/PreRollSceneInfo;->e()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public setCountdownCoordinatesX(I)V
    .locals 1
    .param p1, "coordinatesX"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->f:Z

    .line 51
    iput p1, p0, Lcn/domob/android/ads/PreRollSceneInfo;->d:I

    .line 52
    return-void
.end method

.method public setCountdownCoordinatesY(I)V
    .locals 1
    .param p1, "coordinatesY"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/PreRollSceneInfo;->g:Z

    .line 70
    iput p1, p0, Lcn/domob/android/ads/PreRollSceneInfo;->e:I

    .line 71
    return-void
.end method

.method public setWhetherToAddCountdown(Z)V
    .locals 0
    .param p1, "addCountdown"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcn/domob/android/ads/PreRollSceneInfo;->h:Z

    .line 33
    return-void
.end method
