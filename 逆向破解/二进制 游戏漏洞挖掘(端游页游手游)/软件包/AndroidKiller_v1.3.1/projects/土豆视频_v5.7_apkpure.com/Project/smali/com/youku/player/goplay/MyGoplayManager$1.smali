.class Lcom/youku/player/goplay/MyGoplayManager$1;
.super Ljava/lang/Object;
.source "MyGoplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/goplay/MyGoplayManager;->playVideoFromLocal(Lcom/youku/player/module/VideoUrlInfo;ZLcom/youku/player/goplay/IVideoInfoCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/goplay/MyGoplayManager;

.field final synthetic val$call:Lcom/youku/player/goplay/IVideoInfoCallBack;

.field final synthetic val$info:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/goplay/MyGoplayManager;Lcom/youku/player/goplay/IVideoInfoCallBack;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/youku/player/goplay/MyGoplayManager$1;->this$0:Lcom/youku/player/goplay/MyGoplayManager;

    iput-object p2, p0, Lcom/youku/player/goplay/MyGoplayManager$1;->val$call:Lcom/youku/player/goplay/IVideoInfoCallBack;

    iput-object p3, p0, Lcom/youku/player/goplay/MyGoplayManager$1;->val$info:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/youku/player/goplay/MyGoplayManager$1;->val$call:Lcom/youku/player/goplay/IVideoInfoCallBack;

    iget-object v1, p0, Lcom/youku/player/goplay/MyGoplayManager$1;->val$info:Lcom/youku/player/module/VideoUrlInfo;

    invoke-interface {v0, v1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 312
    return-void
.end method
