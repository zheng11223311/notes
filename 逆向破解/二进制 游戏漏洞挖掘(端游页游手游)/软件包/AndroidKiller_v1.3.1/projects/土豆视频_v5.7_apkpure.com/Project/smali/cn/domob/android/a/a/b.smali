.class public Lcn/domob/android/a/a/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/a/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcn/domob/android/ads/c/f;


# instance fields
.field private b:Lcn/domob/android/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/a/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/a/b;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/a/a/b$a;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcn/domob/android/a/a/b;->b:Lcn/domob/android/a/a/b$a;

    .line 21
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 61
    sget-object v0, Lcn/domob/android/a/a/b;->a:Lcn/domob/android/ads/c/f;

    const-string v1, " DetachedFromWindow"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 38
    sget-object v0, Lcn/domob/android/a/a/b;->a:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WindowFocusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 52
    iget-object v0, p0, Lcn/domob/android/a/a/b;->b:Lcn/domob/android/a/a/b$a;

    if-eqz v0, :cond_0

    .line 53
    iget-object v3, p0, Lcn/domob/android/a/a/b;->b:Lcn/domob/android/a/a/b$a;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcn/domob/android/a/a/b$a;->a(Z)V

    .line 55
    :cond_0
    sget-object v0, Lcn/domob/android/a/a/b;->a:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WindowVisibilityChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 56
    return-void

    :cond_1
    move v0, v2

    .line 53
    goto :goto_0

    :cond_2
    move v1, v2

    .line 55
    goto :goto_1
.end method
