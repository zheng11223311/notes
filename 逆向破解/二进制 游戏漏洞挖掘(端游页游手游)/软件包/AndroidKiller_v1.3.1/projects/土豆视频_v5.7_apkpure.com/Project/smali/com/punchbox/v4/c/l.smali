.class Lcom/punchbox/v4/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:[Lorg/apache/http/Header;

.field final synthetic d:Ljava/lang/Throwable;

.field final synthetic e:Lcom/punchbox/v4/c/h;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/c/h;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/c/l;->e:Lcom/punchbox/v4/c/h;

    iput-object p2, p0, Lcom/punchbox/v4/c/l;->a:Ljava/lang/String;

    iput p3, p0, Lcom/punchbox/v4/c/l;->b:I

    iput-object p4, p0, Lcom/punchbox/v4/c/l;->c:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/punchbox/v4/c/l;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/v4/c/l;->e:Lcom/punchbox/v4/c/h;

    iget-object v1, p0, Lcom/punchbox/v4/c/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/c/h;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/v4/c/l;->e:Lcom/punchbox/v4/c/h;

    new-instance v2, Lcom/punchbox/v4/c/m;

    invoke-direct {v2, p0, v0}, Lcom/punchbox/v4/c/m;-><init>(Lcom/punchbox/v4/c/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/punchbox/v4/c/l;->e:Lcom/punchbox/v4/c/h;

    new-instance v2, Lcom/punchbox/v4/c/n;

    invoke-direct {v2, p0, v0}, Lcom/punchbox/v4/c/n;-><init>(Lcom/punchbox/v4/c/l;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
