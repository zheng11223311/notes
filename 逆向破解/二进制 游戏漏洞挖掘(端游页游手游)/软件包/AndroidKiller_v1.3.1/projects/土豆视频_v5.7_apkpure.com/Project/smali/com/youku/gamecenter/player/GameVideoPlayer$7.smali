.class Lcom/youku/gamecenter/player/GameVideoPlayer$7;
.super Ljava/lang/Object;
.source "GameVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/player/GameVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$7;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$7;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0, p2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1302(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 387
    return-void
.end method
