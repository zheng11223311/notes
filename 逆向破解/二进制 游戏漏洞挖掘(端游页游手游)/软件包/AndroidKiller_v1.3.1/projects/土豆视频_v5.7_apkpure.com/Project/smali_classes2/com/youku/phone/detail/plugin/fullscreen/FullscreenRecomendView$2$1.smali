.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2$1;
.super Ljava/lang/Object;
.source "FullscreenRecomendView.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->onVideoDetailGetted(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoRecommendGetted(ZLcom/youku/vo/DetailRecomment;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "recommend"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    const/4 v2, 0x0

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    invoke-virtual {v0, v2, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->showLoading(ZZ)V

    .line 147
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    invoke-virtual {v0, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->setRecommend(Lcom/youku/vo/DetailRecomment;)V

    .line 148
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->initialize()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->showLoading(ZZ)V

    goto :goto_0
.end method
