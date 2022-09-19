.class Lcom/youku/player/danmaku/TudouDanmakuUtils$1;
.super Ljava/lang/Object;
.source "TudouDanmakuUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/danmaku/TudouDanmakuUtils;->resetAndReleaseDanmakuInfo(Lcom/youku/player/danmaku/IDanmakuManager;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/danmaku/TudouDanmakuUtils;

.field final synthetic val$danmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;


# direct methods
.method constructor <init>(Lcom/youku/player/danmaku/TudouDanmakuUtils;Lcom/youku/player/danmaku/IDanmakuManager;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$1;->this$0:Lcom/youku/player/danmaku/TudouDanmakuUtils;

    iput-object p2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$1;->val$danmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$1;->val$danmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->releaseDanmaku()V

    .line 394
    return-void
.end method
