.class Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosComparator;
.super Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
.source "Danmakus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YPosComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Z)V
    .locals 0
    .param p2, "duplicateMergingEnabled"    # Z

    .prologue
    .line 352
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosComparator;->this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 353
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;-><init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Z)V

    .line 354
    return-void
.end method


# virtual methods
.method public compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 2
    .param p1, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 358
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosComparator;->mDuplicateMergingEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->isDuplicate(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v0

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method
