.class Lcom/youku/uplayer/SystemMediaPlayer$5;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 146
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    const-string v1, "onPrepared "

    invoke-static {v0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->access$000(Lcom/youku/uplayer/SystemMediaPlayer;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$500(Lcom/youku/uplayer/SystemMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$600(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 152
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0, v2}, Lcom/youku/uplayer/SystemMediaPlayer;->access$502(Lcom/youku/uplayer/SystemMediaPlayer;Z)Z

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$700(Lcom/youku/uplayer/SystemMediaPlayer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0, v2}, Lcom/youku/uplayer/SystemMediaPlayer;->access$702(Lcom/youku/uplayer/SystemMediaPlayer;I)I

    .line 156
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$900(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/SystemMediaPlayer;->access$800(Lcom/youku/uplayer/SystemMediaPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$5;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$900(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method
