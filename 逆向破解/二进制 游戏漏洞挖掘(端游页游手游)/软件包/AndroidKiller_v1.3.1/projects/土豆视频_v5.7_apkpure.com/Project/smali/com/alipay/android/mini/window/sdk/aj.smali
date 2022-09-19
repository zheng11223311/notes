.class Lcom/alipay/android/mini/window/sdk/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/aj;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/aj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/aj;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/aj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/o;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/mini/widget/o;

    .line 310
    return-void
.end method
