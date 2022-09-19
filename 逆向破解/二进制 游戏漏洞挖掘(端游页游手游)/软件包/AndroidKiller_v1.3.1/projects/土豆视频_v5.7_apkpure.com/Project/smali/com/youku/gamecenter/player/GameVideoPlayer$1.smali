.class Lcom/youku/gamecenter/player/GameVideoPlayer$1;
.super Ljava/lang/Thread;
.source "GameVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/player/GameVideoPlayer;->prepareLooper()V
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
    .line 106
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$1;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 109
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$1;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    new-instance v1, Lcom/youku/gamecenter/player/GameVideoPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$1$1;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer$1;)V

    invoke-static {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$002(Lcom/youku/gamecenter/player/GameVideoPlayer;Landroid/os/Handler;)Landroid/os/Handler;

    .line 116
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$1;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$200(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    .line 117
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 118
    return-void
.end method
