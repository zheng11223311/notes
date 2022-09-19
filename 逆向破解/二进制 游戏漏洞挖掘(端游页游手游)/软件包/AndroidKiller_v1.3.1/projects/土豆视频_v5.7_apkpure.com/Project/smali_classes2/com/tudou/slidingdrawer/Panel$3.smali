.class Lcom/tudou/slidingdrawer/Panel$3;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/slidingdrawer/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/slidingdrawer/Panel;


# direct methods
.method constructor <init>(Lcom/tudou/slidingdrawer/Panel;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/tudou/slidingdrawer/Panel$3;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0x8

    .line 468
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$3;->this$0:Lcom/tudou/slidingdrawer/Panel;

    sget-object v1, Lcom/tudou/slidingdrawer/Panel$State;->READY:Lcom/tudou/slidingdrawer/Panel$State;

    invoke-static {v0, v1}, Lcom/tudou/slidingdrawer/Panel;->access$702(Lcom/tudou/slidingdrawer/Panel;Lcom/tudou/slidingdrawer/Panel$State;)Lcom/tudou/slidingdrawer/Panel$State;

    .line 469
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$3;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$800(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$3;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$000(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 471
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$3;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$000(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$3;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v0}, Lcom/tudou/slidingdrawer/Panel;->access$1400(Lcom/tudou/slidingdrawer/Panel;)V

    .line 475
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 478
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel$3;->this$0:Lcom/tudou/slidingdrawer/Panel;

    sget-object v1, Lcom/tudou/slidingdrawer/Panel$State;->ANIMATING:Lcom/tudou/slidingdrawer/Panel$State;

    invoke-static {v0, v1}, Lcom/tudou/slidingdrawer/Panel;->access$702(Lcom/tudou/slidingdrawer/Panel;Lcom/tudou/slidingdrawer/Panel$State;)Lcom/tudou/slidingdrawer/Panel$State;

    .line 482
    return-void
.end method
