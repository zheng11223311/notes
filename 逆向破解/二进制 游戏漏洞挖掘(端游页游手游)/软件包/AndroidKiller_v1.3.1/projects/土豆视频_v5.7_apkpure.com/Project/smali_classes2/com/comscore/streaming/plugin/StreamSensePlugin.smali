.class public Lcom/comscore/streaming/plugin/StreamSensePlugin;
.super Lcom/comscore/streaming/StreamSense;


# static fields
.field private static final b:[[F


# instance fields
.field private c:Ljava/lang/Runnable;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/comscore/streaming/plugin/StreamSensePluginListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/comscore/streaming/plugin/StreamSensePlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/16 v0, 0xc

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v7, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xd

    new-array v2, v2, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b:[[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        -0x41666666    # -0.3f
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
    .end array-data

    :array_3
    .array-data 4
        -0x41b33333    # -0.2f
        -0x42333333    # -0.1f
        0x0
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_4
    .array-data 4
        -0x41edb61c    # -0.14286f
        -0x42507747    # -0.08571f
        -0x4315f45e    # -0.02857f
        0x3cea0ba2    # 0.02857f
        0x3daf88b9    # 0.08571f
        0x3e1249e4    # 0.14286f
    .end array-data

    :array_5
    .array-data 4
        -0x422493c9    # -0.10714f
        -0x426db61c    # -0.07143f
        -0x42edbb5a    # -0.03571f
        0x0
        0x3d1244a6    # 0.03571f
        0x3d9249e4    # 0.07143f
        0x3ddb6c37    # 0.10714f
    .end array-data

    :array_6
    .array-data 4
        -0x42555715    # -0.08333f
        -0x428c34c2    # -0.05952f
        -0x42edbb5a    # -0.03571f
        -0x43bd07c8    # -0.0119f
        0x3c42f838    # 0.0119f
        0x3d1244a6    # 0.03571f
        0x3d73cb3e    # 0.05952f
        0x3daaa8eb    # 0.08333f
    .end array-data

    :array_7
    .array-data 4
        -0x427775b8    # -0.06667f
        -0x42b33333    # -0.05f
        -0x42f77af6    # -0.03333f
        -0x4377707a    # -0.01667f
        0x0
        0x3c888f86    # 0.01667f
        0x3d08850a    # 0.03333f
        0x3d4ccccd    # 0.05f
        0x3d888a48    # 0.06667f
    .end array-data

    :array_8
    .array-data 4
        -0x42a0902e    # -0.05455f
        -0x42d23f68    # -0.04242f
        -0x4307c84b    # -0.0303f
        -0x436b11c7    # -0.01818f
        -0x44396d09    # -0.00606f
        0x3bc692f7    # 0.00606f
        0x3c94ee39    # 0.01818f
        0x3cf837b5    # 0.0303f
        0x3d2dc098    # 0.04242f
        0x3d5f6fd2    # 0.05455f
    .end array-data

    :array_9
    .array-data 4
        -0x42c5d639    # -0.04545f
        -0x42eb11c7    # -0.03636f
        -0x43209aaa    # -0.02727f
        -0x436b11c7    # -0.01818f
        -0x43eb11c7    # -0.00909f
        0x0
        0x3c14ee39    # 0.00909f
        0x3c94ee39    # 0.01818f
        0x3cdf6556    # 0.02727f
        0x3d14ee39    # 0.03636f
        0x3d3a29c7    # 0.04545f
    .end array-data

    :array_a
    .array-data 4
        -0x42e277c4    # -0.03846f
        -0x42ff1950    # -0.03147f
        -0x433775b8    # -0.02448f
        -0x4370cdc8    # -0.01748f
        -0x43d421c0    # -0.01049f
        -0x449a9fbe    # -0.0035f
        0x3b656042    # 0.0035f
        0x3c2bde40    # 0.01049f
        0x3c8f3238    # 0.01748f
        0x3cc88a48    # 0.02448f
        0x3d00e6b0    # 0.03147f
        0x3d1d883c    # 0.03846f
    .end array-data

    :array_b
    .array-data 4
        -0x42f8f473    # -0.03297f
        -0x431ef73c    # -0.02747f
        -0x434bf099    # -0.02198f
        -0x4378feef    # -0.01648f
        -0x43cbf099    # -0.01099f
        -0x444c1a8b    # -0.00549f
        0x0
        0x3bb3e575    # 0.00549f
        0x3c340f67    # 0.01099f
        0x3c870111    # 0.01648f
        0x3cb40f67    # 0.02198f
        0x3ce108c4    # 0.02747f
        0x3d070b8d    # 0.03297f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:I

    const/high16 v0, 0x3fa00000    # 1.25f

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->p:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->s:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->q:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->r:I

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f:J

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:Ljava/util/List;

    const-string v0, "ns_st_mp"

    invoke-virtual {p0, v0, p1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ns_st_pv"

    invoke-virtual {p0, v0, p2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ns_st_mv"

    invoke-virtual {p0, v0, p3}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)J
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)Z
    .locals 5

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    invoke-interface {v0}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    invoke-interface {v0}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getDuration()J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g:Z

    return p1
.end method

.method private b(I)J
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)J
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Lcom/comscore/streaming/plugin/StreamSensePlayer;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    return-object v0
.end method

.method private c()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/comscore/streaming/plugin/b;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/plugin/b;-><init>(Lcom/comscore/streaming/plugin/StreamSensePlugin;)V

    return-object v0
.end method

.method static synthetic c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e:Ljava/util/List;

    return-object v0
.end method

.method private d()Z
    .locals 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const-string v0, "isSeekInProgress: not enough previous playback positions"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    invoke-direct {p0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(I)J

    move-result-wide v0

    invoke-direct {p0, v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(I)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->q:I

    const/4 v0, 0x0

    move v1, v2

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b:[[F

    iget-object v6, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v0, v6

    aget v6, v0, v1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v0, v8

    mul-float/2addr v0, v6

    add-float/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    int-to-float v0, v5

    div-float v0, v3, v0

    iget v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v2, v4

    goto :goto_0
.end method

.method static synthetic e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->s:I

    return v0
.end method

.method static synthetic g(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->r:I

    return v0
.end method

.method static synthetic h(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .locals 1

    invoke-direct {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f:J

    return-wide v0
.end method

.method static synthetic k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g:Z

    return v0
.end method

.method static synthetic m(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l:Z

    return v0
.end method

.method static synthetic n(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j:Z

    return v0
.end method

.method static synthetic o(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n:I

    return v0
.end method


# virtual methods
.method public addListener(Lcom/comscore/streaming/plugin/StreamSensePluginListener;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearListener(Lcom/comscore/streaming/plugin/StreamSensePluginListener;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPlayer()Lcom/comscore/streaming/plugin/StreamSensePlayer;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    return-object v0
.end method

.method public notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseEventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    invoke-interface {v0, p1, p2}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onGetLabels(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    cmp-long v0, p3, v2

    if-lez v0, :cond_3

    move-wide v0, p3

    :goto_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    move-wide v0, v2

    :cond_2
    invoke-super {p0, p1, p2, v0, v1}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    invoke-interface {v0}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getPosition()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method public setDetectEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l:Z

    return-void
.end method

.method public setDetectPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j:Z

    return-void
.end method

.method public setDetectPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Z

    return-void
.end method

.method public setDetectSeek(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i:Z

    return-void
.end method

.method public setEndDetectionErrorMargin(I)V
    .locals 0

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:I

    return-void
.end method

.method public setMaximumNumberOfEntriesInHistory(I)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->r:I

    :cond_0
    return-void
.end method

.method public setMinimumNumberOfTimeUpdateEventsBeforeSensingAnything(I)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->s:I

    :cond_0
    return-void
.end method

.method public setPauseDetectionErrorMargin(I)V
    .locals 0

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n:I

    return-void
.end method

.method public setPlayer(Lcom/comscore/streaming/plugin/StreamSensePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    return-void
.end method

.method public setPulseSamplingInterval(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->q:I

    :cond_0
    return-void
.end method

.method public setSeekDetectionMinQuotient(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->p:F

    :cond_0
    return-void
.end method

.method public setSmartStateDetection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m:Z

    return-void
.end method

.method public startSmartStateDetection()V
    .locals 4

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->stopSmartStateDetection()V

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c:Ljava/lang/Runnable;

    iget v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->q:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public stopSmartStateDetection()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
