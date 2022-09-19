.class Lcom/punchbox/v4/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/p;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/p;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v3, 0x88

    iget-object v0, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v0}, Lcom/punchbox/v4/d/p;->c(Lcom/punchbox/v4/d/p;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v2}, Lcom/punchbox/v4/d/p;->c(Lcom/punchbox/v4/d/p;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v2}, Lcom/punchbox/v4/d/p;->d(Lcom/punchbox/v4/d/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/16 v2, 0xff

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v3}, Lcom/punchbox/v4/d/p;->c(Lcom/punchbox/v4/d/p;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/p;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v0}, Lcom/punchbox/v4/d/p;->e(Lcom/punchbox/v4/d/p;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v0}, Lcom/punchbox/v4/d/p;->f(Lcom/punchbox/v4/d/p;)Lcom/punchbox/v4/d/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/s;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v0}, Lcom/punchbox/v4/d/p;->f(Lcom/punchbox/v4/d/p;)Lcom/punchbox/v4/d/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/punchbox/v4/d/u;->a()V

    goto :goto_0
.end method
