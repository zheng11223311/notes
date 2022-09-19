.class Lcom/youku/phone/detail/plugin/PluginSmall$14;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->onLoadedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1293
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 1294
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1800(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 1295
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2000(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 1296
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->count:I

    if-nez v1, :cond_2

    .line 1297
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_2

    .line 1299
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 1300
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1302
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1307
    const-string v1, "test3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max currentPostion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget v2, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->count:I

    .line 1311
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2100(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1312
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "tTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$14;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2100(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    .end local v0    # "tTitle":Ljava/lang/String;
    :cond_2
    return-void
.end method
