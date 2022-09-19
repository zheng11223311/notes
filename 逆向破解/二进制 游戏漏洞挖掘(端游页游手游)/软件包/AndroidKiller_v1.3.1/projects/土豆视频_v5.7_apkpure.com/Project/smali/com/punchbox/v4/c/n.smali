.class Lcom/punchbox/v4/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONException;

.field final synthetic b:Lcom/punchbox/v4/c/l;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/c/l;Lorg/json/JSONException;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/c/n;->b:Lcom/punchbox/v4/c/l;

    iput-object p2, p0, Lcom/punchbox/v4/c/n;->a:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/punchbox/v4/c/n;->b:Lcom/punchbox/v4/c/l;

    iget-object v1, v0, Lcom/punchbox/v4/c/l;->e:Lcom/punchbox/v4/c/h;

    iget-object v0, p0, Lcom/punchbox/v4/c/n;->b:Lcom/punchbox/v4/c/l;

    iget v2, v0, Lcom/punchbox/v4/c/l;->b:I

    iget-object v0, p0, Lcom/punchbox/v4/c/n;->b:Lcom/punchbox/v4/c/l;

    iget-object v3, v0, Lcom/punchbox/v4/c/l;->c:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/punchbox/v4/c/n;->a:Lorg/json/JSONException;

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/punchbox/v4/c/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
