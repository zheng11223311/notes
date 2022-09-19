.class Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;
.super Ljava/lang/Object;
.source "VideoGoodsNotice.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

.field final synthetic val$endWidth:I

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;II)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->val$startWidth:I

    iput p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->val$endWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 153
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    .line 154
    .local v1, "mEvaluator":Landroid/animation/IntEvaluator;
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 155
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$2;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 185
    return-void

    .line 154
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 149
    return-void
.end method
