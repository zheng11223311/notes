.class public Lcom/punchbox/report/n;
.super Lcom/punchbox/report/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/punchbox/report/g",
        "<",
        "Lcom/punchbox/v4/m/a;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/punchbox/v4/h/l;

.field private c:Lcom/punchbox/v4/l/d;

.field private d:Lcom/punchbox/report/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/report/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/report/n;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/punchbox/report/p;)V
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/report/g;-><init>()V

    new-instance v0, Lcom/punchbox/v4/h/l;

    invoke-direct {v0}, Lcom/punchbox/v4/h/l;-><init>()V

    iput-object v0, p0, Lcom/punchbox/report/n;->a:Lcom/punchbox/v4/h/l;

    iput-object p1, p0, Lcom/punchbox/report/n;->d:Lcom/punchbox/report/p;

    return-void
.end method

.method synthetic constructor <init>(Lcom/punchbox/report/p;Lcom/punchbox/report/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/report/n;-><init>(Lcom/punchbox/report/p;)V

    return-void
.end method

.method private a(Lcom/punchbox/report/ReportData;)J
    .locals 2

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/punchbox/report/n;->a:Lcom/punchbox/v4/h/l;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/h/l;->a(Lcom/punchbox/report/ReportData;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/punchbox/report/ReportData;->id:J

    iget-wide v0, p1, Lcom/punchbox/report/ReportData;->id:J

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/punchbox/report/ReportData;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/n;->d:Lcom/punchbox/report/p;

    invoke-static {v0}, Lcom/punchbox/report/p;->b(Lcom/punchbox/report/p;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/punchbox/report/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/punchbox/report/ReportData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/punchbox/report/n;->a(Lcom/punchbox/report/ReportData;)J

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/punchbox/report/ReportData;
    .locals 4

    new-instance v0, Lcom/punchbox/report/ReportData;

    invoke-direct {v0}, Lcom/punchbox/report/ReportData;-><init>()V

    iput-object p1, v0, Lcom/punchbox/report/ReportData;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/punchbox/report/ReportData;->createTime:J

    iput-object p2, v0, Lcom/punchbox/report/ReportData;->reportJsonData:Ljava/lang/String;

    const-string v1, "CounterList"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    iput v1, v0, Lcom/punchbox/report/ReportData;->status:I

    :goto_0
    iput-object p3, v0, Lcom/punchbox/report/ReportData;->type:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/punchbox/report/ReportData;->status:I

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/punchbox/report/n;->b:Ljava/lang/String;

    const-string/jumbo v2, "url can\'t be null"

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v2, Lcom/punchbox/v4/l/d;

    invoke-direct {v2, p1}, Lcom/punchbox/v4/l/d;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/punchbox/report/n;->c:Lcom/punchbox/v4/l/d;

    iget-object v2, p0, Lcom/punchbox/report/n;->c:Lcom/punchbox/v4/l/d;

    invoke-virtual {v2}, Lcom/punchbox/v4/l/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/punchbox/report/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/report/n;->c:Lcom/punchbox/v4/l/d;

    invoke-virtual {v3}, Lcom/punchbox/v4/l/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/punchbox/report/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/punchbox/report/ReportData;

    move-result-object v2

    sget-object v3, Lcom/punchbox/report/n;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "save report to DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/punchbox/report/ReportData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/punchbox/report/ReportData;->id:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/punchbox/report/n;->c:Lcom/punchbox/v4/l/d;

    new-array v4, v1, [Ljava/lang/Long;

    iget-wide v6, v2, Lcom/punchbox/report/ReportData;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/punchbox/v4/l/d;->a([Ljava/lang/Long;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    invoke-static {v0}, Lcom/punchbox/util/h;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ofl"

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "1"

    move-object v1, v0

    :goto_1
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/punchbox/report/n;->b:Ljava/lang/String;

    const-string v2, "gen json error "

    invoke-static {v1, v2, v0}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    sget-object v0, Lcom/punchbox/report/n;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json.toString():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/punchbox/report/n;->b:Ljava/lang/String;

    const-string v2, "gen url query error"

    invoke-static {v1, v2, v0}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v0, Lcom/punchbox/report/n;->b:Ljava/lang/String;

    const-string v1, "Decode time string fail"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lcom/punchbox/v4/l/c;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/n;->c:Lcom/punchbox/v4/l/d;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/punchbox/v4/m/a;
    .locals 2

    new-instance v0, Lcom/punchbox/v4/m/a;

    iget-object v1, p0, Lcom/punchbox/report/n;->a:Lcom/punchbox/v4/h/l;

    invoke-direct {v0, p1, v1}, Lcom/punchbox/v4/m/a;-><init>(Ljava/lang/String;Lcom/punchbox/v4/h/l;)V

    iget-object v1, p0, Lcom/punchbox/report/n;->d:Lcom/punchbox/report/p;

    invoke-static {v1}, Lcom/punchbox/report/p;->a(Lcom/punchbox/report/p;)Lcom/punchbox/v4/m/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/m/a;->a(Lcom/punchbox/v4/m/c;)V

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/String;)Lcom/punchbox/v4/m/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/punchbox/report/n;->a(Ljava/lang/String;)Lcom/punchbox/v4/m/a;

    move-result-object v0

    return-object v0
.end method

.method protected varargs b([Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/n;->d:Lcom/punchbox/report/p;

    invoke-static {v0}, Lcom/punchbox/report/p;->c(Lcom/punchbox/report/p;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/punchbox/report/n;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
