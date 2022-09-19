.class Lcom/tudou/detail/widget/DetailContentPanel$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DetailContentPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/DetailContentPanel;->hidePlayList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/DetailContentPanel;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/DetailContentPanel;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailContentPanel$5;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 531
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 532
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$5;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v0, v2}, Lcom/tudou/detail/widget/DetailContentPanel;->access$202(Lcom/tudou/detail/widget/DetailContentPanel;Z)Z

    .line 533
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$5;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$5;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1, v0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionEnd(Lcom/tudou/ui/activity/DetailActivity;Z)V

    .line 534
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 539
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$5;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$5;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionStart(Lcom/tudou/ui/activity/DetailActivity;Z)V

    .line 540
    return-void
.end method
