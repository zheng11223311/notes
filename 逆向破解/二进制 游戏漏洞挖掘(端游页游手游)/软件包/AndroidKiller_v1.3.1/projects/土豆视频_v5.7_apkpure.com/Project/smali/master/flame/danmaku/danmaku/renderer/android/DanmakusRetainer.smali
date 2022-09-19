.class public Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;,
        Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;,
        Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;,
        Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;,
        Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;
    }
.end annotation


# instance fields
.field private fbdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

.field private ftdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

.field private lrdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

.field private rldrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 29
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 31
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 33
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->clear()V

    .line 74
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->clear()V

    .line 77
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->clear()V

    .line 80
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->clear()V

    .line 83
    :cond_3
    return-void
.end method

.method public fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p3, "verifier"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    .line 38
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :pswitch_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;

    invoke-direct {v1, v2, v2}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 43
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v1, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-nez v1, :cond_1

    .line 47
    new-instance v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;

    invoke-direct {v1, v2, v2}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 49
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v1, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-nez v1, :cond_2

    .line 53
    new-instance v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;

    invoke-direct {v1, v2, v2}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;)V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 55
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v1, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V

    goto :goto_0

    .line 58
    :pswitch_4
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-nez v1, :cond_3

    .line 59
    new-instance v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;

    invoke-direct {v1, v2}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;)V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 61
    :cond_3
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v1, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V

    goto :goto_0

    .line 64
    :pswitch_5
    invoke-virtual {p1, p2, v1, v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->clear()V

    .line 87
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 88
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 89
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 90
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 91
    return-void
.end method
