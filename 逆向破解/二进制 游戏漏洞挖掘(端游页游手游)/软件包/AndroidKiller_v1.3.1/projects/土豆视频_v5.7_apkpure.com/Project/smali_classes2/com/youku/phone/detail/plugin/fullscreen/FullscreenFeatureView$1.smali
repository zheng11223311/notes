.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;
.super Ljava/lang/Object;
.source "FullscreenFeatureView.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFeatureGetted(ZLcom/tudou/detail/vo/DetailFeature;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    if-eqz p1, :cond_2

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v0, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->setFeature(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 113
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->initialize()V

    .line 114
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v0, v1, v1, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->showLoading(ZZZ)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v0, v1, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->showLoading(ZZZ)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v0, v1, v2, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->showLoading(ZZZ)V

    goto :goto_0
.end method
