.class Lcom/alipay/android/mini/window/sdk/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ah;->c:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/ah;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/ah;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ah;->c:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ah;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ah;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/widget/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    return-void
.end method
