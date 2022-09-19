.class Lcom/punchbox/report/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/report/g;

.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/punchbox/report/g;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/punchbox/report/i;->a:Lcom/punchbox/report/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/punchbox/report/i;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/report/i;->a:Lcom/punchbox/report/g;

    iget-object v1, p0, Lcom/punchbox/report/i;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/punchbox/report/g;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/i;->a:Lcom/punchbox/report/g;

    iget-object v1, p0, Lcom/punchbox/report/i;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/punchbox/report/g;->a([Ljava/lang/Object;)Lcom/punchbox/v4/l/c;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/report/i;->a:Lcom/punchbox/report/g;

    invoke-static {v1, v0}, Lcom/punchbox/report/g;->a(Lcom/punchbox/report/g;Lcom/punchbox/v4/l/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/report/i;->a:Lcom/punchbox/report/g;

    invoke-virtual {v2, v1}, Lcom/punchbox/report/g;->b(Ljava/lang/String;)Lcom/punchbox/v4/m/b;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/report/i;->a:Lcom/punchbox/report/g;

    invoke-static {v2, v0, v1}, Lcom/punchbox/report/g;->a(Lcom/punchbox/report/g;Lcom/punchbox/v4/l/c;Lcom/punchbox/v4/m/b;)V

    :cond_0
    return-void
.end method
