.class Lcom/tudou/slidingdrawer/Panel$1;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/slidingdrawer/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initX:I

.field initY:I

.field setInitialPosition:Z

.field final synthetic this$0:Lcom/tudou/slidingdrawer/Panel;


# direct methods
.method constructor <init>(Lcom/tudou/slidingdrawer/Panel;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 315
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 316
    .local v0, "action":I
    if-nez v0, :cond_5

    .line 317
    iput v5, p0, Lcom/tudou/slidingdrawer/Panel$1;->initX:I

    .line 318
    iput v5, p0, Lcom/tudou/slidingdrawer/Panel$1;->initY:I

    .line 319
    iget-object v3, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v3}, Lcom/tudou/slidingdrawer/Panel;->access$000(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 322
    iget-object v3, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v3}, Lcom/tudou/slidingdrawer/Panel;->access$100(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 323
    iget-object v3, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v3}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    iput v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initY:I

    .line 328
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/tudou/slidingdrawer/Panel$1;->setInitialPosition:Z

    .line 344
    :goto_2
    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v1}, Lcom/tudou/slidingdrawer/Panel;->access$600(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    if-ne v0, v2, :cond_1

    .line 347
    const-string v1, "Panel"

    const-string v2, "on-touch  =====action_up"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v1}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v1

    sget-object v2, Lcom/tudou/slidingdrawer/Panel$State;->ANIMATING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v1, v2, :cond_7

    .line 354
    :cond_1
    :goto_3
    return v5

    :cond_2
    move v1, v2

    .line 323
    goto :goto_0

    .line 325
    :cond_3
    iget-object v3, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v3}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :goto_4
    iput v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initX:I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_4

    .line 330
    :cond_5
    iget-boolean v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->setInitialPosition:Z

    if-eqz v1, :cond_6

    .line 332
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initX:I

    iget-object v3, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v3}, Lcom/tudou/slidingdrawer/Panel;->access$300(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initX:I

    .line 333
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initY:I

    iget-object v3, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v3}, Lcom/tudou/slidingdrawer/Panel;->access$400(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initY:I

    .line 335
    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v1}, Lcom/tudou/slidingdrawer/Panel;->access$500(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;

    move-result-object v1

    iget v3, p0, Lcom/tudou/slidingdrawer/Panel$1;->initX:I

    iget v4, p0, Lcom/tudou/slidingdrawer/Panel$1;->initY:I

    invoke-virtual {v1, v3, v4}, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;->setScroll(II)V

    .line 336
    iput-boolean v5, p0, Lcom/tudou/slidingdrawer/Panel$1;->setInitialPosition:Z

    .line 338
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initX:I

    neg-int v1, v1

    iput v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initX:I

    .line 339
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initY:I

    neg-int v1, v1

    iput v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initY:I

    .line 342
    :cond_6
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->initX:I

    int-to-float v1, v1

    iget v3, p0, Lcom/tudou/slidingdrawer/Panel$1;->initY:I

    int-to-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_2

    .line 351
    :cond_7
    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel$1;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v2, v2, Lcom/tudou/slidingdrawer/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/tudou/slidingdrawer/Panel;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method
