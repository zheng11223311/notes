.class public Lcom/comscore/streaming/StreamingTag;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/comscore/streaming/StreamSense;

.field private b:J

.field private c:J

.field private d:I

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/comscore/streaming/p;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/comscore/streaming/StreamingTag;->d:I

    iput-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->b:J

    iput-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamingTag;->e:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/comscore/streaming/StreamingTag;->g:Z

    sget-object v0, Lcom/comscore/streaming/p;->None:Lcom/comscore/streaming/p;

    iput-object v0, p0, Lcom/comscore/streaming/StreamingTag;->f:Lcom/comscore/streaming/p;

    new-instance v0, Lcom/comscore/streaming/StreamSense;

    invoke-direct {v0}, Lcom/comscore/streaming/StreamSense;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    const-string v1, "ns_st_it"

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/StreamSense;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ns_st_ci"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ns_st_ci"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "c3"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "c3"

    const-string v2, "*null"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "c4"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "c4"

    const-string v2, "*null"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "c6"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "c6"

    const-string v2, "*null"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/StreamingTag;->b(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    iget-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    goto :goto_0
.end method

.method private a(JLjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/StreamingTag;->a(J)V

    iget v0, p0, Lcom/comscore/streaming/StreamingTag;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamingTag;->d:I

    const-string v0, "ns_st_cn"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ns_st_cn"

    iget v1, p0, Lcom/comscore/streaming/StreamingTag;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ns_st_pn"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ns_st_pn"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ns_st_tp"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ns_st_tp"

    const-string v1, "0"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0, p3}, Lcom/comscore/streaming/StreamSense;->setClip(Ljava/util/HashMap;)Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/comscore/streaming/StreamingTag;->e:Ljava/util/HashMap;

    iput-wide p1, p0, Lcom/comscore/streaming/StreamingTag;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    return-void
.end method

.method private a(Ljava/util/HashMap;Lcom/comscore/streaming/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/p;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->f:Lcom/comscore/streaming/p;

    sget-object v4, Lcom/comscore/streaming/p;->None:Lcom/comscore/streaming/p;

    if-ne v3, v4, :cond_0

    iput-object p2, p0, Lcom/comscore/streaming/StreamingTag;->f:Lcom/comscore/streaming/p;

    :cond_0
    iget-boolean v3, p0, Lcom/comscore/streaming/StreamingTag;->g:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->f:Lcom/comscore/streaming/p;

    if-ne v3, p2, :cond_3

    invoke-direct {p0, v2}, Lcom/comscore/streaming/StreamingTag;->c(Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/streaming/StreamingTag;->a(JLjava/util/HashMap;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamingTag;->g:Z

    iput-object p2, p0, Lcom/comscore/streaming/StreamingTag;->f:Lcom/comscore/streaming/p;

    return-void

    :cond_2
    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v3}, Lcom/comscore/streaming/StreamSense;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/comscore/streaming/StreamSenseClip;->setLabels(Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v2}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v2

    sget-object v3, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-eq v2, v3, :cond_1

    iput-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->b:J

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/streaming/StreamingTag;->a(JLjava/util/HashMap;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    return v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method private b(J)J
    .locals 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    iget-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->b:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    :goto_0
    iget-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    return-wide v0

    :cond_0
    iput-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    goto :goto_0
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamingTag;->a(J)V

    iget v2, p0, Lcom/comscore/streaming/StreamingTag;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/streaming/StreamingTag;->d:I

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ns_st_cn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ns_st_cn"

    iget v4, p0, Lcom/comscore/streaming/StreamingTag;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "ns_st_pn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ns_st_pn"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v3, "ns_st_tp"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ns_st_tp"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v3, "ns_st_ad"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ns_st_ad"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v3, v2}, Lcom/comscore/streaming/StreamSense;->setClip(Ljava/util/HashMap;)Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    sget-object v3, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-wide v4, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    iput-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamingTag;->g:Z

    return-void
.end method

.method private c(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ns_st_ci"

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->e:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2, v0}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "c3"

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->e:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2, v0}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "c4"

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->e:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2, v0}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "c6"

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->e:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2, v0}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public playAdvertisement()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ns_st_ct"

    const-string/jumbo v2, "va"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamingTag;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public playAudioAdvertisement()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamingTag;->playAudioAdvertisement(Ljava/util/HashMap;)V

    return-void
.end method

.method public playAudioAdvertisement(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "ns_st_ct"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ns_st_ct"

    const-string v2, "aa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamingTag;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public playAudioContentPart(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "ns_st_ct"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ns_st_ct"

    const-string v2, "ac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/comscore/streaming/p;->AudioContent:Lcom/comscore/streaming/p;

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;Lcom/comscore/streaming/p;)V

    return-void
.end method

.method public playContentPart(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "ns_st_ct"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ns_st_ct"

    const-string/jumbo v2, "vc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/comscore/streaming/p;->VideoContent:Lcom/comscore/streaming/p;

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;Lcom/comscore/streaming/p;)V

    return-void
.end method

.method public playVideoAdvertisement()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamingTag;->playVideoAdvertisement(Ljava/util/HashMap;)V

    return-void
.end method

.method public playVideoAdvertisement(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "ns_st_ct"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ns_st_ct"

    const-string/jumbo v2, "va"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamingTag;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public playVideoContentPart(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "ns_st_ct"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ns_st_ct"

    const-string/jumbo v2, "vc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/comscore/streaming/p;->VideoContent:Lcom/comscore/streaming/p;

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;Lcom/comscore/streaming/p;)V

    return-void
.end method

.method public stop()V
    .locals 4

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->a:Lcom/comscore/streaming/StreamSense;

    sget-object v3, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamingTag;->b(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    return-void
.end method
