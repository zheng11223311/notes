.class Lcom/comscore/streaming/plugin/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/plugin/StreamSensePlugin;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/plugin/StreamSensePlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Lcom/comscore/streaming/plugin/StreamSensePlayer;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->stopSmartStateDetection()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Lcom/comscore/streaming/plugin/StreamSensePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getPosition()J

    move-result-wide v6

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->startSmartStateDetection()V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v8

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playback Position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v5, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Historical Data Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I

    move-result v5

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    :cond_6
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/comscore/streaming/plugin/c;->a:[I

    iget-object v5, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/comscore/streaming/StreamSenseState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    if-eq v3, v0, :cond_16

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPostStateChange(Lcom/comscore/streaming/StreamSenseState;)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playback Position: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Historical Data Count: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I

    move-result v4

    if-lt v0, v4, :cond_1

    move v0, v2

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_3

    :pswitch_0
    iget-object v1, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v4

    cmp-long v1, v6, v4

    if-lez v1, :cond_7

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;)V

    goto :goto_6

    :cond_b
    const-string v0, "Moving to PLAYING state"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ns_st_ui"

    const-string v4, "seek"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-virtual {v1, v4, v0, v6, v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    :goto_7
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_4

    :cond_c
    iget-object v1, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v4, v10, v8, v9}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    goto :goto_7

    :pswitch_1
    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-lez v4, :cond_f

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;)V

    goto :goto_8

    :cond_d
    const-string v0, "Moving to PLAYING state"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ns_st_ui"

    const-string v4, "seek"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-virtual {v1, v4, v0, v6, v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    :goto_9
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_4

    :cond_e
    iget-object v1, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v4, v10, v8, v9}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    goto :goto_9

    :cond_f
    iget-object v2, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_4

    :pswitch_2
    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;)V

    goto :goto_a

    :cond_10
    const-string v0, "Moving to PAUSE (seek) state"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v10, v4, v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v6, v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;)V

    goto :goto_b

    :cond_12
    const-string v0, "Moving to END state"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v4, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Lcom/comscore/streaming/plugin/StreamSensePlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v1, v10, v4, v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_4

    :cond_13
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v0

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I

    move-result v2

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;)V

    goto :goto_c

    :cond_14
    const-string v0, "Moving to PAUSE state"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v10, v4, v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    goto/16 :goto_4

    :cond_15
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_16
    iget-object v0, p0, Lcom/comscore/streaming/plugin/b;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v6, v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)J

    goto/16 :goto_0

    :cond_17
    move v0, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
