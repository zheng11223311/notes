.class public interface abstract Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;
.super Ljava/lang/Object;
.source "PlayhistoryManagerImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/playhistory/PlayhistoryManagerImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayHistoryCallBack"
.end annotation


# virtual methods
.method public abstract onLoadCacheDataFailed(Ljava/lang/String;)V
.end method

.method public abstract onLoadCacheDataSuccess(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLoadLocalDataFailed(Ljava/lang/String;)V
.end method

.method public abstract onLoadLocalDataSuccess(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLoadServerDataFailed(Ljava/lang/String;)V
.end method

.method public abstract onLoadServerDataSuccess(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation
.end method
