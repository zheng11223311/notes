.class Lcom/tudou/detail/fragment/VideoCommentFragment$14;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/DialogAddComment$OnCommentImgClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;->showAddComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

.field final synthetic val$tActivity:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommentImgClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 825
    const-string v0, "t1.detail_sdetail.sendpictureclcik"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 826
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/DialogAddComment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$502(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->dismiss()V

    .line 829
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pause()V

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-string v1, "extra.image.type.local"

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$14$1;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$14$1;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment$14;)V

    new-instance v3, Lcom/tudou/detail/fragment/VideoCommentFragment$14$2;

    invoke-direct {v3, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$14$2;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment$14;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->showImgFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 850
    return-void
.end method
