.class Lcom/punchbox/v4/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/a;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/c;->a:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/c;->a:Lcom/punchbox/v4/d/a;

    iget-object v1, p0, Lcom/punchbox/v4/d/c;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v1}, Lcom/punchbox/v4/d/a;->d(Lcom/punchbox/v4/d/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/v4/d/a;I)I

    iget-object v0, p0, Lcom/punchbox/v4/d/c;->a:Lcom/punchbox/v4/d/a;

    iget-object v1, p0, Lcom/punchbox/v4/d/c;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v1}, Lcom/punchbox/v4/d/a;->d(Lcom/punchbox/v4/d/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/punchbox/v4/d/a;->b(Lcom/punchbox/v4/d/a;I)I

    const/4 v0, 0x1

    return v0
.end method
