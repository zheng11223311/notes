.class Lcom/youku/phone/detail/plugin/PluginSmall$10;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->onBufferingUpdateListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;I)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iput p2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 883
    iget v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->val$percent:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->Adaptation_lastPercent:I

    if-eq v1, v2, :cond_1

    .line 884
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->val$percent:I

    iput v2, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->Adaptation_lastPercent:I

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 891
    iget v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->val$percent:I

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x64

    .line 893
    .local v0, "showSecond":I
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    .line 894
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 895
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$10;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method
