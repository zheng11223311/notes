.class public Lcn/com/iresearch/mapptracker/IRMonitor;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Z

.field static d:I

.field private static g:Lcn/com/iresearch/mapptracker/IRMonitor;


# instance fields
.field private e:Lcn/com/iresearch/mapptracker/a/a;

.field private f:Landroid/content/Context;

.field private h:Landroid/content/SharedPreferences;

.field private i:Landroid/content/SharedPreferences$Editor;

.field private j:Lcn/com/iresearch/mapptracker/dao/b;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:J

.field private o:I

.field private p:I

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mapptracker/dao/EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "test_android"

    sput-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->b:Ljava/lang/String;

    sput-boolean v1, Lcn/com/iresearch/mapptracker/IRMonitor;->c:Z

    sput v1, Lcn/com/iresearch/mapptracker/IRMonitor;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->k:Z

    iput-boolean v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->l:Z

    iput-wide v4, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->m:J

    iput-wide v4, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    iput v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->o:I

    iput v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->p:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->q:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->r:Ljava/util/Map;

    iput-object v2, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->s:Ljava/lang/String;

    iput-boolean v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->t:Z

    return-void
.end method

.method static synthetic a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcn/com/iresearch/mapptracker/IRMonitor;
    .locals 1

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    return-object v0
.end method

