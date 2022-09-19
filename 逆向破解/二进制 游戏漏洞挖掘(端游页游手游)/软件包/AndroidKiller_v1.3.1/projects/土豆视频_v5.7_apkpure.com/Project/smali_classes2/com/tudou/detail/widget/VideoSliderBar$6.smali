.class Lcom/tudou/detail/widget/VideoSliderBar$6;
.super Ljava/lang/Object;
.source "VideoSliderBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSliderBar;->showDiggedAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSliderBar;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSliderBar;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar$6;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoSliderBar$6;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$6;->val$text:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 343
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$6;->val$text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    return-void
.end method
