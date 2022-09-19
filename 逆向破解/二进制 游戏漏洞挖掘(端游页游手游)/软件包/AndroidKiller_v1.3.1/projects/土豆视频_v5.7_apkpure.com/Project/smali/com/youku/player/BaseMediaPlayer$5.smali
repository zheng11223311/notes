.class Lcom/youku/player/BaseMediaPlayer$5;
.super Ljava/lang/Thread;
.source "BaseMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/BaseMediaPlayer;->prepareLooper()V
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
    .line 913
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer$5;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 915
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 916
    new-instance v0, Lcom/youku/player/BaseMediaPlayer$5$1;

    invoke-direct {v0, p0}, Lcom/youku/player/BaseMediaPlayer$5$1;-><init>(Lcom/youku/player/BaseMediaPlayer$5;)V

    sput-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 923
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$5;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v0}, Lcom/youku/player/BaseMediaPlayer;->access$700(Lcom/youku/player/BaseMediaPlayer;)V

    .line 924
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 925
    return-void
.end method
