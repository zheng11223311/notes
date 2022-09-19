.class public Lcom/alipay/android/mini/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/AlertDialog$Builder;

.field public b:Lcom/alipay/android/mini/widget/YearMonthPicker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v3, p0, Lcom/alipay/android/mini/widget/aa;->a:Landroid/app/AlertDialog$Builder;

    .line 25
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mini_express_year_month_picker"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 28
    const-string v0, "datePicker1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/YearMonthPicker;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/aa;->b:Lcom/alipay/android/mini/widget/YearMonthPicker;

    .line 30
    iget-object v0, p0, Lcom/alipay/android/mini/widget/aa;->b:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->d()V

    .line 31
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/aa;->b()V

    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/aa;->a:Landroid/app/AlertDialog$Builder;

    .line 34
    iget-object v0, p0, Lcom/alipay/android/mini/widget/aa;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 36
    iget-object v0, p0, Lcom/alipay/android/mini/widget/aa;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/mini/widget/aa;->b:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->b()V

    .line 45
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/mini/widget/aa;->b:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(II)V

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/mini/widget/aa;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/mini/widget/aa;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/mini/widget/aa;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 55
    return-void
.end method
