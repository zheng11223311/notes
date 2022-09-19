.class Lcom/alipay/android/mini/util/k;
.super Lr/f;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/alipay/android/mini/util/j;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/j;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-direct {p0}, Lr/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "temp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0}, Lcom/alipay/android/mini/util/j;->a(Lcom/alipay/android/mini/util/j;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-string/jumbo v0, "rules"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0}, Lcom/alipay/android/mini/util/j;->b(Lcom/alipay/android/mini/util/j;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo v0, "tmp_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0}, Lcom/alipay/android/mini/util/j;->c(Lcom/alipay/android/mini/util/j;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "read_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0}, Lcom/alipay/android/mini/util/j;->d(Lcom/alipay/android/mini/util/j;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0}, Lcom/alipay/android/mini/util/j;->f(Lcom/alipay/android/mini/util/j;)Lcom/alipay/android/mini/window/sdk/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v1}, Lcom/alipay/android/mini/util/j;->e(Lcom/alipay/android/mini/util/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/sdk/k;->c(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/c;

    move-result-object v0

    .line 91
    instance-of v1, v0, Lcom/alipay/android/mini/uielement/z;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Lcom/alipay/android/mini/uielement/z;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/mini/uielement/z;->a(Ljava/lang/String;Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0}, Lcom/alipay/android/mini/util/j;->f(Lcom/alipay/android/mini/util/j;)Lcom/alipay/android/mini/window/sdk/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v1}, Lcom/alipay/android/mini/util/j;->e(Lcom/alipay/android/mini/util/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/sdk/k;->c(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/c;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lcom/alipay/android/mini/uielement/z;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Lcom/alipay/android/mini/uielement/z;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/z;->a(Ljava/lang/String;Z)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/k;->e:Lcom/alipay/android/mini/util/j;

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/j;->b()V

    .line 104
    return-void
.end method
