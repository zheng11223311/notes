.class public Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;
.super Lcom/comscore/streaming/plugin/StreamSensePlugin;

# interfaces
.implements Lcom/comscore/streaming/plugin/StreamSensePlayer;
.implements Lcom/comscore/streaming/plugin/StreamSensePluginListener;


# static fields
.field private static final b:Ljava/lang/String; = "VideoView"

.field private static final c:Ljava/lang/String; = "4.1404.10"

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/VideoView;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "VideoView"

    const-string v1, "4.1404.10"

    sget-object v2, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    invoke-virtual {p0, p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setPlayer(Lcom/comscore/streaming/plugin/StreamSensePlayer;)V

    invoke-virtual {p0, p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->addListener(Lcom/comscore/streaming/plugin/StreamSensePluginListener;)V

    invoke-virtual {p0, v3}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setSmartStateDetection(Z)V

    invoke-virtual {p0, v3}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setDetectPlay(Z)V

    invoke-virtual {p0, v3}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setDetectPause(Z)V

    invoke-virtual {p0, v3}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setDetectSeek(Z)V

    invoke-virtual {p0, v3}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setDetectEnd(Z)V

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->startSmartStateDetection()V

    const-string v0, "ns_st_it"

    const-string v1, "c"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ns_st_pn"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ns_st_tp"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 3

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public getPosition()J
    .locals 3

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onGetLabels(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseEventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetLabels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    const-string v1, "ns_st_cl"

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    const-string v1, "ns_st_cl"

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/StreamSenseClip;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    const-string v1, "ns_st_cs"

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "0x0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    const-string v1, "ns_st_cs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->e:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/StreamSenseClip;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPostStateChange(Lcom/comscore/streaming/StreamSenseState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostStateChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/streaming/plugin/d;->a:[I

    invoke-virtual {p1}, Lcom/comscore/streaming/StreamSenseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->stopSmartStateDetection()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreStateChange(Lcom/comscore/streaming/StreamSenseState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreStateChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 4

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->getPosition()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSenseVideoViewPlugin;->stopSmartStateDetection()V

    return-void
.end method
