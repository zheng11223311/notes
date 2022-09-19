.class public interface abstract Lcom/youku/player/danmaku/DanmakuUtils;
.super Ljava/lang/Object;
.source "DanmakuUtils.java"


# virtual methods
.method public abstract addDanmaku(Ljava/lang/String;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/youku/player/base/YoukuPlayerView;",
            "Lcom/youku/player/danmaku/DanmakuManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addDanmaku(Lorg/json/JSONObject;Lmaster/flame/danmaku/controller/IDanmakuView;Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lmaster/flame/danmaku/controller/IDanmakuView;",
            "Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract beginDanmaku(Ljava/lang/String;ILcom/youku/player/danmaku/DanmakuManager;Lcom/youku/player/base/YoukuPlayerView;)V
.end method

.method public abstract closeDanmaku(Landroid/content/Context;Lcom/youku/player/danmaku/IDanmakuManager;)V
.end method

.method public abstract createDanmakuLoader()Lmaster/flame/danmaku/danmaku/loader/ILoader;
.end method

.method public abstract createDanmakuParser()Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
.end method

.method public abstract getCurrentMillisecond(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;J)J
.end method

.method public abstract getDanmakuSendColor(I)I
.end method

.method public abstract getFakeJSONArray()Ljava/lang/String;
.end method

.method public abstract getTextSize()I
.end method

.method public abstract hideDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;)V
.end method

.method public abstract hideDanmakuWhenRotate(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
.end method

.method public abstract openDanmaku(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;I)V
.end method

.method public abstract releaseDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
.end method

.method public abstract requestStarImage(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V
.end method

.method public abstract resetAndReleaseDanmakuInfo(Lcom/youku/player/danmaku/IDanmakuManager;Ljava/lang/Boolean;)V
.end method

.method public abstract sendDanmaku(IIILjava/lang/String;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/base/YoukuPlayerView;Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
.end method

.method public abstract setDanmakuContextAndDrawable(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTextSize(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Landroid/content/Context;)V
.end method

.method public abstract showDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;)V
.end method

.method public abstract showDanmakuWhenRotate(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
.end method
