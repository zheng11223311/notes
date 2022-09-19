.class Lcom/tudou/detail/fragment/VideoCommentFragment$3;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/tudou/detail/adapter/VideoCommentAdapter$OnImageClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;->updateData(Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageClickL(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 306
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    const-string v1, "t1.detail_sdetail.cmtpictureclick"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 307
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pause()V

    .line 310
    :cond_0
    const-string v1, "extra.image.type.net"

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$3$1;

    invoke-direct {v2, p0, v0}, Lcom/tudou/detail/fragment/VideoCommentFragment$3$1;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment$3;Lcom/tudou/ui/activity/DetailActivity;)V

    new-instance v3, Lcom/tudou/detail/fragment/VideoCommentFragment$3$2;

    invoke-direct {v3, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$3$2;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment$3;)V

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->showImgFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method
