.class Lcom/alipay/android/mini/window/sdk/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ai;->d:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/ai;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/ai;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/mini/window/sdk/ai;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ai;->d:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ai;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ai;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/ai;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/mini/widget/s;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    .line 298
    return-void
.end method
