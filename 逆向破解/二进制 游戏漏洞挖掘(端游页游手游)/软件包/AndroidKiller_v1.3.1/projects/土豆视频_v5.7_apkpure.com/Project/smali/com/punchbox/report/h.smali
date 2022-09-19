.class Lcom/punchbox/report/h;
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

    iput-object p1, p0, Lcom/punchbox/report/h;->a:Lcom/punchbox/report/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/punchbox/report/h;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/report/h;->a:Lcom/punchbox/report/g;

    iget-object v1, p0, Lcom/punchbox/report/h;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/punchbox/report/g;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/h;->a:Lcom/punchbox/report/g;

    iget-object v1, p0, Lcom/punchbox/report/h;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/punchbox/report/g;->a([Ljava/lang/Object;)Lcom/punchbox/v4/l/c;

    :cond_0
    return-void
.end method
