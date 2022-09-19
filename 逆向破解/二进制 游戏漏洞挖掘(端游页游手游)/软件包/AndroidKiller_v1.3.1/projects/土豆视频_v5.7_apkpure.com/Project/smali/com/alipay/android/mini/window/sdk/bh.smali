.class Lcom/alipay/android/mini/window/sdk/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/alipay/android/mini/window/sdk/bg;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/bg;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bh;->c:Lcom/alipay/android/mini/window/sdk/bg;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/bh;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/bh;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bh;->c:Lcom/alipay/android/mini/window/sdk/bg;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bh;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/bh;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/mini/window/sdk/bg;->a(Lcom/alipay/android/mini/window/sdk/bg;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/mini/window/sdk/a;->b:Z
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
