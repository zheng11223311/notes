.class Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/slidingdrawer/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/tudou/slidingdrawer/Panel;


# direct methods
.method constructor <init>(Lcom/tudou/slidingdrawer/Panel;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 511
    const-string v0, "Panel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDown==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v4}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollX:F

    .line 513
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v0

    sget-object v3, Lcom/tudou/slidingdrawer/Panel$State;->READY:Lcom/tudou/slidingdrawer/Panel$State;

    if-eq v0, v3, :cond_0

    .line 524
    :goto_0
    return v2

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    sget-object v3, Lcom/tudou/slidingdrawer/Panel$State;->ABOUT_TO_ANIMATE:Lcom/tudou/slidingdrawer/Panel$State;

    invoke-static {v0, v3}, Lcom/tudou/slidingdrawer/Panel;->access$702(Lcom/tudou/slidingdrawer/Panel;Lcom/tudou/slidingdrawer/Panel$State;)Lcom/tudou/slidingdrawer/Panel$State;

    .line 518
    iget-object v3, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$000(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/tudou/slidingdrawer/Panel;->access$802(Lcom/tudou/slidingdrawer/Panel;Z)Z

    .line 519
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$800(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$000(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move v2, v1

    .line 524
    goto :goto_0

    :cond_2
    move v0, v2

    .line 518
    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x43480000    # 200.0f

    .line 529
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    sget-object v1, Lcom/tudou/slidingdrawer/Panel$State;->FLYING:Lcom/tudou/slidingdrawer/Panel$State;

    invoke-static {v0, v1}, Lcom/tudou/slidingdrawer/Panel;->access$702(Lcom/tudou/slidingdrawer/Panel;Lcom/tudou/slidingdrawer/Panel$State;)Lcom/tudou/slidingdrawer/Panel$State;

    .line 530
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v1}, Lcom/tudou/slidingdrawer/Panel;->access$100(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .end local p4    # "velocityY":F
    :goto_0
    invoke-static {v0, p4}, Lcom/tudou/slidingdrawer/Panel;->access$902(Lcom/tudou/slidingdrawer/Panel;F)F

    .line 531
    const-string v0, "Panel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2}, Lcom/tudou/slidingdrawer/Panel;->access$900(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$900(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0, v3}, Lcom/tudou/slidingdrawer/Panel;->access$902(Lcom/tudou/slidingdrawer/Panel;F)F

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v1, v1, Lcom/tudou/slidingdrawer/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tudou/slidingdrawer/Panel;->post(Ljava/lang/Runnable;)Z

    .line 536
    return v4

    .restart local p4    # "velocityY":F
    :cond_1
    move p4, p3

    .line 530
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 540
    const-string v0, "Panel"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 546
    const-string v2, "Panel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScroll:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    sget-object v3, Lcom/tudou/slidingdrawer/Panel$State;->TRACKING:Lcom/tudou/slidingdrawer/Panel$State;

    invoke-static {v2, v3}, Lcom/tudou/slidingdrawer/Panel;->access$702(Lcom/tudou/slidingdrawer/Panel;Lcom/tudou/slidingdrawer/Panel$State;)Lcom/tudou/slidingdrawer/Panel$State;

    .line 548
    const/4 v1, 0x0

    .local v1, "tmpY":F
    const/4 v0, 0x0

    .line 549
    .local v0, "tmpX":F
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2}, Lcom/tudou/slidingdrawer/Panel;->access$100(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 550
    iget v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollY:F

    .line 551
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v2

    if-nez v2, :cond_2

    .line 552
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget v3, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v4}, Lcom/tudou/slidingdrawer/Panel;->access$400(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/slidingdrawer/Panel;->access$1700(Lcom/tudou/slidingdrawer/Panel;FII)F

    move-result v1

    .line 564
    :goto_0
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2}, Lcom/tudou/slidingdrawer/Panel;->access$1300(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2}, Lcom/tudou/slidingdrawer/Panel;->access$1000(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2, v0}, Lcom/tudou/slidingdrawer/Panel;->access$1302(Lcom/tudou/slidingdrawer/Panel;F)F

    .line 566
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2, v1}, Lcom/tudou/slidingdrawer/Panel;->access$1002(Lcom/tudou/slidingdrawer/Panel;F)F

    .line 567
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-virtual {v2}, Lcom/tudou/slidingdrawer/Panel;->invalidate()V

    .line 569
    :cond_1
    return v6

    .line 554
    :cond_2
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget v3, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v4}, Lcom/tudou/slidingdrawer/Panel;->access$400(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/tudou/slidingdrawer/Panel;->access$1700(Lcom/tudou/slidingdrawer/Panel;FII)F

    move-result v1

    goto :goto_0

    .line 557
    :cond_3
    iget v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollX:F

    .line 558
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 559
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget v3, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v4}, Lcom/tudou/slidingdrawer/Panel;->access$300(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/slidingdrawer/Panel;->access$1700(Lcom/tudou/slidingdrawer/Panel;FII)F

    move-result v0

    goto :goto_0

    .line 561
    :cond_4
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget v3, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v4}, Lcom/tudou/slidingdrawer/Panel;->access$300(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/tudou/slidingdrawer/Panel;->access$1700(Lcom/tudou/slidingdrawer/Panel;FII)F

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 573
    const-string v0, "Panel"

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 578
    const-string v0, "Panel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v2}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v0

    sget-object v1, Lcom/tudou/slidingdrawer/Panel$State;->ABOUT_TO_ANIMATE:Lcom/tudou/slidingdrawer/Panel$State;

    if-eq v0, v1, :cond_0

    .line 584
    :goto_0
    return v3

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v1, v1, Lcom/tudou/slidingdrawer/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tudou/slidingdrawer/Panel;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setScroll(II)V
    .locals 1
    .param p1, "initScrollX"    # I
    .param p2, "initScrollY"    # I

    .prologue
    .line 506
    int-to-float v0, p1

    iput v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollX:F

    .line 507
    int-to-float v0, p2

    iput v0, p0, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->scrollY:F

    .line 508
    return-void
.end method
