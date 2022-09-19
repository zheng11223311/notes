.class Lcom/punchbox/v4/d/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/p;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/p;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/q;->a:Lcom/punchbox/v4/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/q;->a:Lcom/punchbox/v4/d/p;

    iget-object v1, p0, Lcom/punchbox/v4/d/q;->a:Lcom/punchbox/v4/d/p;

    invoke-virtual {v1}, Lcom/punchbox/v4/d/p;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/punchbox/v4/d/p;->a(Lcom/punchbox/v4/d/p;I)I

    iget-object v0, p0, Lcom/punchbox/v4/d/q;->a:Lcom/punchbox/v4/d/p;

    iget-object v1, p0, Lcom/punchbox/v4/d/q;->a:Lcom/punchbox/v4/d/p;

    invoke-virtual {v1}, Lcom/punchbox/v4/d/p;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/punchbox/v4/d/p;->b(Lcom/punchbox/v4/d/p;I)I

    const/4 v0, 0x1

    return v0
.end method
