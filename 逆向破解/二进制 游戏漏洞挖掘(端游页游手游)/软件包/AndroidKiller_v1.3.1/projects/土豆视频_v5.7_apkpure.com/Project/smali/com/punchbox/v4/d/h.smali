.class Lcom/punchbox/v4/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/a;

.field private b:Landroid/view/ViewGroup;

.field private c:D


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    iput-wide p1, p0, Lcom/punchbox/v4/d/h;->c:D

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/h;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public onPreDraw()Z
    .locals 10

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v0}, Lcom/punchbox/v4/d/a;->f(Lcom/punchbox/v4/d/a;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/h;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/punchbox/v4/d/h;->c:D

    mul-double/2addr v0, v2

    double-to-int v2, v0

    iget-object v0, p0, Lcom/punchbox/v4/d/h;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-double v0, v0

    iget-wide v6, p0, Lcom/punchbox/v4/d/h;->c:D

    mul-double/2addr v0, v6

    double-to-int v0, v0

    iget-object v1, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v1}, Lcom/punchbox/v4/d/a;->f(Lcom/punchbox/v4/d/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v1, v2, v0, v6}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/v4/d/a;IIF)[I

    move-result-object v1

    aget v3, v1, v5

    aget v1, v1, v4

    iget-object v7, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v7}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/v4/d/a;)I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2}, Lcom/punchbox/v4/d/a;->g(Lcom/punchbox/v4/d/a;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2}, Lcom/punchbox/v4/d/a;->h(Lcom/punchbox/v4/d/a;)I

    move-result v2

    if-eq v0, v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2, v1}, Lcom/punchbox/v4/d/a;->c(Lcom/punchbox/v4/d/a;I)I

    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2, v0}, Lcom/punchbox/v4/d/a;->d(Lcom/punchbox/v4/d/a;I)I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v3}, Lcom/punchbox/v4/d/a;->i(Lcom/punchbox/v4/d/a;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2}, Lcom/punchbox/v4/d/a;->j(Lcom/punchbox/v4/d/a;)Lcom/punchbox/v4/d/y;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2}, Lcom/punchbox/v4/d/a;->j(Lcom/punchbox/v4/d/a;)Lcom/punchbox/v4/d/y;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javascript:SDKsetSize("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ");"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/punchbox/v4/d/y;->loadUrl(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/v4/d/a;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/v4/d/a;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/punchbox/v4/d/h;->a:Lcom/punchbox/v4/d/a;

    if-ge v1, v0, :cond_5

    move v0, v4

    :goto_2
    invoke-static {v2, v0}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/v4/d/a;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/punchbox/v4/d/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "load local bitmap error."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    move v0, v1

    move v1, v3

    goto/16 :goto_1
.end method
