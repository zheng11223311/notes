.class Lcom/alipay/android/mini/widget/YearMonthPicker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/mini/widget/YearMonthPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 274
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->c(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->g()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->d(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->h()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/widget/YearMonthPicker$a;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/widget/YearMonthPicker$a;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->b(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->c(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->i()V

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->d(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->j()V

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/widget/YearMonthPicker$a;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/YearMonthPicker$a;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/widget/YearMonthPicker$a;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    :cond_5
    return-void
.end method
