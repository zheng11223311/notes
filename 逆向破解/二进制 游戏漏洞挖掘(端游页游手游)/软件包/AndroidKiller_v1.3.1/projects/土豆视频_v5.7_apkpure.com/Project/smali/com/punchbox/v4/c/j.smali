.class Lcom/punchbox/v4/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/punchbox/v4/c/i;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/c/i;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iput-object p2, p0, Lcom/punchbox/v4/c/j;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->a:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget-object v1, v0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget v2, v0, Lcom/punchbox/v4/c/i;->b:I

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget-object v3, v0, Lcom/punchbox/v4/c/i;->c:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/punchbox/v4/c/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/c/j;->a:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget-object v1, v0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget v2, v0, Lcom/punchbox/v4/c/i;->b:I

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget-object v3, v0, Lcom/punchbox/v4/c/i;->c:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3, v0}, Lcom/punchbox/v4/c/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/c/j;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget-object v1, v0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget v2, v0, Lcom/punchbox/v4/c/i;->b:I

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget-object v3, v0, Lcom/punchbox/v4/c/i;->c:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/punchbox/v4/c/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/punchbox/v4/c/h;->a(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/punchbox/v4/c/j;->b:Lcom/punchbox/v4/c/i;

    iget-object v1, v0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    new-instance v2, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/punchbox/v4/c/j;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
