.class Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
.super Ljava/lang/Object;
.source "Danmakus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDuplicateMergingEnable:Z

.field final synthetic this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Z)V
    .locals 0
    .param p2, "duplicateMergingEnabled"    # Z

    .prologue
    .line 320
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;->this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-virtual {p0, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;->setDuplicateMergingEnabled(Z)V

    .line 322
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;->compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v0

    return v0
.end method

.method public compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 1
    .param p1, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 330
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;->mDuplicateMergingEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->isDuplicate(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v0

    goto :goto_0
.end method

.method public setDuplicateMergingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;->mDuplicateMergingEnable:Z

    .line 326
    return-void
.end method
