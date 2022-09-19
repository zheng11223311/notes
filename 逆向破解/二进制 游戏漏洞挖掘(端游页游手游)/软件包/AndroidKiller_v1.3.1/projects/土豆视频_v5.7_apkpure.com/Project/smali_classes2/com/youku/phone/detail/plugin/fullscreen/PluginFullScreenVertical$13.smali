.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;
.super Ljava/lang/Object;
.source "PluginFullScreenVertical.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->goEndPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1121
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1122
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 1123
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hasGotoEnd:Z

    .line 1124
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iput-boolean v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    .line 1126
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iput-boolean v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isRealVideoStart:Z

    .line 1127
    return-void
.end method
