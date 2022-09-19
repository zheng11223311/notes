.class Lcom/alipay/android/mini/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/util/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/c;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v0}, Lcom/alipay/android/mini/util/c;->a(Lcom/alipay/android/mini/util/c;)Lcom/alipay/android/mini/widget/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/mini/widget/aa;->b:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->e()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    iget-object v2, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v2}, Lcom/alipay/android/mini/util/c;->a(Lcom/alipay/android/mini/util/c;)Lcom/alipay/android/mini/widget/aa;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/android/mini/widget/aa;->b:Lcom/alipay/android/mini/widget/YearMonthPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/mini/util/c;->a(Lcom/alipay/android/mini/util/c;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/mini/util/c;->b(Lcom/alipay/android/mini/util/c;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    iget-object v1, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v1}, Lcom/alipay/android/mini/util/c;->b(Lcom/alipay/android/mini/util/c;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/c;->c(Lcom/alipay/android/mini/util/c;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v0}, Lcom/alipay/android/mini/util/c;->e(Lcom/alipay/android/mini/util/c;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v2}, Lcom/alipay/android/mini/util/c;->c(Lcom/alipay/android/mini/util/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v2}, Lcom/alipay/android/mini/util/c;->d(Lcom/alipay/android/mini/util/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v0}, Lcom/alipay/android/mini/util/c;->f(Lcom/alipay/android/mini/util/c;)Lr/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/c;

    invoke-static {v1}, Lcom/alipay/android/mini/util/c;->e(Lcom/alipay/android/mini/util/c;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    new-instance v2, Lr/c;

    sget-object v3, Lr/a;->t:Lr/a;

    invoke-direct {v2, v3}, Lr/c;-><init>(Lr/a;)V

    invoke-interface {v0, v1, v2}, Lr/h;->a(Ljava/lang/Object;Ld/b;)Z

    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    return-void
.end method