.method static synthetic a(Lcn/com/iresearch/mapptracker/dao/EventInfo;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/dao/EventInfo;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/com/iresearch/mapptracker/dao/SessionInfo;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/dao/SessionInfo;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/dao/b;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/dao/b;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    :cond_0
    new-instance v0, Lcn/com/iresearch/mapptracker/b;

    invoke-direct {v0, p0, p1}, Lcn/com/iresearch/mapptracker/b;-><init>(Lcn/com/iresearch/mapptracker/IRMonitor;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/b;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/iresearch/mapptracker/IRMonitor;I)V
    .locals 0

    iput p1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->p:I

    return-void
.end method

.method static synthetic a(Lcn/com/iresearch/mapptracker/IRMonitor;Lcn/com/iresearch/mapptracker/dao/b;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    return-void
.end method

.method static synthetic a(Lcn/com/iresearch/mapptracker/IRMonitor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->l:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->i:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    const-string v1, "MATSharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->i:Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->s:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->s:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->e:Lcn/com/iresearch/mapptracker/a/a;

    if-nez v0, :cond_4

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    const-string v1, "_ire"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->e:Lcn/com/iresearch/mapptracker/a/a;

    :cond_4
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->q:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->q:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    if-nez v0, :cond_7

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Landroid/content/Context;)V

    :cond_7
    if-nez p1, :cond_8

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v1, "sPage_Count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->o:I

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v1, "event_Count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MAT_SESSION"

    const-string v2, "\u5185\u90e8\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/dao/b;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    return-object v0
.end method

.method private static b(Lcn/com/iresearch/mapptracker/dao/EventInfo;)Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v2, "label"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "event_id"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getEvent_id()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "duration"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "open_count"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getOpen_count()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "start_time"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getStart_time()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "end_time"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getEnd_time()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "event_params"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getEvent_params()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Lcn/com/iresearch/mapptracker/dao/SessionInfo;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "start_time"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->getStart_time()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "end_time"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->getEnd_time()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "duration"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "page_name"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->getPage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "inapp"

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->getInapp()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized b(Ljava/lang/Object;)V
    .locals 4

    const-class v1, Lcn/com/iresearch/mapptracker/IRMonitor;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->i:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->e:Lcn/com/iresearch/mapptracker/a/a;

    invoke-virtual {v0, p0}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/Object;)V

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget v2, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->o:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->o:I

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->i:Landroid/content/SharedPreferences$Editor;

    const-string v2, "sPage_Count"

    sget-object v3, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget v3, v3, Lcn/com/iresearch/mapptracker/IRMonitor;->o:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Z
    .locals 6

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v1, "daysend"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic d(Lcn/com/iresearch/mapptracker/IRMonitor;)V
    .locals 6

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/dao/b;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/dao/b;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    :cond_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v2, "SendDataUrl"

    const-string v3, "http://m.irs01.com/rec/se?_iwt_t=i&sv=2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v2, "SendClientUrl"

    const-string v3, "http://m.irs01.com/rec/cl?_iwt_t=i&sv=2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v2, "ConfigUrl"

    const-string v3, "http://m.irs01.com/cfg/appkey-"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v2, "ConfigExpireTime"

    const-wide/16 v4, 0x5a0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/b;->a(J)V

    :try_start_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v2, "LimitInterval"

    const/16 v3, 0x1e

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/b;->a(I)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v2, "sendMode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/b;->b(I)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v2, "LimitCount"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/b;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->i:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->e:Lcn/com/iresearch/mapptracker/a/a;

    return-object v0
.end method

.method static synthetic g(Lcn/com/iresearch/mapptracker/IRMonitor;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->o:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/com/iresearch/mapptracker/IRMonitor;
    .locals 3

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    if-nez v0, :cond_1

    const-class v1, Lcn/com/iresearch/mapptracker/IRMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;-><init>()V

    sput-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h(Lcn/com/iresearch/mapptracker/IRMonitor;)I
    .locals 1

    iget v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->o:I

    return v0
.end method

.method static synthetic i(Lcn/com/iresearch/mapptracker/IRMonitor;)I
    .locals 1

    iget v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->p:I

    return v0
.end method

.method static synthetic j(Lcn/com/iresearch/mapptracker/IRMonitor;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k(Lcn/com/iresearch/mapptracker/IRMonitor;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->t:Z

    return-void
.end method


# virtual methods
.method public Init(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcn/com/iresearch/mapptracker/IRMonitor;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    sput-object p2, Lcn/com/iresearch/mapptracker/IRMonitor;->b:Ljava/lang/String;

    sput-boolean p3, Lcn/com/iresearch/mapptracker/IRMonitor;->c:Z

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    const-string v1, "MATSharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->i:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v1, "isFirstRun"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MAT_SESSION"

    const-string v1, "\u6536\u96c6client\u6570\u636e"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "header"

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/util/a;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "page_list"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "event_list"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lat"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lng"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "open_count"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "page_count"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "run_time"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v2, v2, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcn/com/iresearch/mapptracker/f;

    invoke-direct {v2, p0, v1, v0}, Lcn/com/iresearch/mapptracker/f;-><init>(Lcn/com/iresearch/mapptracker/IRMonitor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/f;->start()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-direct {p0, v4}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/iresearch/mapptracker/a;

    invoke-direct {v1, p0}, Lcn/com/iresearch/mapptracker/a;-><init>(Lcn/com/iresearch/mapptracker/IRMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAT_SESSION"

    const-string v2, "\u521d\u59cb\u5316Session\u5931\u8d25"

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getVVUid()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v1, v1, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/com/iresearch/mapptracker/util/DataProvider;->getVVUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setEvent_id(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setLabel(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setStart_time(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setEnd_time(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setDuration(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setOpen_count(J)V

    invoke-static {p3}, Lcn/com/iresearch/mapptracker/util/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setEvent_params(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/com/iresearch/mapptracker/g;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, v1}, Lcn/com/iresearch/mapptracker/g;-><init>(ZLcn/com/iresearch/mapptracker/dao/EventInfo;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/g;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEventEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->r:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->eventisStart:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setEnd_time(J)V

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getStart_time()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setDuration(J)V

    iget-boolean v1, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->eventisStart:Z

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->open_count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->open_count:J

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->eventisStart:Z

    invoke-virtual {v0, p2}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setLabel(Ljava/lang/String;)V

    iget-wide v2, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->first_start_time:J

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setStart_time(J)V

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->r:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MAT_EVENT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event_id= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7684\u4e8b\u4ef6\u7ed3\u675f! start_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->first_start_time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getEnd_time()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e8b\u4ef6\u53d1\u751f\u6b21\u6570:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getOpen_count()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/com/iresearch/mapptracker/g;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcn/com/iresearch/mapptracker/g;-><init>(ZLcn/com/iresearch/mapptracker/dao/EventInfo;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/g;->start()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MAT_EVENT"

    const-string v1, "\u8bf7\u5148\u8c03\u7528onEventStart!"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAT_EVENT"

    const-string v2, "\u4e8b\u4ef6\u7ed3\u675f\u4fdd\u5b58\u5931\u8d25!"

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEventStart(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->r:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->c()J

    move-result-wide v2

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->event_id:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcn/com/iresearch/mapptracker/util/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setEvent_params(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setStart_time(J)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->eventisStart:Z

    const-string v1, "MAT_EVENT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event_id= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7684\u4e8b\u4ef6\u5f00\u59cb! start_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->first_start_time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->r:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->event_id:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/iresearch/mapptracker/util/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setEvent_params(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setStart_time(J)V

    iput-wide v2, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->first_start_time:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->eventisStart:Z

    const-string v1, "MAT_EVENT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event_id= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7684\u4e8b\u4ef6\u5f00\u59cb(\u7b2c\u4e00\u6b21)! ,start_time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->first_start_time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->r:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAT_EVENT"

    const-string v2, "\u4e8b\u4ef6\u5f00\u542f\u5931\u8d25:\n"

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    const-wide/16 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MAT_SESSION"

    const-string v1, "\u975emain\u7ebf\u7a0breturn"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const-string v0, "MAT_SESSION"

    const-string v1, "\u975e\u4e3b\u7ebf\u7a0breturn"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->l:Z

    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->k:Z

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    iget-wide v2, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->m:J

    sub-long v2, v0, v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    new-instance v1, Lcn/com/iresearch/mapptracker/dao/SessionInfo;

    invoke-direct {v1}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;-><init>()V

    iget-wide v4, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->m:J

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->setStart_time(J)V

    iget-wide v4, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->setEnd_time(J)V

    invoke-virtual {v1, v2, v3}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->setDuration(J)V

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v4, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    const-string v0, ""

    sget-object v5, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v5, v5, Lcn/com/iresearch/mapptracker/IRMonitor;->s:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v4, v0}, Lcn/com/iresearch/mapptracker/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->setInapp(J)V

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->q:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "MAT_SESSION"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u901a\u8fc7\u6fc0\u6d3b\u6700\u8fd1\u8fd0\u884c\u7a0b\u5e8f\u5230\u540e\u53f0,\u524d\u4e00\u4e2aActivity: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u8fd0\u884c\u65f6\u95f4:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1, v0}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->setPage_name(Ljava/lang/String;)V

    :goto_3
    iget v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->o:I

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/dao/b;->g()I

    move-result v2

    if-gt v0, v2, :cond_3

    new-instance v0, Lcn/com/iresearch/mapptracker/e;

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/e;-><init>(Lcn/com/iresearch/mapptracker/dao/SessionInfo;)V

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/e;->start()V

    :cond_3
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->i:Landroid/content/SharedPreferences$Editor;

    const-string v1, "endPoint"

    iget-wide v2, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAT_SESSION"

    const-string v2, "onPause\u903b\u8f91\u5931\u8d25"

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->s:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v4, "MAT_SESSION"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6309HOME\u952e\u53bb\u540e\u53f0,\u524d\u4e00\u4e2aActivity: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u8fd0\u884c\u65f6\u95f4:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->setPage_name(Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->setInapp(J)V

    const-string v4, "MAT_SESSION"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5728\u672capp\u4e2d\u8df3\u8f6c,\u524d\u4e00\u4e2aActivity: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u8fd0\u884c\u65f6\u95f4:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MAT_SESSION"

    const-string v1, "\u975emain\u7ebf\u7a0breturn"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const-string v0, "MAT_SESSION"

    const-string v1, "\u975e\u4e3b\u7ebf\u7a0breturn"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->k:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Z)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->m:J

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->h:Landroid/content/SharedPreferences;

    const-string v1, "endPoint"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    :cond_3
    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->m:J

    iget-wide v2, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    sub-long v2, v0, v2

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/b;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v4, v0

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->t:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->t:Z

    :cond_4
    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->t:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcn/com/iresearch/mapptracker/IRMonitor;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->t:Z

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v7, "header"

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/util/a;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "page_list"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "event_list"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lat"

    const-string v6, "f"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lng"

    const-string v6, "x"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "open_count"

    const-string v6, "0"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "page_count"

    const-string v6, "0"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "run_time"

    const-string v6, "0"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->j:Lcn/com/iresearch/mapptracker/dao/b;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v6, v6, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    invoke-static {v6}, Lcn/com/iresearch/mapptracker/util/a;->b(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcn/com/iresearch/mapptracker/d;

    invoke-direct {v6, p0, v1, v0}, Lcn/com/iresearch/mapptracker/d;-><init>(Lcn/com/iresearch/mapptracker/IRMonitor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/com/iresearch/mapptracker/d;->start()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    cmp-long v0, v2, v4

    if-ltz v0, :cond_6

    :try_start_2
    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/IRMonitor;->n:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_6

    const-string v0, "MAT_SESSION"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u5728\u540e\u53f0\u65f6\u95f4:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= \u540e\u53f0\u9600\u503c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u53d1\u9001\u6570\u636e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->f:Landroid/content/Context;

    sget-object v0, Lcn/com/iresearch/mapptracker/IRMonitor;->g:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-boolean v0, v0, Lcn/com/iresearch/mapptracker/IRMonitor;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/c;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/c;-><init>()V

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/c;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAT_SESSION"

    const-string v2, "onResume\u903b\u8f91\u5931\u8d25"

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "MAT_SESSION"

    const-string v6, "\u53d1\u9001\u4e00\u5929\u4e00\u6761\u6570\u636e\u5931\u8d25"

    invoke-static {v1, v6}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_6
    const-string v0, "MAT_SESSION"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u5728\u540e\u53f0\u65f6\u95f4:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < \u540e\u53f0\u9600\u503c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e0d\u53d1\u9001\u6570\u636e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
