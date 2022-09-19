.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;
.super Ljava/lang/Object;
.source "FullscreenHotseat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V
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
    .line 315
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->mEvaluator:Landroid/animation/FloatEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 322
    .local v3, "fraction":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 323
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 324
    .local v5, "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v7, v11

    .line 325
    .local v7, "startX":F
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->getX()F

    move-result v11

    const/high16 v12, 0x42300000    # 44.0f

    invoke-static {v12}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v12

    int-to-float v12, v12

    sub-float v1, v11, v12

    .line 327
    .local v1, "endX":F
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v11

    .line 328
    .local v8, "startY":F
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->getY()F

    move-result v12

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    add-float v2, v12, v11

    .line 330
    .local v2, "endY":F
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->mEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11, v3, v12, v13}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 331
    .local v9, "x":F
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->mEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11, v3, v12, v13}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 332
    .local v10, "y":F
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->mEvaluator:Landroid/animation/FloatEvaluator;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v3, v12, v13}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 334
    .local v0, "alpha":F
    invoke-virtual {v5, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setAlpha(F)V

    .line 335
    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 336
    .local v6, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    float-to-int v11, v9

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 337
    float-to-int v11, v10

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 339
    .end local v0    # "alpha":F
    .end local v1    # "endX":F
    .end local v2    # "endY":F
    .end local v5    # "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    .end local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "startX":F
    .end local v8    # "startY":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_0
    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$500(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 340
    return-void
.end method
