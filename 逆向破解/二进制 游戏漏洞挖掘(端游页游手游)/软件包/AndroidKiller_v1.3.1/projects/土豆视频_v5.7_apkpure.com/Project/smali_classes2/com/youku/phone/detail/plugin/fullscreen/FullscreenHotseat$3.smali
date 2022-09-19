.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$3;
.super Ljava/lang/Object;
.source "FullscreenHotseat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->expand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/FloatEvaluator;

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V
    .locals 1

    .prologue
    .line 202
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$3;->mEvaluator:Landroid/animation/FloatEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 208
    .local v1, "fraction":F
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$3;->mEvaluator:Landroid/animation/FloatEvaluator;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 209
    .local v0, "angle":F
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setRotation(F)V

    .line 210
    return-void
.end method
