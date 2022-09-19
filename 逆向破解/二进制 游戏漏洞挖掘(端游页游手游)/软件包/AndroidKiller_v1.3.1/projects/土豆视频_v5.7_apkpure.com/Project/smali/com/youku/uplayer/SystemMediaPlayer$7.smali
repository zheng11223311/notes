.class Lcom/youku/uplayer/SystemMediaPlayer$7;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/uplayer/SystemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/uplayer/SystemMediaPlayer;


# direct methods
.method constructor <init>(Lcom/youku/uplayer/SystemMediaPlayer;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer$7;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$7;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    const-string v1, "onVideoSizeChanged "

    invoke-static {v0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->access$000(Lcom/youku/uplayer/SystemMediaPlayer;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$7;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$1100(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer$7;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 187
    return-void
.end method
