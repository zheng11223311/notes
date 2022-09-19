.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;
.super Ljava/lang/Object;
.source "FullscreenRecomendView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;

.field final synthetic val$tActivity:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 236
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;)Lcom/youku/vo/DetailRecomment;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;

    iget v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    .line 237
    .local v1, "video":Lcom/youku/vo/RelatedVideo;
    iget-object v2, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v3, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/tudou/ui/activity/DetailActivity;->goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "\u63a8\u8350"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.detail_player.playlistvideoclick.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;

    iget v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 243
    return-void

    .line 242
    :cond_1
    iget-object v2, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    goto :goto_0
.end method
