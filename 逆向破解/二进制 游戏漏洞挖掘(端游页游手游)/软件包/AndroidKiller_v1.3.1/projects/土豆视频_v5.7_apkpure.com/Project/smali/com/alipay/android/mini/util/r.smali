.class final Lcom/alipay/android/mini/util/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Lcom/alipay/android/mini/window/sdk/k;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/k;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/alipay/android/mini/util/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/mini/util/r;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/mini/util/r;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/mini/util/r;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/mini/util/r;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/mini/util/r;->f:Lcom/alipay/android/mini/window/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 576
    iget-object v0, p0, Lcom/alipay/android/mini/util/r;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/mini/util/r;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "js://changeSubmitValue(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/r;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js://changeHint(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/r;->e:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u53f7\u7801\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    iget-object v2, p0, Lcom/alipay/android/mini/util/r;->f:Lcom/alipay/android/mini/window/sdk/k;

    iget-object v3, p0, Lcom/alipay/android/mini/util/r;->f:Lcom/alipay/android/mini/window/sdk/k;

    new-instance v4, Lcom/alipay/android/mini/uielement/f;

    invoke-direct {v4, v0}, Lcom/alipay/android/mini/uielement/f;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/Object;[Lr/a;)Z

    .line 583
    iget-object v0, p0, Lcom/alipay/android/mini/util/r;->f:Lcom/alipay/android/mini/window/sdk/k;

    iget-object v2, p0, Lcom/alipay/android/mini/util/r;->f:Lcom/alipay/android/mini/window/sdk/k;

    new-instance v3, Lcom/alipay/android/mini/uielement/f;

    invoke-direct {v3, v1}, Lcom/alipay/android/mini/uielement/f;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/Object;[Lr/a;)Z

    .line 586
    :cond_0
    return-void
.end method
