.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;
.super Ljava/lang/Object;
.source "FullscreenRecomendView.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->fetchData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

.field final synthetic val$currentVid:Ljava/lang/String;

.field final synthetic val$tModel:Lcom/tudou/detail/DetailModel;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;Lcom/tudou/detail/DetailModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->val$tModel:Lcom/tudou/detail/DetailModel;

    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->val$currentVid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoDetailGetted(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 139
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoDetailGetted success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-static {p3}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v0

    .line 142
    .local v0, "tType":Lcom/tudou/android/Youku$VideoType;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->val$tModel:Lcom/tudou/detail/DetailModel;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->val$currentVid:Ljava/lang/String;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2$1;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;)V

    invoke-virtual {v1, p3, v2, v0, v3}, Lcom/tudou/detail/DetailModel;->getRecommendAsyn(Lcom/youku/vo/NewVideoDetail;Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;)V

    .line 157
    .end local v0    # "tType":Lcom/tudou/android/Youku$VideoType;
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->showLoading(ZZ)V

    goto :goto_0
.end method
