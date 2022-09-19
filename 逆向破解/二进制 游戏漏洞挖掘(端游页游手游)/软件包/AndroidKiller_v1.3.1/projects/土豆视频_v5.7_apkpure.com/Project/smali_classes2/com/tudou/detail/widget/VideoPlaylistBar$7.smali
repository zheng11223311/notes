.class Lcom/tudou/detail/widget/VideoPlaylistBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoPlaylistBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionStart(Lcom/tudou/ui/activity/DetailActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

.field final synthetic val$toPlaylist:Z


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar;Z)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    iput-boolean p2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->val$toPlaylist:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 310
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 311
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$600(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->val$toPlaylist:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$700(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->val$toPlaylist:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$900(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->val$toPlaylist:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$1100(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    move-result-object v3

    iget-boolean v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->val$toPlaylist:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$800(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->val$toPlaylist:Z

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    return-void

    :cond_0
    move v0, v2

    .line 311
    goto :goto_0

    :cond_1
    move v0, v2

    .line 312
    goto :goto_1

    :cond_2
    move v0, v1

    .line 313
    goto :goto_2

    :cond_3
    move v0, v1

    .line 314
    goto :goto_3

    :cond_4
    move v2, v1

    .line 315
    goto :goto_4
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 320
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 321
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$600(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$700(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$900(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-boolean v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->val$toPlaylist:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$1100(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$7;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$800(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_0
    return-void
.end method
