.class Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;
.super Ljava/lang/Object;
.source "UVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/player/UVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$200(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/uplayer/MediaPlayerProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v0, p1}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$302(Lcom/youku/laifeng/sdk/widget/player/UVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$200(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/uplayer/MediaPlayerProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$200(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/uplayer/MediaPlayerProxy;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/youku/uplayer/MediaPlayerProxy;->changeVideoSize(II)V

    .line 242
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v0, p1}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$302(Lcom/youku/laifeng/sdk/widget/player/UVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 246
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$302(Lcom/youku/laifeng/sdk/widget/player/UVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 250
    return-void
.end method
