.class Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;
.super Ljava/lang/Object;
.source "IVoiceHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->play(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    iput-object p2, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 101
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    invoke-static {v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->access$000(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 103
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    invoke-static {v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->access$100(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    invoke-static {v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->access$100(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;->onPlay(Landroid/content/Context;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    invoke-static {v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->access$200(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    invoke-static {v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->access$300(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    iget-object v2, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    invoke-static {v2}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->access$200(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 107
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;->this$0:Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    invoke-static {v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->access$400(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 109
    :cond_1
    return-void
.end method
