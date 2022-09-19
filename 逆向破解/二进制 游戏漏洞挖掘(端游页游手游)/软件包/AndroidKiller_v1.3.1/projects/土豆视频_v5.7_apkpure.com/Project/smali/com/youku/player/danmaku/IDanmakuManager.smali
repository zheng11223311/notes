.class public interface abstract Lcom/youku/player/danmaku/IDanmakuManager;
.super Ljava/lang/Object;
.source "IDanmakuManager.java"


# virtual methods
.method public abstract addDanmaku(Ljava/lang/String;)V
.end method

.method public abstract addDanmaku(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract beginDanmaku(Ljava/lang/String;I)V
.end method

.method public abstract closeCMSDanmaku()V
.end method

.method public abstract closeDanmaku()V
.end method

.method public abstract continueDanmaku()V
.end method

.method public abstract getDanmakuCount(Ljava/lang/String;)I
.end method

.method public abstract handleDanmakuEnable(Z)V
.end method

.method public abstract handleDanmakuInfo(Ljava/lang/String;II)V
.end method

.method public abstract hideDanmaku()V
.end method

.method public abstract hideDanmakuAgain()V
.end method

.method public abstract hideDanmakuWhenOpen()V
.end method

.method public abstract hideDanmakuWhenRotate()V
.end method

.method public abstract isDanmakuClosed()Z
.end method

.method public abstract isHls()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract onPositionChanged(I)V
.end method

.method public abstract openDanmaku()V
.end method

.method public abstract pauseDanmaku()V
.end method

.method public abstract releaseDanmaku()V
.end method

.method public abstract releaseDanmakuWhenDestroy()V
.end method

.method public abstract resetAndReleaseDanmakuInfo()V
.end method

.method public abstract resetDanmakuInfo()V
.end method

.method public abstract resumeDanmaku()V
.end method

.method public abstract seekToDanmaku(I)V
.end method

.method public abstract sendDanmaku(IIILjava/lang/String;)V
.end method

.method public abstract sendDanmaku(ILjava/lang/String;)V
.end method

.method public abstract setDanmakuEffect(I)V
.end method

.method public abstract setDanmakuPosition(I)V
.end method

.method public abstract setDanmakuPreferences(ZLjava/lang/String;)V
.end method

.method public abstract setDanmakuTextScale(Z)V
.end method

.method public abstract setDanmakuVisibleWhenLive()V
.end method

.method public abstract setVid(Ljava/lang/String;I)V
.end method

.method public abstract showDanmaku()V
.end method

.method public abstract showDanmakuWhenRotate()V
.end method

.method public abstract startLiveDanmaku()V
.end method
