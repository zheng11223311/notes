.class Lcom/youku/player/BaseMediaPlayer$4;
.super Ljava/lang/Object;
.source "BaseMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/BaseMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/BaseMediaPlayer;


# direct methods
.method constructor <init>(Lcom/youku/player/BaseMediaPlayer;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer$4;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$4;->this$0:Lcom/youku/player/BaseMediaPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/BaseMediaPlayer;->error:Z

    .line 550
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$4;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/player/BaseMediaPlayer;->onPlayerError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method
