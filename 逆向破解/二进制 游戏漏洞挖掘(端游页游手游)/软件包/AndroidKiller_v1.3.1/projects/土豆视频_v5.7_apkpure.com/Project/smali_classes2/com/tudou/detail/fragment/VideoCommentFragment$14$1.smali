.class Lcom/tudou/detail/fragment/VideoCommentFragment$14$1;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment$14;->onCommentImgClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment$14;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showAddComment()V

    .line 836
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 839
    :cond_0
    return-void
.end method
