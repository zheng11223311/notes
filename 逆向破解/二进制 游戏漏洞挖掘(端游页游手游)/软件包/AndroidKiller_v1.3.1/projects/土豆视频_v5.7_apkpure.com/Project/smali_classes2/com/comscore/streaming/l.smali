.class Lcom/comscore/streaming/l;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/comscore/streaming/StreamSenseMediaPlayer;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;J)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    iput-wide p2, p0, Lcom/comscore/streaming/l;->a:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->i(Lcom/comscore/streaming/StreamSenseMediaPlayer;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/streaming/l;->a:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->isPlayerPausedForSeeking()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->isPlayerPausedForBuffering()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z

    iget-object v0, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->k(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->isPlayerPausedForSeeking()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->isPlayerPausedForBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/l;->b:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->e(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    goto :goto_1
.end method
