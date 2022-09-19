.class Lmaster/flame/danmaku/danmaku/model/android/Danmakus$TimeComparator;
.super Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
.source "Danmakus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Z)V
    .locals 0
    .param p2, "duplicateMergingEnabled"    # Z

    .prologue
    .line 340
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$TimeComparator;->this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 341
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;-><init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Z)V

    .line 342
    return-void
.end method


# virtual methods
.method public compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 1
    .param p1, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;->compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v0

    return v0
.end method
