.class public abstract Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
.super Ljava/lang/Object;
.source "BaseDanmakuParser.java"


# instance fields
.field protected mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field protected mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/parser/IDataSource",
            "<*>;"
        }
    .end annotation
.end field

.field protected mDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

.field protected mDispDensity:F

.field protected mDispHeight:I

.field protected mDispWidth:I

.field protected mScaledDensity:F

.field protected mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doParse(Lorg/json/JSONArray;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
.end method

.method public abstract doParsed(Ljava/util/ArrayList;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/Danmakus;"
        }
    .end annotation
.end method

.method public getDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 94
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->resetDurationsData()V

    .line 91
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->parse()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 92
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->releaseDataSource()V

    .line 93
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 94
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    goto :goto_0
.end method

.method public getDisplayer()Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    return-object v0
.end method

.method public getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method protected getViewportSizeFactor()F
    .locals 3

    .prologue
    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispDensity:F

    const v2, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public load(Lmaster/flame/danmaku/danmaku/parser/IDataSource;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/parser/IDataSource",
            "<*>;)",
            "Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "source":Lmaster/flame/danmaku/danmaku/parser/IDataSource;, "Lmaster/flame/danmaku/danmaku/parser/IDataSource<*>;"
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    .line 75
    return-object p0
.end method

.method protected abstract parse()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end method

.method public release()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->releaseDataSource()V

    .line 115
    return-void
.end method

.method protected releaseDataSource()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/parser/IDataSource;->release()V

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    .line 101
    return-void
.end method

.method public setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 0
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 118
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 119
    return-object p0
.end method

.method public abstract setDefaultDrawale(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
.end method

.method public setDisplayer(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 4
    .param p1, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .prologue
    .line 51
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 52
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispWidth:I

    .line 53
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispHeight:I

    .line 54
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getDensity()F

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispDensity:F

    .line 55
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getScaledDensity()F

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mScaledDensity:F

    .line 56
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget v1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispHeight:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getViewportSizeFactor()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateViewportState(FFF)Z

    .line 57
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 58
    return-object p0
.end method

.method public abstract setTextSize(I)V
.end method

.method public setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 0
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .prologue
    .line 79
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 80
    return-object p0
.end method
