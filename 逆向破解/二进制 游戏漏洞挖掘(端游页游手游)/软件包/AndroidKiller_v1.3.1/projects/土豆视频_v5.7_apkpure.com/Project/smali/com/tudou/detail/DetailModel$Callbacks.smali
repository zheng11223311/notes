.class public interface abstract Lcom/tudou/detail/DetailModel$Callbacks;
.super Ljava/lang/Object;
.source "DetailModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/DetailModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract getCurrentVid()Ljava/lang/String;
.end method

.method public abstract onBatteryChanged(III)V
.end method

.method public abstract onBindComments(Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V
.end method

.method public abstract onBindEggs(Lcom/tudou/detail/vo/EasterEggs;)V
.end method

.method public abstract onBindGoodsInfo(ZLcom/tudou/detail/vo/GoodsInfo;)V
.end method

.method public abstract onBindHD(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBindHtml5Bar(ILjava/lang/String;Lcom/tudou/detail/vo/Interactive$Html5;)V
.end method

.method public abstract onBindRecommend(Lcom/youku/vo/DetailRecomment;)V
.end method

.method public abstract onBindSelectnessBar(Ljava/lang/String;Lcom/tudou/detail/vo/Interactive;)V
.end method

.method public abstract onBindSlider(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/SliderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBindSpecialTopic(Ljava/lang/String;Lcom/tudou/detail/vo/Interactive;)V
.end method

.method public abstract onBindVideoActors(ZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/NewVideoDetail$Detail$Actor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBindVideoDetail(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
.end method

.method public abstract onBindVideoFeature(ZLjava/lang/String;Lcom/tudou/detail/vo/DetailFeature;)V
.end method

.method public abstract onBindVideoList(ZLcom/tudou/detail/vo/VideoList;)V
.end method

.method public abstract onBindVideoState(Lcom/tudou/detail/vo/VideoState;)V
.end method

.method public abstract onCreateDownloadTaskComplete(ZLjava/lang/String;)V
.end method

.method public abstract onFinishBinding()V
.end method

.method public abstract onGetNextVideoInfo(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGetVideoFaved(ZZLjava/lang/String;)V
.end method

.method public abstract onHeadsetPlug(ILjava/lang/String;I)V
.end method

.method public abstract setLoadOnVideoChanged()Z
.end method

.method public abstract startBinding(Z)V
.end method
