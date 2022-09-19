.class Lcom/youku/uplayer/SystemMediaPlayer$6;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 164
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer$6;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$6;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    const-string v1, "onSeekComplete "

    invoke-static {v0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->access$000(Lcom/youku/uplayer/SystemMediaPlayer;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$6;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->access$702(Lcom/youku/uplayer/SystemMediaPlayer;I)I

    .line 174
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$6;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$1000(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer$6;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 177
    return-void
.end method
