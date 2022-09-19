.class Lcom/tudou/ui/fragment/SplashFragment$GestureListener;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashFragment;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    .line 745
    const-string v0, "500"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return v8

    .line 747
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$4200(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 749
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$4200(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$2400(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$2400(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const-wide/16 v2, 0x320

    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SplashFragment;->starPushMiddleEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tudou/ui/fragment/SplashFragment;->access$4300(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 754
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$4400(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, v6, v7, v5}, Lcom/tudou/ui/fragment/SplashFragment;->access$4500(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 755
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$1800(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, v6, v7, v5}, Lcom/tudou/ui/fragment/SplashFragment;->access$4500(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 756
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$2000(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, v6, v7, v5}, Lcom/tudou/ui/fragment/SplashFragment;->access$4500(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 757
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$2200(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SplashFragment;->imageViewAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v1, v6, v7, v2}, Lcom/tudou/ui/fragment/SplashFragment;->access$4500(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 758
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$4600(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 740
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 725
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method
