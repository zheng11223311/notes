.class public abstract Lcom/punchbox/v4/m/b;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/punchbox/v4/m/c;

.field protected b:Lcom/punchbox/v4/h/l;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/v4/m/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/m/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/punchbox/v4/h/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/punchbox/v4/m/b;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/punchbox/v4/m/b;->b:Lcom/punchbox/v4/h/l;

    return-void
.end method

.method private b([Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/punchbox/v4/m/d;
    .locals 3

    new-instance v1, Lcom/punchbox/v4/m/d;

    invoke-direct {v1}, Lcom/punchbox/v4/m/d;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/punchbox/v4/m/b;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "err"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "err"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/punchbox/v4/m/d;->a:I

    :cond_0
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/punchbox/v4/m/d;->b:Z

    :cond_1
    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/punchbox/v4/m/d;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected varargs a(I[Ljava/lang/Long;)V
    .locals 3

    sget-object v0, Lcom/punchbox/v4/m/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "report to server failed change reportData status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/punchbox/v4/m/b;->b([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/m/b;->b:Lcom/punchbox/v4/h/l;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/punchbox/v4/h/l;->a(I[Ljava/lang/Long;)V

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/m/b;->a:Lcom/punchbox/v4/m/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/m/b;->a:Lcom/punchbox/v4/m/c;

    invoke-interface {v0, p1, p2}, Lcom/punchbox/v4/m/c;->a(I[Ljava/lang/Long;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/punchbox/v4/m/c;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/m/b;->a:Lcom/punchbox/v4/m/c;

    return-void
.end method

.method public final varargs a(Lcom/punchbox/v4/m/d;[Ljava/lang/Long;)V
    .locals 4

    iget v0, p1, Lcom/punchbox/v4/m/d;->a:I

    sget-object v1, Lcom/punchbox/v4/m/b;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/punchbox/v4/m/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p2}, Lcom/punchbox/v4/m/b;->a([Ljava/lang/Long;)V

    :goto_0
    return-void

    :sswitch_0
    iget v0, p1, Lcom/punchbox/v4/m/d;->a:I

    invoke-virtual {p0, v0, p2}, Lcom/punchbox/v4/m/b;->a(I[Ljava/lang/Long;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected varargs a([Ljava/lang/Long;)V
    .locals 3

    sget-object v0, Lcom/punchbox/v4/m/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "report to server success delete report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/punchbox/v4/m/b;->b([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/m/b;->b:Lcom/punchbox/v4/h/l;

    invoke-virtual {v0}, Lcom/punchbox/v4/h/l;->d()V

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/m/b;->a:Lcom/punchbox/v4/m/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/m/b;->a:Lcom/punchbox/v4/m/c;

    invoke-interface {v0, p1}, Lcom/punchbox/v4/m/c;->a([Ljava/lang/Long;)V

    :cond_1
    return-void
.end method
