.class Lcom/youku/uplayer/SystemMediaPlayer$4;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 137
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer$4;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$4;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->access$000(Lcom/youku/uplayer/SystemMediaPlayer;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$4;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$400(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer$4;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method
