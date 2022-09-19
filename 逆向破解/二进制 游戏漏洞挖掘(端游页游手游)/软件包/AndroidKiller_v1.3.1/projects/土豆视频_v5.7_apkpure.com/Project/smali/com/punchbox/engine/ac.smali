.class Lcom/punchbox/engine/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/punchbox/engine/ab;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/ab;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/punchbox/engine/ac;->c:Lcom/punchbox/engine/ab;

    iput-object p2, p0, Lcom/punchbox/engine/ac;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/punchbox/engine/ac;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/punchbox/engine/ac;->a:Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v4, v2

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_1

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    move v3, v2

    :goto_1
    const/4 v7, 0x3

    if-ge v0, v7, :cond_0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/punchbox/engine/ac;->c:Lcom/punchbox/engine/ab;

    iget-wide v8, p0, Lcom/punchbox/engine/ac;->b:J

    invoke-static {v3, v8, v9, v6}, Lcom/punchbox/engine/ab;->a(Lcom/punchbox/engine/ab;JLjava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/punchbox/engine/ab;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download res:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    and-int v0, v1, v3

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/punchbox/engine/ab;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish download pre res."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    iget-wide v2, p0, Lcom/punchbox/engine/ac;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/punchbox/v4/h/k;->a(J)I

    move-result v0

    invoke-static {}, Lcom/punchbox/engine/ab;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update pre db:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2
.end method
