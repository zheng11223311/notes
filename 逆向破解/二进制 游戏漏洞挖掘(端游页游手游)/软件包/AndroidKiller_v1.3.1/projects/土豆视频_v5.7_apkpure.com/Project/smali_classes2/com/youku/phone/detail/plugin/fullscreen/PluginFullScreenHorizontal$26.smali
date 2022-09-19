.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->screenshotInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$fromGuide:Z


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->val$fileName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->val$fromGuide:Z

    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1488
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->val$fileName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->val$fromGuide:Z

    invoke-static {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Ljava/lang/String;Z)V

    .line 1489
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->val$fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1490
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;->val$animView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1491
    return-void
.end method
