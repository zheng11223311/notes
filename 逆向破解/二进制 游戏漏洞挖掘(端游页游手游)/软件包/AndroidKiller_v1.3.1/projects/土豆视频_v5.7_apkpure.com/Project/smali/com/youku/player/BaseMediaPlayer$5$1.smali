.class Lcom/youku/player/BaseMediaPlayer$5$1;
.super Landroid/os/Handler;
.source "BaseMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/BaseMediaPlayer$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/BaseMediaPlayer$5;


# direct methods
.method constructor <init>(Lcom/youku/player/BaseMediaPlayer$5;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer$5$1;->this$1:Lcom/youku/player/BaseMediaPlayer$5;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$5$1;->this$1:Lcom/youku/player/BaseMediaPlayer$5;

    iget-object v0, v0, Lcom/youku/player/BaseMediaPlayer$5;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->access$600(Lcom/youku/player/BaseMediaPlayer;Landroid/os/Message;)V

    .line 921
    return-void
.end method
