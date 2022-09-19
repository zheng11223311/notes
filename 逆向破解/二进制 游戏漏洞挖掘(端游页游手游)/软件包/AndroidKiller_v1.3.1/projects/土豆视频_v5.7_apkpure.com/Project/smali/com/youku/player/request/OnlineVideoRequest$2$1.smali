.class Lcom/youku/player/request/OnlineVideoRequest$2$1;
.super Ljava/lang/Object;
.source "OnlineVideoRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/OnlineVideoRequest$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/request/OnlineVideoRequest$2;

.field final synthetic val$drmResult:Z


# direct methods
.method constructor <init>(Lcom/youku/player/request/OnlineVideoRequest$2;Z)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/youku/player/request/OnlineVideoRequest$2$1;->this$1:Lcom/youku/player/request/OnlineVideoRequest$2;

    iput-boolean p2, p0, Lcom/youku/player/request/OnlineVideoRequest$2$1;->val$drmResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/youku/player/request/OnlineVideoRequest$2$1;->val$drmResult:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$2$1;->this$1:Lcom/youku/player/request/OnlineVideoRequest$2;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest$2;->val$callback:Lcom/youku/player/drm/DRMTokenCallback;

    invoke-interface {v0}, Lcom/youku/player/drm/DRMTokenCallback;->onSuccess()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$2$1;->this$1:Lcom/youku/player/request/OnlineVideoRequest$2;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest$2;->val$callback:Lcom/youku/player/drm/DRMTokenCallback;

    invoke-interface {v0}, Lcom/youku/player/drm/DRMTokenCallback;->onFail()V

    goto :goto_0
.end method
