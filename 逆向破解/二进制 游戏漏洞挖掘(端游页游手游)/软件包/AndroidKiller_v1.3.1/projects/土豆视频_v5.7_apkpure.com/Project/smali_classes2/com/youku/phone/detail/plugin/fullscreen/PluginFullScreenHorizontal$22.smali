.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->startVideoRecord(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

.field final synthetic val$item:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

.field final synthetic val$maxDuration:I

.field final synthetic val$startPos:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;II)V
    .locals 0

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->val$item:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iput p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->val$startPos:I

    iput p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->val$maxDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1386
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "startVideoRecord timeout run.."

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1387
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-boolean v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 1388
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->val$item:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPressed(Z)V

    .line 1389
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPaused:Z

    if-nez v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->val$startPos:I

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;->val$maxDuration:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopVideoRecord(I)V

    .line 1392
    :cond_0
    return-void
.end method
