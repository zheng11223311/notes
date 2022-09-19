.class Lcom/punchbox/v4/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONException;

.field final synthetic b:Lcom/punchbox/v4/c/i;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/c/i;Lorg/json/JSONException;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/c/k;->b:Lcom/punchbox/v4/c/i;

    iput-object p2, p0, Lcom/punchbox/v4/c/k;->a:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/v4/c/k;->b:Lcom/punchbox/v4/c/i;

    iget-object v1, v0, Lcom/punchbox/v4/c/i;->d:Lcom/punchbox/v4/c/h;

    iget-object v2, p0, Lcom/punchbox/v4/c/k;->a:Lorg/json/JSONException;

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
