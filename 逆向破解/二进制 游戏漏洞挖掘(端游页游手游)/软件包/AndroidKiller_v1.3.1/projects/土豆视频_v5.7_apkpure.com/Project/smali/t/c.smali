.class final Lt/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:Lt/a$a;


# direct methods
.method constructor <init>(Landroid/view/View;ZLt/a$a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lt/c;->b:Landroid/view/View;

    .line 20
    iput-boolean p2, p0, Lt/c;->a:Z

    .line 21
    iput-object p3, p0, Lt/c;->c:Lt/a$a;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x439b0000    # 310.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lt/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    .line 26
    iget-object v0, p0, Lt/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 29
    iget-boolean v0, p0, Lt/c;->a:Z

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Lt/b;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-direct/range {v0 .. v6}, Lt/b;-><init>(FFFFFZ)V

    .line 36
    :goto_0
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lt/b;->setDuration(J)V

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lt/b;->setFillAfter(Z)V

    .line 38
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lt/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 40
    iget-object v1, p0, Lt/c;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    iget-object v0, p0, Lt/c;->c:Lt/a$a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lt/c;->c:Lt/a$a;

    invoke-interface {v0}, Lt/a$a;->a()V

    .line 45
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Lt/b;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct/range {v0 .. v6}, Lt/b;-><init>(FFFFFZ)V

    goto :goto_0
.end method
