.class public final Lt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Lt/a$a;


# direct methods
.method private constructor <init>(Landroid/view/View;ZLt/a$a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lt/a;->a:Landroid/view/View;

    .line 21
    iput-boolean p2, p0, Lt/a;->b:Z

    .line 22
    iput-object p3, p0, Lt/a;->c:Lt/a$a;

    .line 23
    return-void
.end method

.method public static a(Landroid/view/View;Lt/a$a;)V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-static {p0, v0, v1, v2, p1}, Lt/a;->a(Landroid/view/View;ZFFLt/a$a;)V

    .line 68
    return-void
.end method

.method private static a(Landroid/view/View;ZFFLt/a$a;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 55
    new-instance v0, Lt/b;

    const/high16 v5, 0x439b0000    # 310.0f

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lt/b;-><init>(FFFFFZ)V

    .line 57
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lt/b;->setDuration(J)V

    .line 58
    invoke-virtual {v0, v6}, Lt/b;->setFillAfter(Z)V

    .line 59
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lt/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 61
    new-instance v1, Lt/a;

    invoke-direct {v1, p0, p1, p4}, Lt/a;-><init>(Landroid/view/View;ZLt/a$a;)V

    invoke-virtual {v0, v1}, Lt/b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    return-void
.end method

.method public static b(Landroid/view/View;Lt/a$a;)V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {p0, v0, v1, v2, p1}, Lt/a;->a(Landroid/view/View;ZFFLt/a$a;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    .line 30
    iget-object v0, p0, Lt/a;->a:Landroid/view/View;

    new-instance v1, Lt/c;

    iget-object v2, p0, Lt/a;->a:Landroid/view/View;

    iget-boolean v3, p0, Lt/a;->b:Z

    iget-object v4, p0, Lt/a;->c:Lt/a$a;

    invoke-direct {v1, v2, v3, v4}, Lt/c;-><init>(Landroid/view/View;ZLt/a$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
