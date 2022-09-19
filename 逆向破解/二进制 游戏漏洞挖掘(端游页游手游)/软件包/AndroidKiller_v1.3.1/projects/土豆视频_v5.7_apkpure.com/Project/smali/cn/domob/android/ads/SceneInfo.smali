.class public Lcn/domob/android/ads/SceneInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:I = 0x20


# instance fields
.field protected a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/view/ViewGroup;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/domob/android/ads/SceneInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/SceneInfo;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected f()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/domob/android/ads/SceneInfo;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcn/domob/android/ads/SceneInfo;->e:I

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcn/domob/android/ads/SceneInfo;->f:I

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcn/domob/android/ads/SceneInfo;->g:I

    return v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcn/domob/android/ads/SceneInfo;->h:I

    return v0
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcn/domob/android/ads/SceneInfo;->a:I

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/domob/android/ads/SceneInfo;->b:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public setCoordinatesX(I)V
    .locals 0
    .param p1, "coordinatesX"    # I

    .prologue
    .line 85
    iput p1, p0, Lcn/domob/android/ads/SceneInfo;->e:I

    .line 86
    return-void
.end method

.method public setCoordinatesY(I)V
    .locals 0
    .param p1, "coordinatesY"    # I

    .prologue
    .line 99
    iput p1, p0, Lcn/domob/android/ads/SceneInfo;->f:I

    .line 100
    return-void
.end method

.method public setParentViewGroup(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parentViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    iput-object p1, p0, Lcn/domob/android/ads/SceneInfo;->c:Landroid/view/ViewGroup;

    .line 72
    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x20

    .line 36
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v4, :cond_0

    .line 37
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "scene id maximum length is limited to %d bytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/SceneInfo;->d:Ljava/lang/String;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-object p1, p0, Lcn/domob/android/ads/SceneInfo;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSecureAreaHeight(I)V
    .locals 0
    .param p1, "secureAreaHeight"    # I

    .prologue
    .line 127
    iput p1, p0, Lcn/domob/android/ads/SceneInfo;->h:I

    .line 128
    return-void
.end method

.method public setSecureAreaWidth(I)V
    .locals 0
    .param p1, "secureWidth"    # I

    .prologue
    .line 113
    iput p1, p0, Lcn/domob/android/ads/SceneInfo;->g:I

    .line 114
    return-void
.end method
