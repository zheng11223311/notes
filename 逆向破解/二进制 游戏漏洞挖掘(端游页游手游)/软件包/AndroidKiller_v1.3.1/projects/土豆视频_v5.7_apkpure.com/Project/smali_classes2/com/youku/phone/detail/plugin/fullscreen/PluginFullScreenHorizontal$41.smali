.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$41;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onRealVideoStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 3078
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$41;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3081
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "onRealVideoStart runnable isRealVideoStart = true;"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$41;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z

    .line 3083
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$41;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z

    .line 3084
    return-void
.end method
