.class Lcom/punchbox/v4/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:[Lorg/apache/http/Header;

.field final synthetic d:Lcom/punchbox/v4/c/h;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/c/h;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    iput-object p2, p0, Lcom/punchbox/v4/c/i;->a:Ljava/lang/String;

    iput p3, p0, Lcom/punchbox/v4/c/i;->b:I

    iput-object p4, p0, Lcom/punchbox/v4/c/i;->c:[Lorg/apache/http/Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    iget-object v1, p0, Lcom/punchbox/v4/c/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/c/h;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    new-instance v2, Lcom/punchbox/v4/c/j;

    invoke-direct {v2, p0, v0}, Lcom/punchbox/v4/c/j;-><init>(Lcom/punchbox/v4/c/i;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    new-instance v2, Lcom/punchbox/v4/c/k;

    invoke-direct {v2, p0, v0}, Lcom/punchbox/v4/c/k;-><init>(Lcom/punchbox/v4/c/i;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
