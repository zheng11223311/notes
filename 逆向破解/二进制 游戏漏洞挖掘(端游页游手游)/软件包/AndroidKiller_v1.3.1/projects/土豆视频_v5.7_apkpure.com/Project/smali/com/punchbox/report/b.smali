.class Lcom/punchbox/report/b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/punchbox/report/a;

.field private b:Lorg/json/JSONObject;

.field private c:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/punchbox/report/a;Lorg/json/JSONObject;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/report/b;->a:Lcom/punchbox/report/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    return-void
.end method

.method static synthetic a(Lcom/punchbox/report/b;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic b(Lcom/punchbox/report/b;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;D)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;S)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/report/b;->c:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
