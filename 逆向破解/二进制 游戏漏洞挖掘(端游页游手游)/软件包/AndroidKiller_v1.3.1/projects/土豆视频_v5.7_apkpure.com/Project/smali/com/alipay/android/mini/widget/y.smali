.class Lcom/alipay/android/mini/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/mini/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/YearMonthPicker;ZZ)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/android/mini/widget/y;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/mini/widget/y;->a:Z

    iput-boolean p3, p0, Lcom/alipay/android/mini/widget/y;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/mini/widget/y;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/mini/widget/y;->a:Z

    invoke-static {v0, v3}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)Z

    .line 178
    iget-object v3, p0, Lcom/alipay/android/mini/widget/y;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/y;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->b(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)Z

    .line 180
    iget-object v0, p0, Lcom/alipay/android/mini/widget/y;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/mini/widget/y;->b:Z

    invoke-static {v0, v3}, Lcom/alipay/android/mini/widget/YearMonthPicker;->c(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)Z

    .line 181
    iget-object v0, p0, Lcom/alipay/android/mini/widget/y;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/mini/widget/y;->b:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/alipay/android/mini/widget/YearMonthPicker;->d(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)Z

    .line 183
    iget-object v0, p0, Lcom/alipay/android/mini/widget/y;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/widget/YearMonthPicker$a;

    iget-object v3, p0, Lcom/alipay/android/mini/widget/y;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-direct {v1, v3}, Lcom/alipay/android/mini/widget/YearMonthPicker$a;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return v2

    :cond_0
    move v0, v2

    .line 178
    goto :goto_0

    :cond_1
    move v1, v2

    .line 181
    goto :goto_1
.end method
