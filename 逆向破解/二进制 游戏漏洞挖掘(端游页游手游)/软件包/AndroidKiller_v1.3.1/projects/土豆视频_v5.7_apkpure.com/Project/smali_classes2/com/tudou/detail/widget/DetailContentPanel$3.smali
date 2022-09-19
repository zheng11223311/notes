.class Lcom/tudou/detail/widget/DetailContentPanel$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DetailContentPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/DetailContentPanel;->showPlaylist()V
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
    .line 454
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailContentPanel$3;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 459
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$3;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$3;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionEnd(Lcom/tudou/ui/activity/DetailActivity;Z)V

    .line 460
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$3;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->access$202(Lcom/tudou/detail/widget/DetailContentPanel;Z)Z

    .line 461
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 465
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 466
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$3;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$3;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionStart(Lcom/tudou/ui/activity/DetailActivity;Z)V

    .line 467
    return-void
.end method
