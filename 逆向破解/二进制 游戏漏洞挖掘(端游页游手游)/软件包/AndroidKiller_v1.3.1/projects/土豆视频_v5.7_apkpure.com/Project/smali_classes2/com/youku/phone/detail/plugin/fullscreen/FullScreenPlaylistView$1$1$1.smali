.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1$1;
.super Ljava/lang/Object;
.source "FullScreenPlaylistView.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;->onVideoDetailGetted(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoListGetted(ZLcom/tudou/detail/vo/VideoList;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    const/4 v4, 0x0

    .line 136
    if-eqz p1, :cond_1

    .line 137
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v2, v4, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->showLoading(ZZ)V

    .line 138
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v2, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->setVideoList(Lcom/tudou/detail/vo/VideoList;)V

    .line 139
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->initialize()V

    .line 140
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 141
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "vid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v2, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->setSelection(Ljava/lang/String;)V

    .line 148
    .end local v0    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    .end local v1    # "vid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->showLoading(ZZ)V

    goto :goto_0
.end method
