.class Lcom/tudou/ui/activity/DetailActivity$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$end:Ljava/lang/Runnable;

.field final synthetic val$repeat:Ljava/lang/Runnable;

.field final synthetic val$start:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3663
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$20;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$start:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$repeat:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$end:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3681
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$end:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3682
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$end:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3684
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$repeat:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3675
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$repeat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3677
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$start:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3668
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$20;->val$start:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3670
    :cond_0
    return-void
.end method
